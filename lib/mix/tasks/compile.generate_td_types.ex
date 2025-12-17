defmodule Mix.Tasks.Compile.GenerateTdTypes do
  @moduledoc """
  Compiles ExTDLib types from td_api.tl.
  """
  use Mix.Task.Compiler

  @recursive true

  def run(_args) do
    # Ensure TLParser is loaded
    if !Code.ensure_loaded?(Mix.Tasks.Utils.TLParser) do
      # Try to locate the file relative to this file or cwd
      cwd = File.cwd!()
      path = Path.join([cwd, "lib", "mix", "tasks", "utils", "tl_parser.ex"])

      if File.exists?(path) do
        Code.require_file(path)
      else
        Mix.raise("Could not load Mix.Tasks.Utils.TLParser. Please ensure lib/mix/tasks/utils/tl_parser.ex exists.")
      end
    end

    tl_path = get_tl_path()

    # Calculate root directory of ExTDLib
    # This file is in lib/mix/tasks/compile.generate_td_types.ex
    # So root is three levels up from __DIR__
    root_dir =
      __DIR__
      # lib/mix
      |> Path.dirname()
      # lib
      |> Path.dirname()
      # root
      |> Path.dirname()

    lookup_file = Path.join(root_dir, "lib/ex_tdlib/type_lookup.ex")

    if should_generate?(tl_path, lookup_file) do
      generate(tl_path, root_dir)
      :ok
    else
      :noop
    end
  end

  defp get_tl_path do
    env_path = System.get_env("TDLIB_API_TL_PATH")

    # If using Makefile, it clones to priv/td...
    # priv is inside root_dir/priv or _build depending on how mix works.
    # But usually priv is available via app path.

    candidates = [
      env_path,
      Path.join([mix_app_path(), "priv", "td", "td", "generate", "scheme", "td_api.tl"]),
      "td_api.tl"
    ]

    candidates
    |> Enum.reject(&is_nil/1)
    |> Enum.find(&File.exists?/1)
    |> case do
      nil ->
        Mix.raise(
          "Could not find td_api.tl. Please set TDLIB_API_TL_PATH or ensure 'priv/td' is populated via Makefile."
        )

      path ->
        path
    end
  end

  defp mix_app_path do
    Mix.Project.app_path()
  end

  defp should_generate?(tl_path, target_file) do
    not File.exists?(target_file) or
      File.stat!(tl_path).mtime > File.stat!(target_file).mtime
  end

  defp generate(tl_path, root_dir) do
    # Reuse the logic from the original task
    # We can invoke the original module if we load it, or replicate logic.
    # Since existing logic is in Mix.Tasks.GenerateTypes, let's just use that logic.
    # But that task is also not compiled yet!
    # Let's load it.

    task_path = Path.join([root_dir, "lib", "mix", "tasks", "generate_types.ex"])
    Code.require_file(task_path)

    # We can't easily call run/1 on Mix.Tasks if it's not fully registered,
    # but we can call functions if we exposed them.
    # The existing task puts everything in run/1.
    # To avoid duplication, we will just call Mix.Tasks.GenerateTypes.run/1
    # We set the env var for it if needed

    System.put_env("TDLIB_API_TL_PATH", tl_path)
    System.put_env("EXTDLIB_ROOT_DIR", root_dir)

    try do
      Mix.Tasks.GenerateTypes.run([])
    after
      System.delete_env("TDLIB_API_TL_PATH")
      System.delete_env("EXTDLIB_ROOT_DIR")
    end
  end
end
