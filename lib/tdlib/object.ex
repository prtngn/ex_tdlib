defmodule TDLib.Object do
  @moduledoc """
  This module was generated using Telegram's TDLib documentation. It contains
  1478 submodules (=  structs).
  """

  defmodule UpdateMessageContent do
    @moduledoc """
    The message content has changed.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |
    | message_id | string | Message identifier. |
    | new_content | MessageContent | New message content. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_message_content.html).
    """

    defstruct "@type": "updateMessageContent", "@extra": nil, chat_id: nil, message_id: nil, new_content: nil
  end

  defmodule ChatPosition do
    @moduledoc """
    Describes a position of a chat in a chat list.

    | Name | Type | Description |
    |------|------| ------------|
    | list | ChatList | The chat list. |
    | order | string | A parameter used to determine order of the chat in the chat list. Chats must be sorted by the pair (order, chat.id) in descending order. |
    | is_pinned | bool | True, if the chat is pinned in the chat list. |
    | source | ChatSource | Source of the chat in the chat list; may be null. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_position.html).
    """

    defstruct "@type": "chatPosition", "@extra": nil, list: nil, order: nil, is_pinned: nil, source: nil
  end

  defmodule UpdateNewCustomQuery do
    @moduledoc """
    A new incoming query; for bots only.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | The query identifier. |
    | data | string | JSON-serialized query data. |
    | timeout | number | Query timeout. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_new_custom_query.html).
    """

    defstruct "@type": "updateNewCustomQuery", "@extra": nil, id: nil, data: nil, timeout: nil
  end

  defmodule UpdateChatActionBar do
    @moduledoc """
    The chat action bar was changed.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |
    | action_bar | ChatActionBar | The new value of the action bar; may be null. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_action_bar.html).
    """

    defstruct "@type": "updateChatActionBar", "@extra": nil, chat_id: nil, action_bar: nil
  end

  defmodule InternalLinkTypeDefaultMessageAutoDeleteTimerSettings do
    @moduledoc """
    The link is a link to the default message auto-delete timer settings section of the app settings.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_default_message_auto_delete_timer_settings.html).
    """

    defstruct "@type": "internalLinkTypeDefaultMessageAutoDeleteTimerSettings", "@extra": nil
  end

  defmodule InputChatPhotoSticker do
    @moduledoc """
    A sticker on a custom background.

    | Name | Type | Description |
    |------|------| ------------|
    | sticker | chatPhotoSticker | Information about the sticker. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_chat_photo_sticker.html).
    """

    defstruct "@type": "inputChatPhotoSticker", "@extra": nil, sticker: nil
  end

  defmodule DatedFile do
    @moduledoc """
    File with the date it was uploaded.

    | Name | Type | Description |
    |------|------| ------------|
    | file | file | The file. |
    | date | number | Point in time (Unix timestamp) when the file was uploaded. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1dated_file.html).
    """

    defstruct "@type": "datedFile", "@extra": nil, file: nil, date: nil
  end

  defmodule SessionTypeChrome do
    @moduledoc """
    The session is running on the Chrome browser.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1session_type_chrome.html).
    """

    defstruct "@type": "sessionTypeChrome", "@extra": nil
  end

  defmodule Message do
    @moduledoc """
    Describes a message.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Message identifier; unique for the chat to which the message belongs. |
    | sender_id | MessageSender | Identifier of the sender of the message. |
    | chat_id | string | Chat identifier. |
    | sending_state | MessageSendingState | The sending state of the message; may be null if the message isn't being sent and didn't fail to be sent. |
    | scheduling_state | MessageSchedulingState | The scheduling state of the message; may be null if the message isn't scheduled. |
    | is_outgoing | bool | True, if the message is outgoing. |
    | is_pinned | bool | True, if the message is pinned. |
    | can_be_edited | bool | True, if the message can be edited. For live location and poll messages this fields shows whether editMessageLiveLocation or stopPoll can be used with this message by the application. |
    | can_be_forwarded | bool | True, if the message can be forwarded. |
    | can_be_replied_in_another_chat | bool | True, if the message can be replied in another chat or topic. |
    | can_be_saved | bool | True, if content of the message can be saved locally or copied. |
    | can_be_deleted_only_for_self | bool | True, if the message can be deleted only for the current user while other users will continue to see it. |
    | can_be_deleted_for_all_users | bool | True, if the message can be deleted for all users. |
    | can_get_added_reactions | bool | True, if the list of added reactions is available through getMessageAddedReactions. |
    | can_get_statistics | bool | True, if the message statistics are available through getMessageStatistics. |
    | can_get_message_thread | bool | True, if information about the message thread is available through getMessageThread and getMessageThreadHistory. |
    | can_get_viewers | bool | True, if chat members already viewed the message can be received through getMessageViewers. |
    | can_get_media_timestamp_links | bool | True, if media timestamp links can be generated for media timestamp entities in the message text, caption or web page description through getMessageLink. |
    | can_report_reactions | bool | True, if reactions on the message can be reported through reportMessageReactions. |
    | has_timestamped_media | bool | True, if media timestamp entities refers to a media in this message as opposed to a media in the replied message. |
    | is_channel_post | bool | True, if the message is a channel post. All messages to channels are channel posts, all other messages are not channel posts. |
    | is_topic_message | bool | True, if the message is a forum topic message. |
    | contains_unread_mention | bool | True, if the message contains an unread mention for the current user. |
    | date | number | Point in time (Unix timestamp) when the message was sent. |
    | edit_date | number | Point in time (Unix timestamp) when the message was last edited. |
    | forward_info | messageForwardInfo | Information about the initial message sender; may be null if none or unknown. |
    | import_info | messageImportInfo | Information about the initial message for messages created with importMessages; may be null if the message isn't imported. |
    | interaction_info | messageInteractionInfo | Information about interactions with the message; may be null if none. |
    | unread_reactions | unreadReaction | Information about unread reactions added to the message. |
    | reply_to | MessageReplyTo | Information about the message or the story this message is replying to; may be null if none. |
    | message_thread_id | string | If non-zero, the identifier of the message thread the message belongs to; unique within the chat to which the message belongs. |
    | self_destruct_type | MessageSelfDestructType | The message's self-destruct type; may be null if none. |
    | self_destruct_in | double | Time left before the message self-destruct timer expires, in seconds; 0 if self-destruction isn't scheduled yet. |
    | auto_delete_in | double | Time left before the message will be automatically deleted by message_auto_delete_time setting of the chat, in seconds; 0 if never. |
    | via_bot_user_id | string | If non-zero, the user identifier of the bot through which this message was sent. |
    | author_signature | string | For channel posts and anonymous group messages, optional author signature. |
    | media_album_id | string | Unique identifier of an album this message belongs to. Only audios, documents, photos and videos can be grouped together in albums. |
    | restriction_reason | string | If non-empty, contains a human-readable description of the reason why access to this message must be restricted. |
    | content | MessageContent | Content of the message. |
    | reply_markup | ReplyMarkup | Reply markup for the message; may be null if none. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message.html).
    """

    defstruct "@type": "message",
              "@extra": nil,
              id: nil,
              sender_id: nil,
              chat_id: nil,
              sending_state: nil,
              scheduling_state: nil,
              is_outgoing: nil,
              is_pinned: nil,
              can_be_edited: nil,
              can_be_forwarded: nil,
              can_be_replied_in_another_chat: nil,
              can_be_saved: nil,
              can_be_deleted_only_for_self: nil,
              can_be_deleted_for_all_users: nil,
              can_get_added_reactions: nil,
              can_get_statistics: nil,
              can_get_message_thread: nil,
              can_get_viewers: nil,
              can_get_media_timestamp_links: nil,
              can_report_reactions: nil,
              has_timestamped_media: nil,
              is_channel_post: nil,
              is_topic_message: nil,
              contains_unread_mention: nil,
              date: nil,
              edit_date: nil,
              forward_info: nil,
              import_info: nil,
              interaction_info: nil,
              unread_reactions: nil,
              reply_to: nil,
              message_thread_id: nil,
              self_destruct_type: nil,
              self_destruct_in: nil,
              auto_delete_in: nil,
              via_bot_user_id: nil,
              author_signature: nil,
              media_album_id: nil,
              restriction_reason: nil,
              content: nil,
              reply_markup: nil
  end

  defmodule PassportElementTypeInternalPassport do
    @moduledoc """
    A Telegram Passport element containing the user's internal passport.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_type_internal_passport.html).
    """

    defstruct "@type": "passportElementTypeInternalPassport", "@extra": nil
  end

  defmodule SponsoredMessage do
    @moduledoc """
    Describes a sponsored message.

    | Name | Type | Description |
    |------|------| ------------|
    | message_id | string | Message identifier; unique for the chat to which the sponsored message belongs among both ordinary and sponsored messages. |
    | is_recommended | bool | True, if the message needs to be labeled as "recommended" instead of "sponsored". |
    | content | MessageContent | Content of the message. Currently, can be only of the type messageText. |
    | sponsor | messageSponsor | Information about the sponsor of the message. |
    | button_text | string | If non-empty, text for the message action button. |
    | additional_info | string | If non-empty, additional information about the sponsored message to be shown along with the message. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sponsored_message.html).
    """

    defstruct "@type": "sponsoredMessage",
              "@extra": nil,
              message_id: nil,
              is_recommended: nil,
              content: nil,
              sponsor: nil,
              button_text: nil,
              additional_info: nil
  end

  defmodule CallProblemDistortedSpeech do
    @moduledoc """
    The speech was distorted.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_problem_distorted_speech.html).
    """

    defstruct "@type": "callProblemDistortedSpeech", "@extra": nil
  end

  defmodule EmojiCategoryTypeChatPhoto do
    @moduledoc """
    The category must be used for chat photo emoji selection.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1emoji_category_type_chat_photo.html).
    """

    defstruct "@type": "emojiCategoryTypeChatPhoto", "@extra": nil
  end

  defmodule InputPassportElementIdentityCard do
    @moduledoc """
    A Telegram Passport element to be saved containing the user's identity card.

    | Name | Type | Description |
    |------|------| ------------|
    | identity_card | inputIdentityDocument | The identity card to be saved. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_passport_element_identity_card.html).
    """

    defstruct "@type": "inputPassportElementIdentityCard", "@extra": nil, identity_card: nil
  end

  defmodule RichTextUnderline do
    @moduledoc """
    An underlined rich text.

    | Name | Type | Description |
    |------|------| ------------|
    | text | RichText | Text. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1rich_text_underline.html).
    """

    defstruct "@type": "richTextUnderline", "@extra": nil, text: nil
  end

  defmodule Game do
    @moduledoc """
    Describes a game. Use getInternalLink with internalLinkTypeGame to share the game.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Unique game identifier. |
    | short_name | string | Game short name. |
    | title | string | Game title. |
    | text | formattedText | Game text, usually containing scoreboards for a game. |
    | description | string | Game description. |
    | photo | photo | Game photo. |
    | animation | animation | Game animation; may be null. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1game.html).
    """

    defstruct "@type": "game",
              "@extra": nil,
              id: nil,
              short_name: nil,
              title: nil,
              text: nil,
              description: nil,
              photo: nil,
              animation: nil
  end

  defmodule StorageStatisticsFast do
    @moduledoc """
    Contains approximate storage usage statistics, excluding files of unknown file type.

    | Name | Type | Description |
    |------|------| ------------|
    | files_size | string | Approximate total size of files, in bytes. |
    | file_count | number | Approximate number of files. |
    | database_size | string | Size of the database. |
    | language_pack_database_size | string | Size of the language pack database. |
    | log_size | string | Size of the TDLib internal log. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1storage_statistics_fast.html).
    """

    defstruct "@type": "storageStatisticsFast",
              "@extra": nil,
              files_size: nil,
              file_count: nil,
              database_size: nil,
              language_pack_database_size: nil,
              log_size: nil
  end

  defmodule CheckChatUsernameResultUsernamePurchasable do
    @moduledoc """
    The username can be purchased at fragment.com.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1check_chat_username_result_username_purchasable.html).
    """

    defstruct "@type": "checkChatUsernameResultUsernamePurchasable", "@extra": nil
  end

  defmodule EmojiReaction do
    @moduledoc """
    Contains information about a emoji reaction.

    | Name | Type | Description |
    |------|------| ------------|
    | emoji | string | Text representation of the reaction. |
    | title | string | Reaction title. |
    | is_active | bool | True, if the reaction can be added to new messages and enabled in chats. |
    | static_icon | sticker | Static icon for the reaction. |
    | appear_animation | sticker | Appear animation for the reaction. |
    | select_animation | sticker | Select animation for the reaction. |
    | activate_animation | sticker | Activate animation for the reaction. |
    | effect_animation | sticker | Effect animation for the reaction. |
    | around_animation | sticker | Around animation for the reaction; may be null. |
    | center_animation | sticker | Center animation for the reaction; may be null. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1emoji_reaction.html).
    """

    defstruct "@type": "emojiReaction",
              "@extra": nil,
              emoji: nil,
              title: nil,
              is_active: nil,
              static_icon: nil,
              appear_animation: nil,
              select_animation: nil,
              activate_animation: nil,
              effect_animation: nil,
              around_animation: nil,
              center_animation: nil
  end

  defmodule ChatMemberStatusMember do
    @moduledoc """
    The user is a member of the chat, without any additional privileges or restrictions.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_member_status_member.html).
    """

    defstruct "@type": "chatMemberStatusMember", "@extra": nil
  end

  defmodule UpdateLanguagePackStrings do
    @moduledoc """
    Some language pack strings have been updated.

    | Name | Type | Description |
    |------|------| ------------|
    | localization_target | string | Localization target to which the language pack belongs. |
    | language_pack_id | string | Identifier of the updated language pack. |
    | strings | languagePackString | List of changed language pack strings; empty if all strings have changed. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_language_pack_strings.html).
    """

    defstruct "@type": "updateLanguagePackStrings",
              "@extra": nil,
              localization_target: nil,
              language_pack_id: nil,
              strings: nil
  end

  defmodule InternalLinkTypeBackground do
    @moduledoc """
    The link is a link to a background. Call searchBackground with the given background name to process the link.

    | Name | Type | Description |
    |------|------| ------------|
    | background_name | string | Name of the background. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_background.html).
    """

    defstruct "@type": "internalLinkTypeBackground", "@extra": nil, background_name: nil
  end

  defmodule PassportElementErrorSourceFile do
    @moduledoc """
    The file contains an error. The error will be considered resolved when the file changes.

    | Name | Type | Description |
    |------|------| ------------|
    | file_index | number | Index of a file with the error. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_error_source_file.html).
    """

    defstruct "@type": "passportElementErrorSourceFile", "@extra": nil, file_index: nil
  end

  defmodule PremiumFeatureAppIcons do
    @moduledoc """
    Allowed to set a premium application icons.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_feature_app_icons.html).
    """

    defstruct "@type": "premiumFeatureAppIcons", "@extra": nil
  end

  defmodule InternalLinkTypeChatInvite do
    @moduledoc """
    The link is a chat invite link. Call checkChatInviteLink with the given invite link to process the link.

    | Name | Type | Description |
    |------|------| ------------|
    | invite_link | string | Internal representation of the invite link. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_chat_invite.html).
    """

    defstruct "@type": "internalLinkTypeChatInvite", "@extra": nil, invite_link: nil
  end

  defmodule ChatType do
    @moduledoc """
    This class is an abstract base class. Describes the type of a chat.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_chat_type.html).
    """

    defstruct "@type": "ChatType", "@extra": nil
  end

  defmodule ChatActionWatchingAnimations do
    @moduledoc """
    The user is watching animations sent by the other party by clicking on an animated emoji.

    | Name | Type | Description |
    |------|------| ------------|
    | emoji | string | The animated emoji. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_watching_animations.html).
    """

    defstruct "@type": "chatActionWatchingAnimations", "@extra": nil, emoji: nil
  end

  defmodule PageBlockPullQuote do
    @moduledoc """
    A pull quote.

    | Name | Type | Description |
    |------|------| ------------|
    | text | RichText | Quote text. |
    | credit | RichText | Quote credit. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_pull_quote.html).
    """

    defstruct "@type": "pageBlockPullQuote", "@extra": nil, text: nil, credit: nil
  end

  defmodule InputStoryContent do
    @moduledoc """
    This class is an abstract base class. The content of a story to send.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_input_story_content.html).
    """

    defstruct "@type": "InputStoryContent", "@extra": nil
  end

  defmodule UpdateCall do
    @moduledoc """
    New call was created or information about a call was updated.

    | Name | Type | Description |
    |------|------| ------------|
    | call | call | New data about a call. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_call.html).
    """

    defstruct "@type": "updateCall", "@extra": nil, call: nil
  end

  defmodule InviteLinkChatType do
    @moduledoc """
    This class is an abstract base class. Describes the type of a chat to which points an invite link.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_invite_link_chat_type.html).
    """

    defstruct "@type": "InviteLinkChatType", "@extra": nil
  end

  defmodule MessageExtendedMediaPreview do
    @moduledoc """
    The media is hidden until the invoice is paid.

    | Name | Type | Description |
    |------|------| ------------|
    | width | number | Media width; 0 if unknown. |
    | height | number | Media height; 0 if unknown. |
    | duration | number | Media duration; 0 if unknown. |
    | minithumbnail | minithumbnail | Media minithumbnail; may be null. |
    | caption | formattedText | Media caption. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_extended_media_preview.html).
    """

    defstruct "@type": "messageExtendedMediaPreview",
              "@extra": nil,
              width: nil,
              height: nil,
              duration: nil,
              minithumbnail: nil,
              caption: nil
  end

  defmodule PushMessageContentHidden do
    @moduledoc """
    A general message with hidden content.

    | Name | Type | Description |
    |------|------| ------------|
    | is_pinned | bool | True, if the message is a pinned message with the specified content. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_hidden.html).
    """

    defstruct "@type": "pushMessageContentHidden", "@extra": nil, is_pinned: nil
  end

  defmodule InputPassportElementAddress do
    @moduledoc """
    A Telegram Passport element to be saved containing the user's address.

    | Name | Type | Description |
    |------|------| ------------|
    | address | address | The address to be saved. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_passport_element_address.html).
    """

    defstruct "@type": "inputPassportElementAddress", "@extra": nil, address: nil
  end

  defmodule Minithumbnail do
    @moduledoc """
    Thumbnail image of a very poor quality and low resolution.

    | Name | Type | Description |
    |------|------| ------------|
    | width | number | Thumbnail width, usually doesn't exceed 40. |
    | height | number | Thumbnail height, usually doesn't exceed 40. |
    | data | bytes | The thumbnail in JPEG format. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1minithumbnail.html).
    """

    defstruct "@type": "minithumbnail", "@extra": nil, width: nil, height: nil, data: nil
  end

  defmodule UpdateNewCallbackQuery do
    @moduledoc """
    A new incoming callback query; for bots only.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Unique query identifier. |
    | sender_user_id | string | Identifier of the user who sent the query. |
    | chat_id | string | Identifier of the chat where the query was sent. |
    | message_id | string | Identifier of the message from which the query originated. |
    | chat_instance | string | Identifier that uniquely corresponds to the chat to which the message was sent. |
    | payload | CallbackQueryPayload | Query payload. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_new_callback_query.html).
    """

    defstruct "@type": "updateNewCallbackQuery",
              "@extra": nil,
              id: nil,
              sender_user_id: nil,
              chat_id: nil,
              message_id: nil,
              chat_instance: nil,
              payload: nil
  end

  defmodule BackgroundFillSolid do
    @moduledoc """
    Describes a solid fill of a background.

    | Name | Type | Description |
    |------|------| ------------|
    | color | number | A color of the background in the RGB24 format. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1background_fill_solid.html).
    """

    defstruct "@type": "backgroundFillSolid", "@extra": nil, color: nil
  end

  defmodule Seconds do
    @moduledoc """
    Contains a value representing a number of seconds.

    | Name | Type | Description |
    |------|------| ------------|
    | seconds | double | Number of seconds. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1seconds.html).
    """

    defstruct "@type": "seconds", "@extra": nil, seconds: nil
  end

  defmodule DeviceTokenSimplePush do
    @moduledoc """
    A token for Simple Push API for Firefox OS.

    | Name | Type | Description |
    |------|------| ------------|
    | endpoint | string | Absolute URL exposed by the push service where the application server can send push messages; may be empty to deregister a device. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1device_token_simple_push.html).
    """

    defstruct "@type": "deviceTokenSimplePush", "@extra": nil, endpoint: nil
  end

  defmodule InputBackgroundPrevious do
    @moduledoc """
    A background previously set in the chat; for chat backgrounds only.

    | Name | Type | Description |
    |------|------| ------------|
    | message_id | string | Identifier of the message with the background. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_background_previous.html).
    """

    defstruct "@type": "inputBackgroundPrevious", "@extra": nil, message_id: nil
  end

  defmodule AvailableReactions do
    @moduledoc """
    Represents a list of reactions that can be added to a message.

    | Name | Type | Description |
    |------|------| ------------|
    | top_reactions | availableReaction | List of reactions to be shown at the top. |
    | recent_reactions | availableReaction | List of recently used reactions. |
    | popular_reactions | availableReaction | List of popular reactions. |
    | allow_custom_emoji | bool | True, if any custom emoji reaction can be added by Telegram Premium subscribers. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1available_reactions.html).
    """

    defstruct "@type": "availableReactions",
              "@extra": nil,
              top_reactions: nil,
              recent_reactions: nil,
              popular_reactions: nil,
              allow_custom_emoji: nil
  end

  defmodule ChatEventMemberInvited do
    @moduledoc """
    A new chat member was invited.

    | Name | Type | Description |
    |------|------| ------------|
    | user_id | string | New member user identifier. |
    | status | ChatMemberStatus | New member status. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_member_invited.html).
    """

    defstruct "@type": "chatEventMemberInvited", "@extra": nil, user_id: nil, status: nil
  end

  defmodule MessageSponsorTypeWebsite do
    @moduledoc """
    The sponsor is a website.

    | Name | Type | Description |
    |------|------| ------------|
    | url | string | URL of the website. |
    | name | string | Name of the website. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_sponsor_type_website.html).
    """

    defstruct "@type": "messageSponsorTypeWebsite", "@extra": nil, url: nil, name: nil
  end

  defmodule InlineQueryResultsButton do
    @moduledoc """
    Represents a button to be shown above inline query results.

    | Name | Type | Description |
    |------|------| ------------|
    | text | string | The text of the button. |
    | type | InlineQueryResultsButtonType | Type of the button. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_query_results_button.html).
    """

    defstruct "@type": "inlineQueryResultsButton", "@extra": nil, text: nil, type: nil
  end

  defmodule AutoDownloadSettingsPresets do
    @moduledoc """
    Contains auto-download settings presets for the current user.

    | Name | Type | Description |
    |------|------| ------------|
    | low | autoDownloadSettings | Preset with lowest settings; supposed to be used by default when roaming. |
    | medium | autoDownloadSettings | Preset with medium settings; supposed to be used by default when using mobile data. |
    | high | autoDownloadSettings | Preset with highest settings; supposed to be used by default when connected on Wi-Fi. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1auto_download_settings_presets.html).
    """

    defstruct "@type": "autoDownloadSettingsPresets", "@extra": nil, low: nil, medium: nil, high: nil
  end

  defmodule TestVectorString do
    @moduledoc """
    A simple object containing a vector of strings; for testing only.

    | Name | Type | Description |
    |------|------| ------------|
    | value | string | Vector of strings. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1test_vector_string.html).
    """

    defstruct "@type": "testVectorString", "@extra": nil, value: nil
  end

  defmodule TopChatCategoryChannels do
    @moduledoc """
    A category containing frequently used channels.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1top_chat_category_channels.html).
    """

    defstruct "@type": "topChatCategoryChannels", "@extra": nil
  end

  defmodule ClosedVectorPath do
    @moduledoc """
    Represents a closed vector path. The path begins at the end point of the last command.

    | Name | Type | Description |
    |------|------| ------------|
    | commands | VectorPathCommand | List of vector path commands. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1closed_vector_path.html).
    """

    defstruct "@type": "closedVectorPath", "@extra": nil, commands: nil
  end

  defmodule PageBlockVerticalAlignmentBottom do
    @moduledoc """
    The content must be bottom-aligned.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_vertical_alignment_bottom.html).
    """

    defstruct "@type": "pageBlockVerticalAlignmentBottom", "@extra": nil
  end

  defmodule UserStatusOnline do
    @moduledoc """
    The user is online.

    | Name | Type | Description |
    |------|------| ------------|
    | expires | number | Point in time (Unix timestamp) when the user's online status will expire. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_status_online.html).
    """

    defstruct "@type": "userStatusOnline", "@extra": nil, expires: nil
  end

  defmodule MessageFileType do
    @moduledoc """
    This class is an abstract base class. Contains information about a file with messages exported from another app.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_message_file_type.html).
    """

    defstruct "@type": "MessageFileType", "@extra": nil
  end

  defmodule TextEntityTypeBankCardNumber do
    @moduledoc """
    A bank card number. The getBankCardInfo method can be used to get information about the bank card.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_bank_card_number.html).
    """

    defstruct "@type": "textEntityTypeBankCardNumber", "@extra": nil
  end

  defmodule AutosaveSettingsScopeChannelChats do
    @moduledoc """
    Autosave settings applied to all channel chats without chat-specific settings.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1autosave_settings_scope_channel_chats.html).
    """

    defstruct "@type": "autosaveSettingsScopeChannelChats", "@extra": nil
  end

  defmodule ChatTypeSupergroup do
    @moduledoc """
    A supergroup or channel (with unlimited members).

    | Name | Type | Description |
    |------|------| ------------|
    | supergroup_id | string | Supergroup or channel identifier. |
    | is_channel | bool | True, if the supergroup is a channel. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_type_supergroup.html).
    """

    defstruct "@type": "chatTypeSupergroup", "@extra": nil, supergroup_id: nil, is_channel: nil
  end

  defmodule StoryAreaType do
    @moduledoc """
    This class is an abstract base class. Describes type of a clickable rectangle area on a story media.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_story_area_type.html).
    """

    defstruct "@type": "StoryAreaType", "@extra": nil
  end

  defmodule StickerTypeCustomEmoji do
    @moduledoc """
    The sticker is a custom emoji to be used inside message text and caption.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sticker_type_custom_emoji.html).
    """

    defstruct "@type": "stickerTypeCustomEmoji", "@extra": nil
  end

  defmodule MessageAnimatedEmoji do
    @moduledoc """
    A message with an animated emoji.

    | Name | Type | Description |
    |------|------| ------------|
    | animated_emoji | animatedEmoji | The animated emoji. |
    | emoji | string | The corresponding emoji. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_animated_emoji.html).
    """

    defstruct "@type": "messageAnimatedEmoji", "@extra": nil, animated_emoji: nil, emoji: nil
  end

  defmodule WebAppInfo do
    @moduledoc """
    Contains information about a Web App.

    | Name | Type | Description |
    |------|------| ------------|
    | launch_id | string | Unique identifier for the Web App launch. |
    | url | string | A Web App URL to open in a web view. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1web_app_info.html).
    """

    defstruct "@type": "webAppInfo", "@extra": nil, launch_id: nil, url: nil
  end

  defmodule TopChatCategoryGroups do
    @moduledoc """
    A category containing frequently used basic groups and supergroups.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1top_chat_category_groups.html).
    """

    defstruct "@type": "topChatCategoryGroups", "@extra": nil
  end

  defmodule MessageExpiredVideo do
    @moduledoc """
    A self-destructed video message.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_expired_video.html).
    """

    defstruct "@type": "messageExpiredVideo", "@extra": nil
  end

  defmodule AuthenticationCodeTypeFragment do
    @moduledoc """
    An authentication code is delivered to https://fragment.com. The user must be logged in there via a wallet owning the phone number's NFT.

    | Name | Type | Description |
    |------|------| ------------|
    | url | string | URL to open to receive the code. |
    | length | number | Length of the code. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authentication_code_type_fragment.html).
    """

    defstruct "@type": "authenticationCodeTypeFragment", "@extra": nil, url: nil, length: nil
  end

  defmodule TargetChatCurrent do
    @moduledoc """
    The currently opened chat needs to be kept.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1target_chat_current.html).
    """

    defstruct "@type": "targetChatCurrent", "@extra": nil
  end

  defmodule BlockListStories do
    @moduledoc """
    The block list that disallows viewing of stories of the current user.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1block_list_stories.html).
    """

    defstruct "@type": "blockListStories", "@extra": nil
  end

  defmodule InputInlineQueryResultDocument do
    @moduledoc """
    Represents a link to a file.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Unique identifier of the query result. |
    | title | string | Title of the resulting file. |
    | description | string | Short description of the result, if known. |
    | document_url | string | URL of the file. |
    | mime_type | string | MIME type of the file content; only "application/pdf" and "application/zip" are currently allowed. |
    | thumbnail_url | string | The URL of the file thumbnail, if it exists. |
    | thumbnail_width | number | Width of the thumbnail. |
    | thumbnail_height | number | Height of the thumbnail. |
    | reply_markup | ReplyMarkup | The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null. |
    | input_message_content | InputMessageContent | The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageDocument, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_inline_query_result_document.html).
    """

    defstruct "@type": "inputInlineQueryResultDocument",
              "@extra": nil,
              id: nil,
              title: nil,
              description: nil,
              document_url: nil,
              mime_type: nil,
              thumbnail_url: nil,
              thumbnail_width: nil,
              thumbnail_height: nil,
              reply_markup: nil,
              input_message_content: nil
  end

  defmodule SecretChatStateClosed do
    @moduledoc """
    The secret chat is closed.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1secret_chat_state_closed.html).
    """

    defstruct "@type": "secretChatStateClosed", "@extra": nil
  end

  defmodule ResetPasswordResultPending do
    @moduledoc """
    The password reset request is pending.

    | Name | Type | Description |
    |------|------| ------------|
    | pending_reset_date | number | Point in time (Unix timestamp) after which the password can be reset immediately using resetPassword. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1reset_password_result_pending.html).
    """

    defstruct "@type": "resetPasswordResultPending", "@extra": nil, pending_reset_date: nil
  end

  defmodule MessageSelfDestructType do
    @moduledoc """
    This class is an abstract base class. Describes when a message will be self-destructed.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_message_self_destruct_type.html).
    """

    defstruct "@type": "MessageSelfDestructType", "@extra": nil
  end

  defmodule TargetChatChosen do
    @moduledoc """
    The chat needs to be chosen by the user among chats of the specified types.

    | Name | Type | Description |
    |------|------| ------------|
    | allow_user_chats | bool | True, if private chats with ordinary users are allowed. |
    | allow_bot_chats | bool | True, if private chats with other bots are allowed. |
    | allow_group_chats | bool | True, if basic group and supergroup chats are allowed. |
    | allow_channel_chats | bool | True, if channel chats are allowed. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1target_chat_chosen.html).
    """

    defstruct "@type": "targetChatChosen",
              "@extra": nil,
              allow_user_chats: nil,
              allow_bot_chats: nil,
              allow_group_chats: nil,
              allow_channel_chats: nil
  end

  defmodule PageBlockTable do
    @moduledoc """
    A table.

    | Name | Type | Description |
    |------|------| ------------|
    | caption | RichText | Table caption. |
    | cells | pageBlockTableCell | Table cells. |
    | is_bordered | bool | True, if the table is bordered. |
    | is_striped | bool | True, if the table is striped. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_table.html).
    """

    defstruct "@type": "pageBlockTable", "@extra": nil, caption: nil, cells: nil, is_bordered: nil, is_striped: nil
  end

  defmodule UpdateUnreadMessageCount do
    @moduledoc """
    Number of unread messages in a chat list has changed. This update is sent only if the message database is used.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_list | ChatList | The chat list with changed number of unread messages. |
    | unread_count | number | Total number of unread messages. |
    | unread_unmuted_count | number | Total number of unread messages in unmuted chats. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_unread_message_count.html).
    """

    defstruct "@type": "updateUnreadMessageCount",
              "@extra": nil,
              chat_list: nil,
              unread_count: nil,
              unread_unmuted_count: nil
  end

  defmodule TextEntityTypeBold do
    @moduledoc """
    A bold text.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_bold.html).
    """

    defstruct "@type": "textEntityTypeBold", "@extra": nil
  end

  defmodule Document do
    @moduledoc """
    Describes a document of any type.

    | Name | Type | Description |
    |------|------| ------------|
    | file_name | string | Original name of the file; as defined by the sender. |
    | mime_type | string | MIME type of the file; as defined by the sender. |
    | minithumbnail | minithumbnail | Document minithumbnail; may be null. |
    | thumbnail | thumbnail | Document thumbnail in JPEG or PNG format (PNG will be used only for background patterns); as defined by the sender; may be null. |
    | document | file | File containing the document. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1document.html).
    """

    defstruct "@type": "document",
              "@extra": nil,
              file_name: nil,
              mime_type: nil,
              minithumbnail: nil,
              thumbnail: nil,
              document: nil
  end

  defmodule InputInlineQueryResultAudio do
    @moduledoc """
    Represents a link to an MP3 audio file.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Unique identifier of the query result. |
    | title | string | Title of the audio file. |
    | performer | string | Performer of the audio file. |
    | audio_url | string | The URL of the audio file. |
    | audio_duration | number | Audio file duration, in seconds. |
    | reply_markup | ReplyMarkup | The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null. |
    | input_message_content | InputMessageContent | The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageAudio, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_inline_query_result_audio.html).
    """

    defstruct "@type": "inputInlineQueryResultAudio",
              "@extra": nil,
              id: nil,
              title: nil,
              performer: nil,
              audio_url: nil,
              audio_duration: nil,
              reply_markup: nil,
              input_message_content: nil
  end

  defmodule UpdateNotificationGroup do
    @moduledoc """
    A list of active notifications in a notification group has changed.

    | Name | Type | Description |
    |------|------| ------------|
    | notification_group_id | number | Unique notification group identifier. |
    | type | NotificationGroupType | New type of the notification group. |
    | chat_id | string | Identifier of a chat to which all notifications in the group belong. |
    | notification_settings_chat_id | string | Chat identifier, which notification settings must be applied to the added notifications. |
    | notification_sound_id | string | Identifier of the notification sound to be played; 0 if sound is disabled. |
    | total_count | number | Total number of unread notifications in the group, can be bigger than number of active notifications. |
    | added_notifications | notification | List of added group notifications, sorted by notification identifier. |
    | removed_notification_ids | number | Identifiers of removed group notifications, sorted by notification identifier. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_notification_group.html).
    """

    defstruct "@type": "updateNotificationGroup",
              "@extra": nil,
              notification_group_id: nil,
              type: nil,
              chat_id: nil,
              notification_settings_chat_id: nil,
              notification_sound_id: nil,
              total_count: nil,
              added_notifications: nil,
              removed_notification_ids: nil
  end

  defmodule DatabaseStatistics do
    @moduledoc """
    Contains database statistics.

    | Name | Type | Description |
    |------|------| ------------|
    | statistics | string | Database statistics in an unspecified human-readable format. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1database_statistics.html).
    """

    defstruct "@type": "databaseStatistics", "@extra": nil, statistics: nil
  end

  defmodule PageBlockVerticalAlignment do
    @moduledoc """
    This class is an abstract base class. Describes a Vertical alignment of a table cell content.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_page_block_vertical_alignment.html).
    """

    defstruct "@type": "PageBlockVerticalAlignment", "@extra": nil
  end

  defmodule PremiumStoryFeature do
    @moduledoc """
    This class is an abstract base class. Describes a story feature available to Premium users.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_premium_story_feature.html).
    """

    defstruct "@type": "PremiumStoryFeature", "@extra": nil
  end

  defmodule ReplyMarkupShowKeyboard do
    @moduledoc """
    Contains a custom keyboard layout to quickly reply to bots.

    | Name | Type | Description |
    |------|------| ------------|
    | rows | keyboardButton | A list of rows of bot keyboard buttons. |
    | is_persistent | bool | True, if the keyboard is supposed to always be shown when the ordinary keyboard is hidden. |
    | resize_keyboard | bool | True, if the application needs to resize the keyboard vertically. |
    | one_time | bool | True, if the application needs to hide the keyboard after use. |
    | is_personal | bool | True, if the keyboard must automatically be shown to the current user. For outgoing messages, specify true to show the keyboard only for the mentioned users and for the target user of a reply. |
    | input_field_placeholder | string | If non-empty, the placeholder to be shown in the input field when the keyboard is active; 0-64 characters. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1reply_markup_show_keyboard.html).
    """

    defstruct "@type": "replyMarkupShowKeyboard",
              "@extra": nil,
              rows: nil,
              is_persistent: nil,
              resize_keyboard: nil,
              one_time: nil,
              is_personal: nil,
              input_field_placeholder: nil
  end

  defmodule ChatInviteLinkInfo do
    @moduledoc """
    Contains information about a chat invite link.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier of the invite link; 0 if the user has no access to the chat before joining. |
    | accessible_for | number | If non-zero, the amount of time for which read access to the chat will remain available, in seconds. |
    | type | InviteLinkChatType | Type of the chat. |
    | title | string | Title of the chat. |
    | photo | chatPhotoInfo | Chat photo; may be null. |
    | accent_color_id | number | Identifier of the accent color for chat title and background of chat photo. |
    | description | string | Chat description. |
    | member_count | number | Number of members in the chat. |
    | member_user_ids | string | User identifiers of some chat members that may be known to the current user. |
    | creates_join_request | bool | True, if the link only creates join request. |
    | is_public | bool | True, if the chat is a public supergroup or channel, i.e. it has a username or it is a location-based supergroup. |
    | is_verified | bool | True, if the chat is verified. |
    | is_scam | bool | True, if many users reported this chat as a scam. |
    | is_fake | bool | True, if many users reported this chat as a fake account. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_invite_link_info.html).
    """

    defstruct "@type": "chatInviteLinkInfo",
              "@extra": nil,
              chat_id: nil,
              accessible_for: nil,
              type: nil,
              title: nil,
              photo: nil,
              accent_color_id: nil,
              description: nil,
              member_count: nil,
              member_user_ids: nil,
              creates_join_request: nil,
              is_public: nil,
              is_verified: nil,
              is_scam: nil,
              is_fake: nil
  end

  defmodule PremiumGiveawayParticipantStatusDisallowedCountry do
    @moduledoc """
    The user can't participate in the giveaway, because they phone number is from a disallowed country.

    | Name | Type | Description |
    |------|------| ------------|
    | user_country_code | string | A two-letter ISO 3166-1 alpha-2 country code of the user's country. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_giveaway_participant_status_disallowed_country.html).
    """

    defstruct "@type": "premiumGiveawayParticipantStatusDisallowedCountry", "@extra": nil, user_country_code: nil
  end

  defmodule UserStatusEmpty do
    @moduledoc """
    The user status was never changed.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_status_empty.html).
    """

    defstruct "@type": "userStatusEmpty", "@extra": nil
  end

  defmodule TextEntityTypeItalic do
    @moduledoc """
    An italic text.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_italic.html).
    """

    defstruct "@type": "textEntityTypeItalic", "@extra": nil
  end

  defmodule UserLink do
    @moduledoc """
    Contains an HTTPS URL, which can be used to get information about a user.

    | Name | Type | Description |
    |------|------| ------------|
    | url | string | The URL. |
    | expires_in | number | Left time for which the link is valid, in seconds; 0 if the link is a public username link. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_link.html).
    """

    defstruct "@type": "userLink", "@extra": nil, url: nil, expires_in: nil
  end

  defmodule StorageStatistics do
    @moduledoc """
    Contains the exact storage usage statistics split by chats and file type.

    | Name | Type | Description |
    |------|------| ------------|
    | size | string | Total size of files, in bytes. |
    | count | number | Total number of files. |
    | by_chat | storageStatisticsByChat | Statistics split by chats. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1storage_statistics.html).
    """

    defstruct "@type": "storageStatistics", "@extra": nil, size: nil, count: nil, by_chat: nil
  end

  defmodule ChatFolderIcon do
    @moduledoc """
    Represents an icon for a chat folder.

    | Name | Type | Description |
    |------|------| ------------|
    | name | string | The chosen icon name for short folder representation; one of "All", "Unread", "Unmuted", "Bots", "Channels", "Groups", "Private", "Custom", "Setup", "Cat", "Crown", "Favorite", "Flower", "Game", "Home", "Love", "Mask", "Party", "Sport", "Study", "Trade", "Travel", "Work", "Airplane", "Book", "Light", "Like", "Money", "Note", "Palette". |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_folder_icon.html).
    """

    defstruct "@type": "chatFolderIcon", "@extra": nil, name: nil
  end

  defmodule RichTexts do
    @moduledoc """
    A concatenation of rich texts.

    | Name | Type | Description |
    |------|------| ------------|
    | texts | RichText | Texts. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1rich_texts.html).
    """

    defstruct "@type": "richTexts", "@extra": nil, texts: nil
  end

  defmodule InputPassportElementPhoneNumber do
    @moduledoc """
    A Telegram Passport element to be saved containing the user's phone number.

    | Name | Type | Description |
    |------|------| ------------|
    | phone_number | string | The phone number to be saved. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_passport_element_phone_number.html).
    """

    defstruct "@type": "inputPassportElementPhoneNumber", "@extra": nil, phone_number: nil
  end

  defmodule ChatEventUsernameChanged do
    @moduledoc """
    The chat editable username was changed.

    | Name | Type | Description |
    |------|------| ------------|
    | old_username | string | Previous chat username. |
    | new_username | string | New chat username. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_username_changed.html).
    """

    defstruct "@type": "chatEventUsernameChanged", "@extra": nil, old_username: nil, new_username: nil
  end

  defmodule ConnectionStateConnecting do
    @moduledoc """
    Establishing a connection to the Telegram servers.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1connection_state_connecting.html).
    """

    defstruct "@type": "connectionStateConnecting", "@extra": nil
  end

  defmodule SessionTypeSafari do
    @moduledoc """
    The session is running on the Safari browser.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1session_type_safari.html).
    """

    defstruct "@type": "sessionTypeSafari", "@extra": nil
  end

  defmodule ChatEventSignMessagesToggled do
    @moduledoc """
    The sign_messages setting of a channel was toggled.

    | Name | Type | Description |
    |------|------| ------------|
    | sign_messages | bool | New value of sign_messages. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_sign_messages_toggled.html).
    """

    defstruct "@type": "chatEventSignMessagesToggled", "@extra": nil, sign_messages: nil
  end

  defmodule InputInlineQueryResultVoiceNote do
    @moduledoc """
    Represents a link to an opus-encoded audio file within an OGG container, single channel audio.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Unique identifier of the query result. |
    | title | string | Title of the voice note. |
    | voice_note_url | string | The URL of the voice note file. |
    | voice_note_duration | number | Duration of the voice note, in seconds. |
    | reply_markup | ReplyMarkup | The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null. |
    | input_message_content | InputMessageContent | The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageVoiceNote, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_inline_query_result_voice_note.html).
    """

    defstruct "@type": "inputInlineQueryResultVoiceNote",
              "@extra": nil,
              id: nil,
              title: nil,
              voice_note_url: nil,
              voice_note_duration: nil,
              reply_markup: nil,
              input_message_content: nil
  end

  defmodule PremiumLimitTypeChatFolderChosenChatCount do
    @moduledoc """
    The maximum number of pinned and always included, or always excluded chats in a chat folder.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_limit_type_chat_folder_chosen_chat_count.html).
    """

    defstruct "@type": "premiumLimitTypeChatFolderChosenChatCount", "@extra": nil
  end

  defmodule CountryInfo do
    @moduledoc """
    Contains information about a country.

    | Name | Type | Description |
    |------|------| ------------|
    | country_code | string | A two-letter ISO 3166-1 alpha-2 country code. |
    | name | string | Native name of the country. |
    | english_name | string | English name of the country. |
    | is_hidden | bool | True, if the country must be hidden from the list of all countries. |
    | calling_codes | string | List of country calling codes. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1country_info.html).
    """

    defstruct "@type": "countryInfo",
              "@extra": nil,
              country_code: nil,
              name: nil,
              english_name: nil,
              is_hidden: nil,
              calling_codes: nil
  end

  defmodule TextEntities do
    @moduledoc """
    Contains a list of text entities.

    | Name | Type | Description |
    |------|------| ------------|
    | entities | textEntity | List of text entities. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entities.html).
    """

    defstruct "@type": "textEntities", "@extra": nil, entities: nil
  end

  defmodule SupergroupMembersFilterBots do
    @moduledoc """
    Returns bot members of the supergroup or channel.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1supergroup_members_filter_bots.html).
    """

    defstruct "@type": "supergroupMembersFilterBots", "@extra": nil
  end

  defmodule PremiumStoryFeatureStealthMode do
    @moduledoc """
    The ability to hide the fact that the user viewed other's stories.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_story_feature_stealth_mode.html).
    """

    defstruct "@type": "premiumStoryFeatureStealthMode", "@extra": nil
  end

  defmodule PassportElementTemporaryRegistration do
    @moduledoc """
    A Telegram Passport element containing the user's temporary registration.

    | Name | Type | Description |
    |------|------| ------------|
    | temporary_registration | personalDocument | Temporary registration. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_temporary_registration.html).
    """

    defstruct "@type": "passportElementTemporaryRegistration", "@extra": nil, temporary_registration: nil
  end

  defmodule ChatMembersFilterMembers do
    @moduledoc """
    Returns all chat members, including restricted chat members.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_members_filter_members.html).
    """

    defstruct "@type": "chatMembersFilterMembers", "@extra": nil
  end

  defmodule MessageForumTopicCreated do
    @moduledoc """
    A forum topic has been created.

    | Name | Type | Description |
    |------|------| ------------|
    | name | string | Name of the topic. |
    | icon | forumTopicIcon | Icon of the topic. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_forum_topic_created.html).
    """

    defstruct "@type": "messageForumTopicCreated", "@extra": nil, name: nil, icon: nil
  end

  defmodule SearchMessagesFilterDocument do
    @moduledoc """
    Returns only document messages.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_document.html).
    """

    defstruct "@type": "searchMessagesFilterDocument", "@extra": nil
  end

  defmodule PassportElementPersonalDetails do
    @moduledoc """
    A Telegram Passport element containing the user's personal details.

    | Name | Type | Description |
    |------|------| ------------|
    | personal_details | personalDetails | Personal details of the user. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_personal_details.html).
    """

    defstruct "@type": "passportElementPersonalDetails", "@extra": nil, personal_details: nil
  end

  defmodule ChatActionBarJoinRequest do
    @moduledoc """
    The chat is a private chat with an administrator of a chat to which the user sent join request.

    | Name | Type | Description |
    |------|------| ------------|
    | title | string | Title of the chat to which the join request was sent. |
    | is_channel | bool | True, if the join request was sent to a channel chat. |
    | request_date | number | Point in time (Unix timestamp) when the join request was sent. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_bar_join_request.html).
    """

    defstruct "@type": "chatActionBarJoinRequest", "@extra": nil, title: nil, is_channel: nil, request_date: nil
  end

  defmodule ChatInviteLinkMember do
    @moduledoc """
    Describes a chat member joined a chat via an invite link.

    | Name | Type | Description |
    |------|------| ------------|
    | user_id | string | User identifier. |
    | joined_chat_date | number | Point in time (Unix timestamp) when the user joined the chat. |
    | via_chat_folder_invite_link | bool | True, if the user has joined the chat using an invite link for a chat folder. |
    | approver_user_id | string | User identifier of the chat administrator, approved user join request. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_invite_link_member.html).
    """

    defstruct "@type": "chatInviteLinkMember",
              "@extra": nil,
              user_id: nil,
              joined_chat_date: nil,
              via_chat_folder_invite_link: nil,
              approver_user_id: nil
  end

  defmodule ChatEventForumTopicPinned do
    @moduledoc """
    A pinned forum topic was changed.

    | Name | Type | Description |
    |------|------| ------------|
    | old_topic_info | forumTopicInfo | Information about the old pinned topic; may be null. |
    | new_topic_info | forumTopicInfo | Information about the new pinned topic; may be null. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_forum_topic_pinned.html).
    """

    defstruct "@type": "chatEventForumTopicPinned", "@extra": nil, old_topic_info: nil, new_topic_info: nil
  end

  defmodule UpdateChatLastMessage do
    @moduledoc """
    The last message of a chat was changed.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |
    | last_message | message | The new last message in the chat; may be null if the last message became unknown. While the last message is unknown, new messages can be added to the chat without corresponding updateNewMessage update. |
    | positions | chatPosition | The new chat positions in the chat lists. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_last_message.html).
    """

    defstruct "@type": "updateChatLastMessage", "@extra": nil, chat_id: nil, last_message: nil, positions: nil
  end

  defmodule GroupCallVideoQualityFull do
    @moduledoc """
    The best available video quality.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1group_call_video_quality_full.html).
    """

    defstruct "@type": "groupCallVideoQualityFull", "@extra": nil
  end

  defmodule WebPage do
    @moduledoc """
    Describes a link preview.

    | Name | Type | Description |
    |------|------| ------------|
    | url | string | Original URL of the link. |
    | display_url | string | URL to display. |
    | type | string | Type of the web page. Can be: article, photo, audio, video, document, profile, app, or something else. |
    | site_name | string | Short name of the site (e.g., Google Docs, App Store). |
    | title | string | Title of the content. |
    | description | formattedText | Description of the content. |
    | photo | photo | Image representing the content; may be null. |
    | embed_url | string | URL to show in the embedded preview. |
    | embed_type | string | MIME type of the embedded preview, (e.g., text/html or video/mp4). |
    | embed_width | number | Width of the embedded preview. |
    | embed_height | number | Height of the embedded preview. |
    | duration | number | Duration of the content, in seconds. |
    | author | string | Author of the content. |
    | has_large_media | bool | True, if size of media in the preview can be changed. |
    | show_large_media | bool | True, if large media preview must be shown; otherwise, the media preview must be shown small and only the first frame must be shown for videos. |
    | skip_confirmation | bool | True, if there is no need to show an ordinary open URL confirmation, when opening the URL from the preview, because the URL is shown in the message text in clear. |
    | show_above_text | bool | True, if the link preview must be shown above message text; otherwise, the link preview must be shown below the message text. |
    | animation | animation | Preview of the content as an animation, if available; may be null. |
    | audio | audio | Preview of the content as an audio file, if available; may be null. |
    | document | document | Preview of the content as a document, if available; may be null. |
    | sticker | sticker | Preview of the content as a sticker for small WEBP files, if available; may be null. |
    | video | video | Preview of the content as a video, if available; may be null. |
    | video_note | videoNote | Preview of the content as a video note, if available; may be null. |
    | voice_note | voiceNote | Preview of the content as a voice note, if available; may be null. |
    | story_sender_chat_id | string | The identifier of the sender of the previewed story; 0 if none. |
    | story_id | number | The identifier of the previewed story; 0 if none. |
    | instant_view_version | number | Version of web page instant view (currently, can be 1 or 2); 0 if none. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1web_page.html).
    """

    defstruct "@type": "webPage",
              "@extra": nil,
              url: nil,
              display_url: nil,
              type: nil,
              site_name: nil,
              title: nil,
              description: nil,
              photo: nil,
              embed_url: nil,
              embed_type: nil,
              embed_width: nil,
              embed_height: nil,
              duration: nil,
              author: nil,
              has_large_media: nil,
              show_large_media: nil,
              skip_confirmation: nil,
              show_above_text: nil,
              animation: nil,
              audio: nil,
              document: nil,
              sticker: nil,
              video: nil,
              video_note: nil,
              voice_note: nil,
              story_sender_chat_id: nil,
              story_id: nil,
              instant_view_version: nil
  end

  defmodule UpdateMessageSendAcknowledged do
    @moduledoc """
    A request to send a message has reached the Telegram server. This doesn't mean that the message will be sent successfully. This update is sent only if the option "use_quick_ack" is set to true. This update may be sent multiple times for the same message.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | The chat identifier of the sent message. |
    | message_id | string | A temporary message identifier. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_message_send_acknowledged.html).
    """

    defstruct "@type": "updateMessageSendAcknowledged", "@extra": nil, chat_id: nil, message_id: nil
  end

  defmodule AutosaveSettingsException do
    @moduledoc """
    Contains autosave settings for a chat, which overrides default settings for the corresponding scope.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |
    | settings | scopeAutosaveSettings | Autosave settings for the chat. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1autosave_settings_exception.html).
    """

    defstruct "@type": "autosaveSettingsException", "@extra": nil, chat_id: nil, settings: nil
  end

  defmodule AuthorizationStateWaitRegistration do
    @moduledoc """
    The user is unregistered and need to accept terms of service and enter their first name and last name to finish registration. Call registerUser to accept the terms of service and provide the data.

    | Name | Type | Description |
    |------|------| ------------|
    | terms_of_service | termsOfService | Telegram terms of service. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authorization_state_wait_registration.html).
    """

    defstruct "@type": "authorizationStateWaitRegistration", "@extra": nil, terms_of_service: nil
  end

  defmodule EncryptedPassportElement do
    @moduledoc """
    Contains information about an encrypted Telegram Passport element; for bots only.

    | Name | Type | Description |
    |------|------| ------------|
    | type | PassportElementType | Type of Telegram Passport element. |
    | data | bytes | Encrypted JSON-encoded data about the user. |
    | front_side | datedFile | The front side of an identity document. |
    | reverse_side | datedFile | The reverse side of an identity document; may be null. |
    | selfie | datedFile | Selfie with the document; may be null. |
    | translation | datedFile | List of files containing a certified English translation of the document. |
    | files | datedFile | List of attached files. |
    | value | string | Unencrypted data, phone number or email address. |
    | hash | string | Hash of the entire element. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1encrypted_passport_element.html).
    """

    defstruct "@type": "encryptedPassportElement",
              "@extra": nil,
              type: nil,
              data: nil,
              front_side: nil,
              reverse_side: nil,
              selfie: nil,
              translation: nil,
              files: nil,
              value: nil,
              hash: nil
  end

  defmodule PersonalDetails do
    @moduledoc """
    Contains the user's personal details.

    | Name | Type | Description |
    |------|------| ------------|
    | first_name | string | First name of the user written in English; 1-255 characters. |
    | middle_name | string | Middle name of the user written in English; 0-255 characters. |
    | last_name | string | Last name of the user written in English; 1-255 characters. |
    | native_first_name | string | Native first name of the user; 1-255 characters. |
    | native_middle_name | string | Native middle name of the user; 0-255 characters. |
    | native_last_name | string | Native last name of the user; 1-255 characters. |
    | birthdate | date | Birthdate of the user. |
    | gender | string | Gender of the user, "male" or "female". |
    | country_code | string | A two-letter ISO 3166-1 alpha-2 country code of the user's country. |
    | residence_country_code | string | A two-letter ISO 3166-1 alpha-2 country code of the user's residence country. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1personal_details.html).
    """

    defstruct "@type": "personalDetails",
              "@extra": nil,
              first_name: nil,
              middle_name: nil,
              last_name: nil,
              native_first_name: nil,
              native_middle_name: nil,
              native_last_name: nil,
              birthdate: nil,
              gender: nil,
              country_code: nil,
              residence_country_code: nil
  end

  defmodule StoryContent do
    @moduledoc """
    This class is an abstract base class. Contains the content of a story.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_story_content.html).
    """

    defstruct "@type": "StoryContent", "@extra": nil
  end

  defmodule ChatMember do
    @moduledoc """
    Describes a user or a chat as a member of another chat.

    | Name | Type | Description |
    |------|------| ------------|
    | member_id | MessageSender | Identifier of the chat member. Currently, other chats can be only Left or Banned. Only supergroups and channels can have other chats as Left or Banned members and these chats must be supergroups or channels. |
    | inviter_user_id | string | Identifier of a user that invited/promoted/banned this member in the chat; 0 if unknown. |
    | joined_chat_date | number | Point in time (Unix timestamp) when the user joined/was promoted/was banned in the chat. |
    | status | ChatMemberStatus | Status of the member in the chat. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_member.html).
    """

    defstruct "@type": "chatMember",
              "@extra": nil,
              member_id: nil,
              inviter_user_id: nil,
              joined_chat_date: nil,
              status: nil
  end

  defmodule TextEntityTypeCashtag do
    @moduledoc """
    A cashtag text, beginning with "$" and consisting of capital English letters (e.g., "$USD").


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_cashtag.html).
    """

    defstruct "@type": "textEntityTypeCashtag", "@extra": nil
  end

  defmodule InputPassportElementErrorSourceFrontSide do
    @moduledoc """
    The front side of the document contains an error. The error is considered resolved when the file with the front side of the document changes.

    | Name | Type | Description |
    |------|------| ------------|
    | file_hash | bytes | Current hash of the file containing the front side. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_passport_element_error_source_front_side.html).
    """

    defstruct "@type": "inputPassportElementErrorSourceFrontSide", "@extra": nil, file_hash: nil
  end

  defmodule BotCommands do
    @moduledoc """
    Contains a list of bot commands.

    | Name | Type | Description |
    |------|------| ------------|
    | bot_user_id | string | Bot's user identifier. |
    | commands | botCommand | List of bot commands. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1bot_commands.html).
    """

    defstruct "@type": "botCommands", "@extra": nil, bot_user_id: nil, commands: nil
  end

  defmodule MessageBotWriteAccessAllowed do
    @moduledoc """
    The user allowed the bot to send messages.

    | Name | Type | Description |
    |------|------| ------------|
    | reason | BotWriteAccessAllowReason | The reason why the bot was allowed to write messages. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_bot_write_access_allowed.html).
    """

    defstruct "@type": "messageBotWriteAccessAllowed", "@extra": nil, reason: nil
  end

  defmodule OptionValueInteger do
    @moduledoc """
    Represents an integer option.

    | Name | Type | Description |
    |------|------| ------------|
    | value | string | The value of the option. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1option_value_integer.html).
    """

    defstruct "@type": "optionValueInteger", "@extra": nil, value: nil
  end

  defmodule RichTextSubscript do
    @moduledoc """
    A subscript rich text.

    | Name | Type | Description |
    |------|------| ------------|
    | text | RichText | Text. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1rich_text_subscript.html).
    """

    defstruct "@type": "richTextSubscript", "@extra": nil, text: nil
  end

  defmodule MessageProximityAlertTriggered do
    @moduledoc """
    A user in the chat came within proximity alert range.

    | Name | Type | Description |
    |------|------| ------------|
    | traveler_id | MessageSender | The identifier of a user or chat that triggered the proximity alert. |
    | watcher_id | MessageSender | The identifier of a user or chat that subscribed for the proximity alert. |
    | distance | number | The distance between the users. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_proximity_alert_triggered.html).
    """

    defstruct "@type": "messageProximityAlertTriggered", "@extra": nil, traveler_id: nil, watcher_id: nil, distance: nil
  end

  defmodule SearchMessagesFilterUnreadReaction do
    @moduledoc """
    Returns only messages with unread reactions for the current user. When using this filter the results can't be additionally filtered by a query, a message thread or by the sending user.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_unread_reaction.html).
    """

    defstruct "@type": "searchMessagesFilterUnreadReaction", "@extra": nil
  end

  defmodule PremiumLimitTypePinnedChatCount do
    @moduledoc """
    The maximum number of pinned chats in the main chat list.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_limit_type_pinned_chat_count.html).
    """

    defstruct "@type": "premiumLimitTypePinnedChatCount", "@extra": nil
  end

  defmodule SentWebAppMessage do
    @moduledoc """
    Information about the message sent by answerWebAppQuery.

    | Name | Type | Description |
    |------|------| ------------|
    | inline_message_id | string | Identifier of the sent inline message, if known. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sent_web_app_message.html).
    """

    defstruct "@type": "sentWebAppMessage", "@extra": nil, inline_message_id: nil
  end

  defmodule CanSendStoryResultBoostNeeded do
    @moduledoc """
    The channel chat must be boosted first by Telegram Premium subscribers to post more stories. Call getChatBoostStatus to get current boost status of the chat.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1can_send_story_result_boost_needed.html).
    """

    defstruct "@type": "canSendStoryResultBoostNeeded", "@extra": nil
  end

  defmodule MessagePaymentSuccessful do
    @moduledoc """
    A payment has been completed.

    | Name | Type | Description |
    |------|------| ------------|
    | invoice_chat_id | string | Identifier of the chat, containing the corresponding invoice message. |
    | invoice_message_id | string | Identifier of the message with the corresponding invoice; can be 0 or an identifier of a deleted message. |
    | currency | string | Currency for the price of the product. |
    | total_amount | string | Total price for the product, in the smallest units of the currency. |
    | is_recurring | bool | True, if this is a recurring payment. |
    | is_first_recurring | bool | True, if this is the first recurring payment. |
    | invoice_name | string | Name of the invoice; may be empty if unknown. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_payment_successful.html).
    """

    defstruct "@type": "messagePaymentSuccessful",
              "@extra": nil,
              invoice_chat_id: nil,
              invoice_message_id: nil,
              currency: nil,
              total_amount: nil,
              is_recurring: nil,
              is_first_recurring: nil,
              invoice_name: nil
  end

  defmodule UpdateChatHasProtectedContent do
    @moduledoc """
    A chat content was allowed or restricted for saving.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |
    | has_protected_content | bool | New value of has_protected_content. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_has_protected_content.html).
    """

    defstruct "@type": "updateChatHasProtectedContent", "@extra": nil, chat_id: nil, has_protected_content: nil
  end

  defmodule ValidatedOrderInfo do
    @moduledoc """
    Contains a temporary identifier of validated order information, which is stored for one hour, and the available shipping options.

    | Name | Type | Description |
    |------|------| ------------|
    | order_info_id | string | Temporary identifier of the order information. |
    | shipping_options | shippingOption | Available shipping options. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1validated_order_info.html).
    """

    defstruct "@type": "validatedOrderInfo", "@extra": nil, order_info_id: nil, shipping_options: nil
  end

  defmodule PageBlockCollage do
    @moduledoc """
    A collage.

    | Name | Type | Description |
    |------|------| ------------|
    | page_blocks | PageBlock | Collage item contents. |
    | caption | pageBlockCaption | Block caption. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_collage.html).
    """

    defstruct "@type": "pageBlockCollage", "@extra": nil, page_blocks: nil, caption: nil
  end

  defmodule MessageForumTopicEdited do
    @moduledoc """
    A forum topic has been edited.

    | Name | Type | Description |
    |------|------| ------------|
    | name | string | If non-empty, the new name of the topic. |
    | edit_icon_custom_emoji_id | bool | True, if icon's custom_emoji_id is changed. |
    | icon_custom_emoji_id | string | New unique identifier of the custom emoji shown on the topic icon; 0 if none. Must be ignored if edit_icon_custom_emoji_id is false. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_forum_topic_edited.html).
    """

    defstruct "@type": "messageForumTopicEdited",
              "@extra": nil,
              name: nil,
              edit_icon_custom_emoji_id: nil,
              icon_custom_emoji_id: nil
  end

  defmodule InputInlineQueryResultVideo do
    @moduledoc """
    Represents a link to a page containing an embedded video player or a video file.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Unique identifier of the query result. |
    | title | string | Title of the result. |
    | description | string | A short description of the result, if known. |
    | thumbnail_url | string | The URL of the video thumbnail (JPEG), if it exists. |
    | video_url | string | URL of the embedded video player or video file. |
    | mime_type | string | MIME type of the content of the video URL, only "text/html" or "video/mp4" are currently supported. |
    | video_width | number | Width of the video. |
    | video_height | number | Height of the video. |
    | video_duration | number | Video duration, in seconds. |
    | reply_markup | ReplyMarkup | The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null. |
    | input_message_content | InputMessageContent | The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageVideo, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_inline_query_result_video.html).
    """

    defstruct "@type": "inputInlineQueryResultVideo",
              "@extra": nil,
              id: nil,
              title: nil,
              description: nil,
              thumbnail_url: nil,
              video_url: nil,
              mime_type: nil,
              video_width: nil,
              video_height: nil,
              video_duration: nil,
              reply_markup: nil,
              input_message_content: nil
  end

  defmodule CanSendStoryResultWeeklyLimitExceeded do
    @moduledoc """
    The weekly limit for the number of posted stories exceeded. The user needs to buy Telegram Premium or wait specified time.

    | Name | Type | Description |
    |------|------| ------------|
    | retry_after | number | Time left before the user can send the next story. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1can_send_story_result_weekly_limit_exceeded.html).
    """

    defstruct "@type": "canSendStoryResultWeeklyLimitExceeded", "@extra": nil, retry_after: nil
  end

  defmodule BotCommandScopeAllPrivateChats do
    @moduledoc """
    A scope covering all private chats.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1bot_command_scope_all_private_chats.html).
    """

    defstruct "@type": "botCommandScopeAllPrivateChats", "@extra": nil
  end

  defmodule InputBackgroundRemote do
    @moduledoc """
    A background from the server.

    | Name | Type | Description |
    |------|------| ------------|
    | background_id | string | The background identifier. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_background_remote.html).
    """

    defstruct "@type": "inputBackgroundRemote", "@extra": nil, background_id: nil
  end

  defmodule UpdatePollAnswer do
    @moduledoc """
    A user changed the answer to a poll; for bots only.

    | Name | Type | Description |
    |------|------| ------------|
    | poll_id | string | Unique poll identifier. |
    | voter_id | MessageSender | Identifier of the message sender that changed the answer to the poll. |
    | option_ids | number | 0-based identifiers of answer options, chosen by the user. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_poll_answer.html).
    """

    defstruct "@type": "updatePollAnswer", "@extra": nil, poll_id: nil, voter_id: nil, option_ids: nil
  end

  defmodule EmailAddressResetStateAvailable do
    @moduledoc """
    Email address can be reset after the given period. Call resetAuthenticationEmailAddress to reset it and allow the user to authorize with a code sent to the user's phone number.

    | Name | Type | Description |
    |------|------| ------------|
    | wait_period | number | Time required to wait before the email address can be reset; 0 if the user is subscribed to Telegram Premium. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1email_address_reset_state_available.html).
    """

    defstruct "@type": "emailAddressResetStateAvailable", "@extra": nil, wait_period: nil
  end

  defmodule FoundPosition do
    @moduledoc """
    Contains 0-based match position.

    | Name | Type | Description |
    |------|------| ------------|
    | position | number | The position of the match. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1found_position.html).
    """

    defstruct "@type": "foundPosition", "@extra": nil, position: nil
  end

  defmodule TMeUrlTypeChatInvite do
    @moduledoc """
    A chat invite link.

    | Name | Type | Description |
    |------|------| ------------|
    | info | chatInviteLinkInfo | Information about the chat invite link. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1t_me_url_type_chat_invite.html).
    """

    defstruct "@type": "tMeUrlTypeChatInvite", "@extra": nil, info: nil
  end

  defmodule FileType do
    @moduledoc """
    This class is an abstract base class. Represents the type of a file.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_file_type.html).
    """

    defstruct "@type": "FileType", "@extra": nil
  end

  defmodule UpdateNewCustomEvent do
    @moduledoc """
    A new incoming event; for bots only.

    | Name | Type | Description |
    |------|------| ------------|
    | event | string | A JSON-serialized event. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_new_custom_event.html).
    """

    defstruct "@type": "updateNewCustomEvent", "@extra": nil, event: nil
  end

  defmodule PublicChatTypeIsLocationBased do
    @moduledoc """
    The chat is public, because it is a location-based supergroup.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1public_chat_type_is_location_based.html).
    """

    defstruct "@type": "publicChatTypeIsLocationBased", "@extra": nil
  end

  defmodule TextEntity do
    @moduledoc """
    Represents a part of the text that needs to be formatted in some unusual way.

    | Name | Type | Description |
    |------|------| ------------|
    | offset | number | Offset of the entity, in UTF-16 code units. |
    | length | number | Length of the entity, in UTF-16 code units. |
    | type | TextEntityType | Type of the entity. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity.html).
    """

    defstruct "@type": "textEntity", "@extra": nil, offset: nil, length: nil, type: nil
  end

  defmodule PassportSuitableElement do
    @moduledoc """
    Contains information about a Telegram Passport element that was requested by a service.

    | Name | Type | Description |
    |------|------| ------------|
    | type | PassportElementType | Type of the element. |
    | is_selfie_required | bool | True, if a selfie is required with the identity document. |
    | is_translation_required | bool | True, if a certified English translation is required with the document. |
    | is_native_name_required | bool | True, if personal details must include the user's name in the language of their country of residence. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_suitable_element.html).
    """

    defstruct "@type": "passportSuitableElement",
              "@extra": nil,
              type: nil,
              is_selfie_required: nil,
              is_translation_required: nil,
              is_native_name_required: nil
  end

  defmodule PageBlockAnchor do
    @moduledoc """
    An invisible anchor on a page, which can be used in a URL to open the page from the specified anchor.

    | Name | Type | Description |
    |------|------| ------------|
    | name | string | Name of the anchor. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_anchor.html).
    """

    defstruct "@type": "pageBlockAnchor", "@extra": nil, name: nil
  end

  defmodule InputStoryAreaTypeSuggestedReaction do
    @moduledoc """
    An area pointing to a suggested reaction.

    | Name | Type | Description |
    |------|------| ------------|
    | reaction_type | ReactionType | Type of the reaction. |
    | is_dark | bool | True, if reaction has a dark background. |
    | is_flipped | bool | True, if reaction corner is flipped. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_story_area_type_suggested_reaction.html).
    """

    defstruct "@type": "inputStoryAreaTypeSuggestedReaction",
              "@extra": nil,
              reaction_type: nil,
              is_dark: nil,
              is_flipped: nil
  end

  defmodule Address do
    @moduledoc """
    Describes an address.

    | Name | Type | Description |
    |------|------| ------------|
    | country_code | string | A two-letter ISO 3166-1 alpha-2 country code. |
    | state | string | State, if applicable. |
    | city | string | City. |
    | street_line1 | string | First line of the address. |
    | street_line2 | string | Second line of the address. |
    | postal_code | string | Address postal code. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1address.html).
    """

    defstruct "@type": "address",
              "@extra": nil,
              country_code: nil,
              state: nil,
              city: nil,
              street_line1: nil,
              street_line2: nil,
              postal_code: nil
  end

  defmodule CheckChatUsernameResultUsernameOccupied do
    @moduledoc """
    The username is occupied.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1check_chat_username_result_username_occupied.html).
    """

    defstruct "@type": "checkChatUsernameResultUsernameOccupied", "@extra": nil
  end

  defmodule CallbackQueryPayloadData do
    @moduledoc """
    The payload for a general callback button.

    | Name | Type | Description |
    |------|------| ------------|
    | data | bytes | Data that was attached to the callback button. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1callback_query_payload_data.html).
    """

    defstruct "@type": "callbackQueryPayloadData", "@extra": nil, data: nil
  end

  defmodule MessageChatSetMessageAutoDeleteTime do
    @moduledoc """
    The auto-delete or self-destruct timer for messages in the chat has been changed.

    | Name | Type | Description |
    |------|------| ------------|
    | message_auto_delete_time | number | New value auto-delete or self-destruct time, in seconds; 0 if disabled. |
    | from_user_id | string | If not 0, a user identifier, which default setting was automatically applied. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_chat_set_message_auto_delete_time.html).
    """

    defstruct "@type": "messageChatSetMessageAutoDeleteTime",
              "@extra": nil,
              message_auto_delete_time: nil,
              from_user_id: nil
  end

  defmodule AutosaveSettingsScopePrivateChats do
    @moduledoc """
    Autosave settings applied to all private chats without chat-specific settings.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1autosave_settings_scope_private_chats.html).
    """

    defstruct "@type": "autosaveSettingsScopePrivateChats", "@extra": nil
  end

  defmodule ChatEventVideoChatMuteNewParticipantsToggled do
    @moduledoc """
    The mute_new_participants setting of a video chat was toggled.

    | Name | Type | Description |
    |------|------| ------------|
    | mute_new_participants | bool | New value of the mute_new_participants setting. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_video_chat_mute_new_participants_toggled.html).
    """

    defstruct "@type": "chatEventVideoChatMuteNewParticipantsToggled", "@extra": nil, mute_new_participants: nil
  end

  defmodule FileTypeSecretThumbnail do
    @moduledoc """
    The file is a thumbnail of a file from a secret chat.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_secret_thumbnail.html).
    """

    defstruct "@type": "fileTypeSecretThumbnail", "@extra": nil
  end

  defmodule InputInlineQueryResultVenue do
    @moduledoc """
    Represents information about a venue.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Unique identifier of the query result. |
    | venue | venue | Venue result. |
    | thumbnail_url | string | URL of the result thumbnail, if it exists. |
    | thumbnail_width | number | Thumbnail width, if known. |
    | thumbnail_height | number | Thumbnail height, if known. |
    | reply_markup | ReplyMarkup | The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null. |
    | input_message_content | InputMessageContent | The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_inline_query_result_venue.html).
    """

    defstruct "@type": "inputInlineQueryResultVenue",
              "@extra": nil,
              id: nil,
              venue: nil,
              thumbnail_url: nil,
              thumbnail_width: nil,
              thumbnail_height: nil,
              reply_markup: nil,
              input_message_content: nil
  end

  defmodule StoryArea do
    @moduledoc """
    Describes a clickable rectangle area on a story media.

    | Name | Type | Description |
    |------|------| ------------|
    | position | storyAreaPosition | Position of the area. |
    | type | StoryAreaType | Type of the area. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1story_area.html).
    """

    defstruct "@type": "storyArea", "@extra": nil, position: nil, type: nil
  end

  defmodule PushMessageContentDocument do
    @moduledoc """
    A document message (a general file).

    | Name | Type | Description |
    |------|------| ------------|
    | document | document | Message content; may be null. |
    | is_pinned | bool | True, if the message is a pinned message with the specified content. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_document.html).
    """

    defstruct "@type": "pushMessageContentDocument", "@extra": nil, document: nil, is_pinned: nil
  end

  defmodule MessageChatAddMembers do
    @moduledoc """
    New chat members were added.

    | Name | Type | Description |
    |------|------| ------------|
    | member_user_ids | string | User identifiers of the new members. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_chat_add_members.html).
    """

    defstruct "@type": "messageChatAddMembers", "@extra": nil, member_user_ids: nil
  end

  defmodule InlineQueryResultsButtonType do
    @moduledoc """
    This class is an abstract base class. Represents a type of a button in results of inline query.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_inline_query_results_button_type.html).
    """

    defstruct "@type": "InlineQueryResultsButtonType", "@extra": nil
  end

  defmodule MessageLink do
    @moduledoc """
    Contains an HTTPS link to a message in a supergroup or channel, or a forum topic.

    | Name | Type | Description |
    |------|------| ------------|
    | link | string | The link. |
    | is_public | bool | True, if the link will work for non-members of the chat. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_link.html).
    """

    defstruct "@type": "messageLink", "@extra": nil, link: nil, is_public: nil
  end

  defmodule CallProblemDistortedVideo do
    @moduledoc """
    The video was distorted.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_problem_distorted_video.html).
    """

    defstruct "@type": "callProblemDistortedVideo", "@extra": nil
  end

  defmodule ChatEventInvitesToggled do
    @moduledoc """
    The can_invite_users permission of a supergroup chat was toggled.

    | Name | Type | Description |
    |------|------| ------------|
    | can_invite_users | bool | New value of can_invite_users permission. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_invites_toggled.html).
    """

    defstruct "@type": "chatEventInvitesToggled", "@extra": nil, can_invite_users: nil
  end

  defmodule ChatAdministratorRights do
    @moduledoc """
    Describes rights of the administrator.

    | Name | Type | Description |
    |------|------| ------------|
    | can_manage_chat | bool | True, if the administrator can get chat event log, get chat boosts in channels, get channel members, report supergroup spam messages, see anonymous administrators in supergroups and ignore slow mode. Implied by any other privilege; applicable to supergroups and channels only. |
    | can_change_info | bool | True, if the administrator can change the chat title, photo, and other settings. |
    | can_post_messages | bool | True, if the administrator can create channel posts or view channel statistics; applicable to channels only. |
    | can_edit_messages | bool | True, if the administrator can edit messages of other users and pin messages; applicable to channels only. |
    | can_delete_messages | bool | True, if the administrator can delete messages of other users. |
    | can_invite_users | bool | True, if the administrator can invite new users to the chat. |
    | can_restrict_members | bool | True, if the administrator can restrict, ban, or unban chat members or view supergroup statistics; always true for channels. |
    | can_pin_messages | bool | True, if the administrator can pin messages; applicable to basic groups and supergroups only. |
    | can_manage_topics | bool | True, if the administrator can manage topics; applicable to forum supergroups only. |
    | can_promote_members | bool | True, if the administrator can add new administrators with a subset of their own privileges or demote administrators that were directly or indirectly promoted by them. |
    | can_manage_video_chats | bool | True, if the administrator can manage video chats. |
    | can_post_stories | bool | True, if the administrator can create new channel stories, or edit and delete posted stories; applicable to channels only. |
    | can_edit_stories | bool | True, if the administrator can edit stories posted by other users, pin stories and access story archive; applicable to channels only. |
    | can_delete_stories | bool | True, if the administrator can delete stories posted by other users; applicable to channels only. |
    | is_anonymous | bool | True, if the administrator isn't shown in the chat member list and sends messages anonymously; applicable to supergroups only. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_administrator_rights.html).
    """

    defstruct "@type": "chatAdministratorRights",
              "@extra": nil,
              can_manage_chat: nil,
              can_change_info: nil,
              can_post_messages: nil,
              can_edit_messages: nil,
              can_delete_messages: nil,
              can_invite_users: nil,
              can_restrict_members: nil,
              can_pin_messages: nil,
              can_manage_topics: nil,
              can_promote_members: nil,
              can_manage_video_chats: nil,
              can_post_stories: nil,
              can_edit_stories: nil,
              can_delete_stories: nil,
              is_anonymous: nil
  end

  defmodule NotificationSounds do
    @moduledoc """
    Contains a list of notification sounds.

    | Name | Type | Description |
    |------|------| ------------|
    | notification_sounds | notificationSound | A list of notification sounds. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1notification_sounds.html).
    """

    defstruct "@type": "notificationSounds", "@extra": nil, notification_sounds: nil
  end

  defmodule InputStoryAreas do
    @moduledoc """
    Contains a list of story areas to be added.

    | Name | Type | Description |
    |------|------| ------------|
    | areas | inputStoryArea | List of 0-10 input story areas. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_story_areas.html).
    """

    defstruct "@type": "inputStoryAreas", "@extra": nil, areas: nil
  end

  defmodule InputPassportElementEmailAddress do
    @moduledoc """
    A Telegram Passport element to be saved containing the user's email address.

    | Name | Type | Description |
    |------|------| ------------|
    | email_address | string | The email address to be saved. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_passport_element_email_address.html).
    """

    defstruct "@type": "inputPassportElementEmailAddress", "@extra": nil, email_address: nil
  end

  defmodule Hashtags do
    @moduledoc """
    Contains a list of hashtags.

    | Name | Type | Description |
    |------|------| ------------|
    | hashtags | string | A list of hashtags. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1hashtags.html).
    """

    defstruct "@type": "hashtags", "@extra": nil, hashtags: nil
  end

  defmodule StoryPrivacySettingsEveryone do
    @moduledoc """
    The story can be viewed by everyone.

    | Name | Type | Description |
    |------|------| ------------|
    | except_user_ids | string | Identifiers of the users that can't see the story; always unknown and empty for non-owned stories. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1story_privacy_settings_everyone.html).
    """

    defstruct "@type": "storyPrivacySettingsEveryone", "@extra": nil, except_user_ids: nil
  end

  defmodule InputMessageGame do
    @moduledoc """
    A message with a game; not supported for channels or secret chats.

    | Name | Type | Description |
    |------|------| ------------|
    | bot_user_id | string | User identifier of the bot that owns the game. |
    | game_short_name | string | Short name of the game. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_game.html).
    """

    defstruct "@type": "inputMessageGame", "@extra": nil, bot_user_id: nil, game_short_name: nil
  end

  defmodule WebApp do
    @moduledoc """
    Describes a Web App. Use getInternalLink with internalLinkTypeWebApp to share the Web App.

    | Name | Type | Description |
    |------|------| ------------|
    | short_name | string | Web App short name. |
    | title | string | Web App title. |
    | description | string | Web App description. |
    | photo | photo | Web App photo. |
    | animation | animation | Web App animation; may be null. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1web_app.html).
    """

    defstruct "@type": "webApp",
              "@extra": nil,
              short_name: nil,
              title: nil,
              description: nil,
              photo: nil,
              animation: nil
  end

  defmodule BackgroundTypeWallpaper do
    @moduledoc """
    A wallpaper in JPEG format.

    | Name | Type | Description |
    |------|------| ------------|
    | is_blurred | bool | True, if the wallpaper must be downscaled to fit in 450x450 square and then box-blurred with radius 12. |
    | is_moving | bool | True, if the background needs to be slightly moved when device is tilted. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1background_type_wallpaper.html).
    """

    defstruct "@type": "backgroundTypeWallpaper", "@extra": nil, is_blurred: nil, is_moving: nil
  end

  defmodule NotificationGroupTypeCalls do
    @moduledoc """
    A group containing notifications of type notificationTypeNewCall.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1notification_group_type_calls.html).
    """

    defstruct "@type": "notificationGroupTypeCalls", "@extra": nil
  end

  defmodule ChatPhotoStickerTypeCustomEmoji do
    @moduledoc """
    Information about the custom emoji, which was used to create the chat photo.

    | Name | Type | Description |
    |------|------| ------------|
    | custom_emoji_id | string | Identifier of the custom emoji. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_photo_sticker_type_custom_emoji.html).
    """

    defstruct "@type": "chatPhotoStickerTypeCustomEmoji", "@extra": nil, custom_emoji_id: nil
  end

  defmodule BotInfo do
    @moduledoc """
    Contains information about a bot.

    | Name | Type | Description |
    |------|------| ------------|
    | short_description | string | The text that is shown on the bot's profile page and is sent together with the link when users share the bot. |
    | description | string | The text shown in the chat with the bot if the chat is empty. |
    | photo | photo | Photo shown in the chat with the bot if the chat is empty; may be null. |
    | animation | animation | Animation shown in the chat with the bot if the chat is empty; may be null. |
    | menu_button | botMenuButton | Information about a button to show instead of the bot commands menu button; may be null if ordinary bot commands menu must be shown. |
    | commands | botCommand | List of the bot commands. |
    | default_group_administrator_rights | chatAdministratorRights | Default administrator rights for adding the bot to basic group and supergroup chats; may be null. |
    | default_channel_administrator_rights | chatAdministratorRights | Default administrator rights for adding the bot to channels; may be null. |
    | edit_commands_link | InternalLinkType | The internal link, which can be used to edit bot commands; may be null. |
    | edit_description_link | InternalLinkType | The internal link, which can be used to edit bot description; may be null. |
    | edit_description_media_link | InternalLinkType | The internal link, which can be used to edit the photo or animation shown in the chat with the bot if the chat is empty; may be null. |
    | edit_settings_link | InternalLinkType | The internal link, which can be used to edit bot settings; may be null. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1bot_info.html).
    """

    defstruct "@type": "botInfo",
              "@extra": nil,
              short_description: nil,
              description: nil,
              photo: nil,
              animation: nil,
              menu_button: nil,
              commands: nil,
              default_group_administrator_rights: nil,
              default_channel_administrator_rights: nil,
              edit_commands_link: nil,
              edit_description_link: nil,
              edit_description_media_link: nil,
              edit_settings_link: nil
  end

  defmodule InputMessageVoiceNote do
    @moduledoc """
    A voice note message.

    | Name | Type | Description |
    |------|------| ------------|
    | voice_note | InputFile | Voice note to be sent. |
    | duration | number | Duration of the voice note, in seconds. |
    | waveform | bytes | Waveform representation of the voice note in 5-bit format. |
    | caption | formattedText | Voice note caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_voice_note.html).
    """

    defstruct "@type": "inputMessageVoiceNote",
              "@extra": nil,
              voice_note: nil,
              duration: nil,
              waveform: nil,
              caption: nil
  end

  defmodule InputMessageDice do
    @moduledoc """
    A dice message.

    | Name | Type | Description |
    |------|------| ------------|
    | emoji | string | Emoji on which the dice throw animation is based. |
    | clear_draft | bool | True, if the chat message draft must be deleted. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_dice.html).
    """

    defstruct "@type": "inputMessageDice", "@extra": nil, emoji: nil, clear_draft: nil
  end

  defmodule SupergroupMembersFilterAdministrators do
    @moduledoc """
    Returns the owner and administrators.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1supergroup_members_filter_administrators.html).
    """

    defstruct "@type": "supergroupMembersFilterAdministrators", "@extra": nil
  end

  defmodule PushMessageContentVideo do
    @moduledoc """
    A video message.

    | Name | Type | Description |
    |------|------| ------------|
    | video | video | Message content; may be null. |
    | caption | string | Video caption. |
    | is_secret | bool | True, if the video is secret. |
    | is_pinned | bool | True, if the message is a pinned message with the specified content. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_video.html).
    """

    defstruct "@type": "pushMessageContentVideo",
              "@extra": nil,
              video: nil,
              caption: nil,
              is_secret: nil,
              is_pinned: nil
  end

  defmodule PremiumFeatureCustomEmoji do
    @moduledoc """
    Allowed to use custom emoji stickers in message texts and captions.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_feature_custom_emoji.html).
    """

    defstruct "@type": "premiumFeatureCustomEmoji", "@extra": nil
  end

  defmodule ThemeSettings do
    @moduledoc """
    Describes theme settings.

    | Name | Type | Description |
    |------|------| ------------|
    | accent_color | number | Theme accent color in ARGB format. |
    | background | background | The background to be used in chats; may be null. |
    | outgoing_message_fill | BackgroundFill | The fill to be used as a background for outgoing messages. |
    | animate_outgoing_message_fill | bool | If true, the freeform gradient fill needs to be animated on every sent message. |
    | outgoing_message_accent_color | number | Accent color of outgoing messages in ARGB format. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1theme_settings.html).
    """

    defstruct "@type": "themeSettings",
              "@extra": nil,
              accent_color: nil,
              background: nil,
              outgoing_message_fill: nil,
              animate_outgoing_message_fill: nil,
              outgoing_message_accent_color: nil
  end

  defmodule InternalLinkTypeInstantView do
    @moduledoc """
    The link must be opened in an Instant View. Call getWebPageInstantView with the given URL to process the link.

    | Name | Type | Description |
    |------|------| ------------|
    | url | string | URL to be passed to getWebPageInstantView. |
    | fallback_url | string | An URL to open if getWebPageInstantView fails. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_instant_view.html).
    """

    defstruct "@type": "internalLinkTypeInstantView", "@extra": nil, url: nil, fallback_url: nil
  end

  defmodule PremiumFeatureRealTimeChatTranslation do
    @moduledoc """
    Allowed to translate chat messages real-time.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_feature_real_time_chat_translation.html).
    """

    defstruct "@type": "premiumFeatureRealTimeChatTranslation", "@extra": nil
  end

  defmodule InputCredentials do
    @moduledoc """
    This class is an abstract base class. Contains information about the payment method chosen by the user.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_input_credentials.html).
    """

    defstruct "@type": "InputCredentials", "@extra": nil
  end

  defmodule Updates do
    @moduledoc """
    Contains a list of updates.

    | Name | Type | Description |
    |------|------| ------------|
    | updates | Update | List of updates. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1updates.html).
    """

    defstruct "@type": "updates", "@extra": nil, updates: nil
  end

  defmodule ChatMembersFilterBanned do
    @moduledoc """
    Returns users banned from the chat; can be used only by administrators in a supergroup or in a channel.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_members_filter_banned.html).
    """

    defstruct "@type": "chatMembersFilterBanned", "@extra": nil
  end

  defmodule PageBlock do
    @moduledoc """
    This class is an abstract base class. Describes a block of an instant view web page.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_page_block.html).
    """

    defstruct "@type": "PageBlock", "@extra": nil
  end

  defmodule ConnectionStateUpdating do
    @moduledoc """
    Downloading data supposed to be received while the application was offline.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1connection_state_updating.html).
    """

    defstruct "@type": "connectionStateUpdating", "@extra": nil
  end

  defmodule NotificationTypeNewMessage do
    @moduledoc """
    New message was received.

    | Name | Type | Description |
    |------|------| ------------|
    | message | message | The message. |
    | show_preview | bool | True, if message content must be displayed in notifications. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1notification_type_new_message.html).
    """

    defstruct "@type": "notificationTypeNewMessage", "@extra": nil, message: nil, show_preview: nil
  end

  defmodule BackgroundFill do
    @moduledoc """
    This class is an abstract base class. Describes a fill of a background.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_background_fill.html).
    """

    defstruct "@type": "BackgroundFill", "@extra": nil
  end

  defmodule PushMessageContentPremiumGiveaway do
    @moduledoc """
    A message with a Telegram Premium giveaway.

    | Name | Type | Description |
    |------|------| ------------|
    | winner_count | number | Number of users which will receive Telegram Premium subscription gift codes; 0 for pinned message. |
    | month_count | number | Number of month the Telegram Premium subscription will be active after code activation; 0 for pinned message. |
    | is_pinned | bool | True, if the message is a pinned message with the specified content. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_premium_giveaway.html).
    """

    defstruct "@type": "pushMessageContentPremiumGiveaway",
              "@extra": nil,
              winner_count: nil,
              month_count: nil,
              is_pinned: nil
  end

  defmodule ReportReasonUnrelatedLocation do
    @moduledoc """
    The location-based chat is unrelated to its stated location.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1report_reason_unrelated_location.html).
    """

    defstruct "@type": "reportReasonUnrelatedLocation", "@extra": nil
  end

  defmodule SessionTypeMac do
    @moduledoc """
    The session is running on a Mac device.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1session_type_mac.html).
    """

    defstruct "@type": "sessionTypeMac", "@extra": nil
  end

  defmodule UserPrivacySettingAllowChatInvites do
    @moduledoc """
    A privacy setting for managing whether the user can be invited to chats.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_privacy_setting_allow_chat_invites.html).
    """

    defstruct "@type": "userPrivacySettingAllowChatInvites", "@extra": nil
  end

  defmodule PassportElementType do
    @moduledoc """
    This class is an abstract base class. Contains the type of a Telegram Passport element.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_passport_element_type.html).
    """

    defstruct "@type": "PassportElementType", "@extra": nil
  end

  defmodule PageBlockAuthorDate do
    @moduledoc """
    The author and publishing date of a page.

    | Name | Type | Description |
    |------|------| ------------|
    | author | RichText | Author. |
    | publish_date | number | Point in time (Unix timestamp) when the article was published; 0 if unknown. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_author_date.html).
    """

    defstruct "@type": "pageBlockAuthorDate", "@extra": nil, author: nil, publish_date: nil
  end

  defmodule Users do
    @moduledoc """
    Represents a list of users.

    | Name | Type | Description |
    |------|------| ------------|
    | total_count | number | Approximate total number of users found. |
    | user_ids | string | A list of user identifiers. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1users.html).
    """

    defstruct "@type": "users", "@extra": nil, total_count: nil, user_ids: nil
  end

  defmodule StoryOrigin do
    @moduledoc """
    This class is an abstract base class. Contains information about the origin of a story that was reposted.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_story_origin.html).
    """

    defstruct "@type": "StoryOrigin", "@extra": nil
  end

  defmodule PushMessageContentChatAddMembers do
    @moduledoc """
    New chat members were invited to a group.

    | Name | Type | Description |
    |------|------| ------------|
    | member_name | string | Name of the added member. |
    | is_current_user | bool | True, if the current user was added to the group. |
    | is_returned | bool | True, if the user has returned to the group themselves. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_chat_add_members.html).
    """

    defstruct "@type": "pushMessageContentChatAddMembers",
              "@extra": nil,
              member_name: nil,
              is_current_user: nil,
              is_returned: nil
  end

  defmodule MessageVideoChatStarted do
    @moduledoc """
    A newly created video chat.

    | Name | Type | Description |
    |------|------| ------------|
    | group_call_id | number | Identifier of the video chat. The video chat can be received through the method getGroupCall. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_video_chat_started.html).
    """

    defstruct "@type": "messageVideoChatStarted", "@extra": nil, group_call_id: nil
  end

  defmodule UnreadReaction do
    @moduledoc """
    Contains information about an unread reaction to a message.

    | Name | Type | Description |
    |------|------| ------------|
    | type | ReactionType | Type of the reaction. |
    | sender_id | MessageSender | Identifier of the sender, added the reaction. |
    | is_big | bool | True, if the reaction was added with a big animation. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1unread_reaction.html).
    """

    defstruct "@type": "unreadReaction", "@extra": nil, type: nil, sender_id: nil, is_big: nil
  end

  defmodule NotificationTypeNewSecretChat do
    @moduledoc """
    New secret chat was created.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1notification_type_new_secret_chat.html).
    """

    defstruct "@type": "notificationTypeNewSecretChat", "@extra": nil
  end

  defmodule AuthenticationCodeTypeFirebaseAndroid do
    @moduledoc """
    An authentication code is delivered via Firebase Authentication to the official Android application.

    | Name | Type | Description |
    |------|------| ------------|
    | nonce | bytes | Nonce to pass to the SafetyNet Attestation API. |
    | length | number | Length of the code. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authentication_code_type_firebase_android.html).
    """

    defstruct "@type": "authenticationCodeTypeFirebaseAndroid", "@extra": nil, nonce: nil, length: nil
  end

  defmodule MessageReplyToStory do
    @moduledoc """
    Describes a story replied by a given message.

    | Name | Type | Description |
    |------|------| ------------|
    | story_sender_chat_id | string | The identifier of the sender of the story. |
    | story_id | number | The identifier of the story. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_reply_to_story.html).
    """

    defstruct "@type": "messageReplyToStory", "@extra": nil, story_sender_chat_id: nil, story_id: nil
  end

  defmodule TextParseMode do
    @moduledoc """
    This class is an abstract base class. Describes the way the text needs to be parsed for text entities.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_text_parse_mode.html).
    """

    defstruct "@type": "TextParseMode", "@extra": nil
  end

  defmodule UpdateChatPendingJoinRequests do
    @moduledoc """
    The chat pending join requests were changed.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |
    | pending_join_requests | chatJoinRequestsInfo | The new data about pending join requests; may be null. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_pending_join_requests.html).
    """

    defstruct "@type": "updateChatPendingJoinRequests", "@extra": nil, chat_id: nil, pending_join_requests: nil
  end

  defmodule ChatTypePrivate do
    @moduledoc """
    An ordinary chat with a user.

    | Name | Type | Description |
    |------|------| ------------|
    | user_id | string | User identifier. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_type_private.html).
    """

    defstruct "@type": "chatTypePrivate", "@extra": nil, user_id: nil
  end

  defmodule MessageChatSetBackground do
    @moduledoc """
    A new background was set in the chat.

    | Name | Type | Description |
    |------|------| ------------|
    | old_background_message_id | string | Identifier of the message with a previously set same background; 0 if none. Can be an identifier of a deleted message. |
    | background | chatBackground | The new background. |
    | only_for_self | bool | True, if the background was set only for self. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_chat_set_background.html).
    """

    defstruct "@type": "messageChatSetBackground",
              "@extra": nil,
              old_background_message_id: nil,
              background: nil,
              only_for_self: nil
  end

  defmodule NotificationTypeNewPushMessage do
    @moduledoc """
    New message was received through a push notification.

    | Name | Type | Description |
    |------|------| ------------|
    | message_id | string | The message identifier. The message will not be available in the chat history, but the identifier can be used in viewMessages, or as a message to be replied in the same chat. |
    | sender_id | MessageSender | Identifier of the sender of the message. Corresponding user or chat may be inaccessible. |
    | sender_name | string | Name of the sender. |
    | is_outgoing | bool | True, if the message is outgoing. |
    | content | PushMessageContent | Push message content. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1notification_type_new_push_message.html).
    """

    defstruct "@type": "notificationTypeNewPushMessage",
              "@extra": nil,
              message_id: nil,
              sender_id: nil,
              sender_name: nil,
              is_outgoing: nil,
              content: nil
  end

  defmodule UpdateDefaultReactionType do
    @moduledoc """
    The type of default reaction has changed.

    | Name | Type | Description |
    |------|------| ------------|
    | reaction_type | ReactionType | The new type of the default reaction. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_default_reaction_type.html).
    """

    defstruct "@type": "updateDefaultReactionType", "@extra": nil, reaction_type: nil
  end

  defmodule ChatSourceMtprotoProxy do
    @moduledoc """
    The chat is sponsored by the user's MTProxy server.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_source_mtproto_proxy.html).
    """

    defstruct "@type": "chatSourceMtprotoProxy", "@extra": nil
  end

  defmodule MessageWebAppDataReceived do
    @moduledoc """
    Data from a Web App has been received; for bots only.

    | Name | Type | Description |
    |------|------| ------------|
    | button_text | string | Text of the keyboardButtonTypeWebApp button, which opened the Web App. |
    | data | string | The data. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_web_app_data_received.html).
    """

    defstruct "@type": "messageWebAppDataReceived", "@extra": nil, button_text: nil, data: nil
  end

  defmodule TopChatCategoryForwardChats do
    @moduledoc """
    A category containing frequently used chats used to forward messages.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1top_chat_category_forward_chats.html).
    """

    defstruct "@type": "topChatCategoryForwardChats", "@extra": nil
  end

  defmodule InputInlineQueryResult do
    @moduledoc """
    This class is an abstract base class. Represents a single result of an inline query; for bots only.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_input_inline_query_result.html).
    """

    defstruct "@type": "InputInlineQueryResult", "@extra": nil
  end

  defmodule PremiumGiftCodeInfo do
    @moduledoc """
    Contains information about a Telegram Premium gift code.

    | Name | Type | Description |
    |------|------| ------------|
    | creator_id | MessageSender | Identifier of a chat or a user that created the gift code. |
    | creation_date | number | Point in time (Unix timestamp) when the code was created. |
    | is_from_giveaway | bool | True, if the gift code was created for a giveaway. |
    | giveaway_message_id | string | Identifier of the corresponding giveaway message in the creator_id chat; can be 0 or an identifier of a deleted message. |
    | month_count | number | Number of month the Telegram Premium subscription will be active after code activation. |
    | user_id | string | Identifier of a user for which the code was created; 0 if none. |
    | use_date | number | Point in time (Unix timestamp) when the code was activated; 0 if none. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_gift_code_info.html).
    """

    defstruct "@type": "premiumGiftCodeInfo",
              "@extra": nil,
              creator_id: nil,
              creation_date: nil,
              is_from_giveaway: nil,
              giveaway_message_id: nil,
              month_count: nil,
              user_id: nil,
              use_date: nil
  end

  defmodule PassportElementRentalAgreement do
    @moduledoc """
    A Telegram Passport element containing the user's rental agreement.

    | Name | Type | Description |
    |------|------| ------------|
    | rental_agreement | personalDocument | Rental agreement. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_rental_agreement.html).
    """

    defstruct "@type": "passportElementRentalAgreement", "@extra": nil, rental_agreement: nil
  end

  defmodule PushMessageContentChatJoinByLink do
    @moduledoc """
    A new member joined the chat via an invite link.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_chat_join_by_link.html).
    """

    defstruct "@type": "pushMessageContentChatJoinByLink", "@extra": nil
  end

  defmodule LogStream do
    @moduledoc """
    This class is an abstract base class. Describes a stream to which TDLib internal log is written.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_log_stream.html).
    """

    defstruct "@type": "LogStream", "@extra": nil
  end

  defmodule StickerFullType do
    @moduledoc """
    This class is an abstract base class. Contains full information about sticker type.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_sticker_full_type.html).
    """

    defstruct "@type": "StickerFullType", "@extra": nil
  end

  defmodule InternalLinkTypeSideMenuBot do
    @moduledoc """
    The link is a link to a bot, which can be installed to the side menu. Call searchPublicChat with the given bot username, check that the user is a bot and can be added to attachment menu. Then, use getAttachmentMenuBot to receive information about the bot. If the bot isn't added to side menu, then show a disclaimer about Mini Apps being a third-party apps, ask the user to accept their Terms of service and confirm adding the bot to side and attachment menu. If the user accept the terms and confirms adding, then use toggleBotIsAddedToAttachmentMenu to add the bot. If the bot is added to side menu, then use getWebAppUrl with the given URL.

    | Name | Type | Description |
    |------|------| ------------|
    | bot_username | string | Username of the bot. |
    | url | string | URL to be passed to getWebAppUrl. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_side_menu_bot.html).
    """

    defstruct "@type": "internalLinkTypeSideMenuBot", "@extra": nil, bot_username: nil, url: nil
  end

  defmodule KeyboardButtonTypeRequestUser do
    @moduledoc """
    A button that requests a user to be shared by the current user; available only in private chats. Use the method shareUserWithBot to complete the request.

    | Name | Type | Description |
    |------|------| ------------|
    | id | number | Unique button identifier. |
    | restrict_user_is_bot | bool | True, if the shared user must or must not be a bot. |
    | user_is_bot | bool | True, if the shared user must be a bot; otherwise, the shared user must no be a bot. Ignored if restrict_user_is_bot is false. |
    | restrict_user_is_premium | bool | True, if the shared user must or must not be a Telegram Premium user. |
    | user_is_premium | bool | True, if the shared user must be a Telegram Premium user; otherwise, the shared user must no be a Telegram Premium user. Ignored if restrict_user_is_premium is false. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1keyboard_button_type_request_user.html).
    """

    defstruct "@type": "keyboardButtonTypeRequestUser",
              "@extra": nil,
              id: nil,
              restrict_user_is_bot: nil,
              user_is_bot: nil,
              restrict_user_is_premium: nil,
              user_is_premium: nil
  end

  defmodule InputInvoiceTelegram do
    @moduledoc """
    An invoice for a payment toward Telegram; must not be used in the in-store apps.

    | Name | Type | Description |
    |------|------| ------------|
    | purpose | TelegramPaymentPurpose | Transaction purpose. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_invoice_telegram.html).
    """

    defstruct "@type": "inputInvoiceTelegram", "@extra": nil, purpose: nil
  end

  defmodule ChatStatisticsInviterInfo do
    @moduledoc """
    Contains statistics about number of new members invited by a user.

    | Name | Type | Description |
    |------|------| ------------|
    | user_id | string | User identifier. |
    | added_member_count | number | Number of new members invited by the user. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_statistics_inviter_info.html).
    """

    defstruct "@type": "chatStatisticsInviterInfo", "@extra": nil, user_id: nil, added_member_count: nil
  end

  defmodule PremiumFeatureBackgroundForBoth do
    @moduledoc """
    The ability to set private chat background for both users.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_feature_background_for_both.html).
    """

    defstruct "@type": "premiumFeatureBackgroundForBoth", "@extra": nil
  end

  defmodule Notification do
    @moduledoc """
    Contains information about a notification.

    | Name | Type | Description |
    |------|------| ------------|
    | id | number | Unique persistent identifier of this notification. |
    | date | number | Notification date. |
    | is_silent | bool | True, if the notification was explicitly sent without sound. |
    | type | NotificationType | Notification type. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1notification.html).
    """

    defstruct "@type": "notification", "@extra": nil, id: nil, date: nil, is_silent: nil, type: nil
  end

  defmodule StoryPrivacySettingsCloseFriends do
    @moduledoc """
    The story can be viewed by all close friends.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1story_privacy_settings_close_friends.html).
    """

    defstruct "@type": "storyPrivacySettingsCloseFriends", "@extra": nil
  end

  defmodule ProxyTypeSocks5 do
    @moduledoc """
    A SOCKS5 proxy server.

    | Name | Type | Description |
    |------|------| ------------|
    | username | string | Username for logging in; may be empty. |
    | password | string | Password for logging in; may be empty. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1proxy_type_socks5.html).
    """

    defstruct "@type": "proxyTypeSocks5", "@extra": nil, username: nil, password: nil
  end

  defmodule UpdateFileGenerationStart do
    @moduledoc """
    The file generation process needs to be started by the application.

    | Name | Type | Description |
    |------|------| ------------|
    | generation_id | string | Unique identifier for the generation process. |
    | original_path | string | The path to a file from which a new file is generated; may be empty. |
    | destination_path | string | The path to a file that must be created and where the new file is generated. |
    | conversion | string | String specifying the conversion applied to the original file. If conversion is "#url#" than original_path contains an HTTP/HTTPS URL of a file, which must be downloaded by the application. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_file_generation_start.html).
    """

    defstruct "@type": "updateFileGenerationStart",
              "@extra": nil,
              generation_id: nil,
              original_path: nil,
              destination_path: nil,
              conversion: nil
  end

  defmodule AuthorizationStateWaitTdlibParameters do
    @moduledoc """
    Initialization parameters are needed. Call setTdlibParameters to provide them.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authorization_state_wait_tdlib_parameters.html).
    """

    defstruct "@type": "authorizationStateWaitTdlibParameters", "@extra": nil
  end

  defmodule RichTextAnchorLink do
    @moduledoc """
    A link to an anchor on the same web page.

    | Name | Type | Description |
    |------|------| ------------|
    | text | RichText | The link text. |
    | anchor_name | string | The anchor name. If the name is empty, the link must bring back to top. |
    | url | string | An HTTP URL, opening the anchor. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1rich_text_anchor_link.html).
    """

    defstruct "@type": "richTextAnchorLink", "@extra": nil, text: nil, anchor_name: nil, url: nil
  end

  defmodule StickerSetInfo do
    @moduledoc """
    Represents short information about a sticker set.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Identifier of the sticker set. |
    | title | string | Title of the sticker set. |
    | name | string | Name of the sticker set. |
    | thumbnail | thumbnail | Sticker set thumbnail in WEBP, TGS, or WEBM format with width and height 100; may be null. |
    | thumbnail_outline | closedVectorPath | Sticker set thumbnail's outline represented as a list of closed vector paths; may be empty. The coordinate system origin is in the upper-left corner. |
    | is_installed | bool | True, if the sticker set has been installed by the current user. |
    | is_archived | bool | True, if the sticker set has been archived. A sticker set can't be installed and archived simultaneously. |
    | is_official | bool | True, if the sticker set is official. |
    | sticker_format | StickerFormat | Format of the stickers in the set. |
    | sticker_type | StickerType | Type of the stickers in the set. |
    | needs_repainting | bool | True, if stickers in the sticker set are custom emoji that must be repainted; for custom emoji sticker sets only. |
    | is_viewed | bool | True for already viewed trending sticker sets. |
    | size | number | Total number of stickers in the set. |
    | covers | sticker | Up to the first 5 stickers from the set, depending on the context. If the application needs more stickers the full sticker set needs to be requested. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sticker_set_info.html).
    """

    defstruct "@type": "stickerSetInfo",
              "@extra": nil,
              id: nil,
              title: nil,
              name: nil,
              thumbnail: nil,
              thumbnail_outline: nil,
              is_installed: nil,
              is_archived: nil,
              is_official: nil,
              sticker_format: nil,
              sticker_type: nil,
              needs_repainting: nil,
              is_viewed: nil,
              size: nil,
              covers: nil
  end

  defmodule RichTextReference do
    @moduledoc """
    A reference to a richTexts object on the same web page.

    | Name | Type | Description |
    |------|------| ------------|
    | text | RichText | The text. |
    | anchor_name | string | The name of a richTextAnchor object, which is the first element of the target richTexts object. |
    | url | string | An HTTP URL, opening the reference. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1rich_text_reference.html).
    """

    defstruct "@type": "richTextReference", "@extra": nil, text: nil, anchor_name: nil, url: nil
  end

  defmodule ProfilePhoto do
    @moduledoc """
    Describes a user profile photo.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Photo identifier; 0 for an empty photo. Can be used to find a photo in a list of user profile photos. |
    | small | file | A small (160x160) user profile photo. The file can be downloaded only before the photo is changed. |
    | big | file | A big (640x640) user profile photo. The file can be downloaded only before the photo is changed. |
    | minithumbnail | minithumbnail | User profile photo minithumbnail; may be null. |
    | has_animation | bool | True, if the photo has animated variant. |
    | is_personal | bool | True, if the photo is visible only for the current user. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1profile_photo.html).
    """

    defstruct "@type": "profilePhoto",
              "@extra": nil,
              id: nil,
              small: nil,
              big: nil,
              minithumbnail: nil,
              has_animation: nil,
              is_personal: nil
  end

  defmodule UpdateSelectedBackground do
    @moduledoc """
    The selected background has changed.

    | Name | Type | Description |
    |------|------| ------------|
    | for_dark_theme | bool | True, if background for dark theme has changed. |
    | background | background | The new selected background; may be null. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_selected_background.html).
    """

    defstruct "@type": "updateSelectedBackground", "@extra": nil, for_dark_theme: nil, background: nil
  end

  defmodule MessageReaction do
    @moduledoc """
    Contains information about a reaction to a message.

    | Name | Type | Description |
    |------|------| ------------|
    | type | ReactionType | Type of the reaction. |
    | total_count | number | Number of times the reaction was added. |
    | is_chosen | bool | True, if the reaction is chosen by the current user. |
    | used_sender_id | MessageSender | Identifier of the message sender used by the current user to add the reaction; may be null if unknown or the reaction isn't chosen. |
    | recent_sender_ids | MessageSender | Identifiers of at most 3 recent message senders, added the reaction; available in private, basic group and supergroup chats. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_reaction.html).
    """

    defstruct "@type": "messageReaction",
              "@extra": nil,
              type: nil,
              total_count: nil,
              is_chosen: nil,
              used_sender_id: nil,
              recent_sender_ids: nil
  end

  defmodule StoryPublicForwards do
    @moduledoc """
    Represents a list of public forwards and reposts of a story.

    | Name | Type | Description |
    |------|------| ------------|
    | total_count | number | Approximate total number of messages and stories found. |
    | forwards | StoryPublicForward | List of found public forwards and reposts. |
    | next_offset | string | The offset for the next request. If empty, then there are no more results. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1story_public_forwards.html).
    """

    defstruct "@type": "storyPublicForwards", "@extra": nil, total_count: nil, forwards: nil, next_offset: nil
  end

  defmodule ChatJoinRequests do
    @moduledoc """
    Contains a list of requests to join a chat.

    | Name | Type | Description |
    |------|------| ------------|
    | total_count | number | Approximate total number of requests found. |
    | requests | chatJoinRequest | List of the requests. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_join_requests.html).
    """

    defstruct "@type": "chatJoinRequests", "@extra": nil, total_count: nil, requests: nil
  end

  defmodule TextEntityTypeUnderline do
    @moduledoc """
    An underlined text.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_underline.html).
    """

    defstruct "@type": "textEntityTypeUnderline", "@extra": nil
  end

  defmodule Story do
    @moduledoc """
    Represents a story.

    | Name | Type | Description |
    |------|------| ------------|
    | id | number | Unique story identifier among stories of the given sender. |
    | sender_chat_id | string | Identifier of the chat that posted the story. |
    | date | number | Point in time (Unix timestamp) when the story was published. |
    | is_being_sent | bool | True, if the story is being sent by the current user. |
    | is_being_edited | bool | True, if the story is being edited by the current user. |
    | is_edited | bool | True, if the story was edited. |
    | is_pinned | bool | True, if the story is saved in the sender's profile and will be available there after expiration. |
    | is_visible_only_for_self | bool | True, if the story is visible only for the current user. |
    | can_be_deleted | bool | True, if the story can be deleted. |
    | can_be_edited | bool | True, if the story can be edited. |
    | can_be_forwarded | bool | True, if the story can be forwarded as a message. Otherwise, screenshots and saving of the story content must be also forbidden. |
    | can_be_replied | bool | True, if the story can be replied in the chat with the story sender. |
    | can_toggle_is_pinned | bool | True, if the story's is_pinned value can be changed. |
    | can_get_statistics | bool | True, if the story statistics are available through getStoryStatistics. |
    | can_get_viewers | bool | True, if users viewed the story can be received through getStoryViewers. |
    | has_expired_viewers | bool | True, if users viewed the story can't be received, because the story has expired more than getOption("story_viewers_expiration_delay") seconds ago. |
    | repost_info | storyRepostInfo | Information about the original story; may be null if the story wasn't reposted. |
    | interaction_info | storyInteractionInfo | Information about interactions with the story; may be null if the story isn't owned or there were no interactions. |
    | chosen_reaction_type | ReactionType | Type of the chosen reaction; may be null if none. |
    | privacy_settings | StoryPrivacySettings | Privacy rules affecting story visibility; may be approximate for non-owned stories. |
    | content | StoryContent | Content of the story. |
    | areas | storyArea | Clickable areas to be shown on the story content. |
    | caption | formattedText | Caption of the story. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1story.html).
    """

    defstruct "@type": "story",
              "@extra": nil,
              id: nil,
              sender_chat_id: nil,
              date: nil,
              is_being_sent: nil,
              is_being_edited: nil,
              is_edited: nil,
              is_pinned: nil,
              is_visible_only_for_self: nil,
              can_be_deleted: nil,
              can_be_edited: nil,
              can_be_forwarded: nil,
              can_be_replied: nil,
              can_toggle_is_pinned: nil,
              can_get_statistics: nil,
              can_get_viewers: nil,
              has_expired_viewers: nil,
              repost_info: nil,
              interaction_info: nil,
              chosen_reaction_type: nil,
              privacy_settings: nil,
              content: nil,
              areas: nil,
              caption: nil
  end

  defmodule ChatBoostStatus do
    @moduledoc """
    Describes current boost status of a chat.

    | Name | Type | Description |
    |------|------| ------------|
    | boost_url | string | An HTTP URL, which can be used to boost the chat. |
    | applied_slot_ids | number | Identifiers of boost slots of the current user applied to the chat. |
    | level | number | Current boost level of the chat. |
    | gift_code_boost_count | number | The number of boosts received by the chat from created Telegram Premium gift codes and giveaways; always 0 if the current user isn't an administrator in the chat. |
    | boost_count | number | The number of boosts received by the chat. |
    | current_level_boost_count | number | The number of boosts added to reach the current level. |
    | next_level_boost_count | number | The number of boosts needed to reach the next level; 0 if the next level isn't available. |
    | premium_member_count | number | Approximate number of Telegram Premium subscribers joined the chat; always 0 if the current user isn't an administrator in the chat. |
    | premium_member_percentage | double | A percentage of Telegram Premium subscribers joined the chat; always 0 if the current user isn't an administrator in the chat. |
    | prepaid_giveaways | prepaidPremiumGiveaway | The list of prepaid giveaways available for the chat; only for chat administrators. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_boost_status.html).
    """

    defstruct "@type": "chatBoostStatus",
              "@extra": nil,
              boost_url: nil,
              applied_slot_ids: nil,
              level: nil,
              gift_code_boost_count: nil,
              boost_count: nil,
              current_level_boost_count: nil,
              next_level_boost_count: nil,
              premium_member_count: nil,
              premium_member_percentage: nil,
              prepaid_giveaways: nil
  end

  defmodule ChatEventAccentColorChanged do
    @moduledoc """
    The chat accent color was changed.

    | Name | Type | Description |
    |------|------| ------------|
    | old_accent_color_id | number | Previous identifier of chat accent color. |
    | new_accent_color_id | number | New identifier of chat accent color. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_accent_color_changed.html).
    """

    defstruct "@type": "chatEventAccentColorChanged", "@extra": nil, old_accent_color_id: nil, new_accent_color_id: nil
  end

  defmodule InternalLinkTypeBotAddToChannel do
    @moduledoc """
    The link is a link to a Telegram bot, which is supposed to be added to a channel chat as an administrator. Call searchPublicChat with the given bot username and check that the user is a bot, ask the current user to select a channel chat to add the bot to as an administrator. Then, call getChatMember to receive the current bot rights in the chat and if the bot already is an administrator, check that the current user can edit its administrator rights and combine received rights with the requested administrator rights. Then, show confirmation box to the user, and call setChatMemberStatus with the chosen chat and confirmed rights.

    | Name | Type | Description |
    |------|------| ------------|
    | bot_username | string | Username of the bot. |
    | administrator_rights | chatAdministratorRights | Expected administrator rights for the bot. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_bot_add_to_channel.html).
    """

    defstruct "@type": "internalLinkTypeBotAddToChannel", "@extra": nil, bot_username: nil, administrator_rights: nil
  end

  defmodule UserPrivacySetting do
    @moduledoc """
    This class is an abstract base class. Describes available user privacy settings.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_user_privacy_setting.html).
    """

    defstruct "@type": "UserPrivacySetting", "@extra": nil
  end

  defmodule PushMessageContentText do
    @moduledoc """
    A text message.

    | Name | Type | Description |
    |------|------| ------------|
    | text | string | Message text. |
    | is_pinned | bool | True, if the message is a pinned message with the specified content. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_text.html).
    """

    defstruct "@type": "pushMessageContentText", "@extra": nil, text: nil, is_pinned: nil
  end

  defmodule MessageSourceChatList do
    @moduledoc """
    The message is from a chat list or a forum topic list.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_source_chat_list.html).
    """

    defstruct "@type": "messageSourceChatList", "@extra": nil
  end

  defmodule MessageChatChangeTitle do
    @moduledoc """
    An updated chat title.

    | Name | Type | Description |
    |------|------| ------------|
    | title | string | New chat title. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_chat_change_title.html).
    """

    defstruct "@type": "messageChatChangeTitle", "@extra": nil, title: nil
  end

  defmodule NetworkType do
    @moduledoc """
    This class is an abstract base class. Represents the type of a network.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_network_type.html).
    """

    defstruct "@type": "NetworkType", "@extra": nil
  end

  defmodule NetworkStatistics do
    @moduledoc """
    A full list of available network statistic entries.

    | Name | Type | Description |
    |------|------| ------------|
    | since_date | number | Point in time (Unix timestamp) from which the statistics are collected. |
    | entries | NetworkStatisticsEntry | Network statistics entries. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1network_statistics.html).
    """

    defstruct "@type": "networkStatistics", "@extra": nil, since_date: nil, entries: nil
  end

  defmodule AddedReactions do
    @moduledoc """
    Represents a list of reactions added to a message.

    | Name | Type | Description |
    |------|------| ------------|
    | total_count | number | The total number of found reactions. |
    | reactions | addedReaction | The list of added reactions. |
    | next_offset | string | The offset for the next request. If empty, then there are no more results. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1added_reactions.html).
    """

    defstruct "@type": "addedReactions", "@extra": nil, total_count: nil, reactions: nil, next_offset: nil
  end

  defmodule LogStreamEmpty do
    @moduledoc """
    The log is written nowhere.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1log_stream_empty.html).
    """

    defstruct "@type": "logStreamEmpty", "@extra": nil
  end

  defmodule FilePart do
    @moduledoc """
    Contains a part of a file.

    | Name | Type | Description |
    |------|------| ------------|
    | data | bytes | File bytes. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_part.html).
    """

    defstruct "@type": "filePart", "@extra": nil, data: nil
  end

  defmodule PremiumLimitTypeSupergroupCount do
    @moduledoc """
    The maximum number of joined supergroups and channels.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_limit_type_supergroup_count.html).
    """

    defstruct "@type": "premiumLimitTypeSupergroupCount", "@extra": nil
  end

  defmodule MaskPointEyes do
    @moduledoc """
    The mask is placed relatively to the eyes.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1mask_point_eyes.html).
    """

    defstruct "@type": "maskPointEyes", "@extra": nil
  end

  defmodule PremiumStoryFeaturePermanentViewsHistory do
    @moduledoc """
    The ability to check who opened the current user's stories after they expire.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_story_feature_permanent_views_history.html).
    """

    defstruct "@type": "premiumStoryFeaturePermanentViewsHistory", "@extra": nil
  end

  defmodule PremiumLimitTypeActiveStoryCount do
    @moduledoc """
    The maximum number of active stories.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_limit_type_active_story_count.html).
    """

    defstruct "@type": "premiumLimitTypeActiveStoryCount", "@extra": nil
  end

  defmodule ChatActionUploadingVideo do
    @moduledoc """
    The user is uploading a video.

    | Name | Type | Description |
    |------|------| ------------|
    | progress | number | Upload progress, as a percentage. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_uploading_video.html).
    """

    defstruct "@type": "chatActionUploadingVideo", "@extra": nil, progress: nil
  end

  defmodule InternalLinkTypeWebApp do
    @moduledoc """
    The link is a link to a Web App. Call searchPublicChat with the given bot username, check that the user is a bot, then call searchWebApp with the received bot and the given web_app_short_name. Process received foundWebApp by showing a confirmation dialog if needed. If the bot can be added to attachment or side menu, but isn't added yet, then show a disclaimer about Mini Apps being a third-party apps instead of the dialog and ask the user to accept their Terms of service. If the user accept the terms and confirms adding, then use toggleBotIsAddedToAttachmentMenu to add the bot. Then, call getWebAppLinkUrl and open the returned URL as a Web App.

    | Name | Type | Description |
    |------|------| ------------|
    | bot_username | string | Username of the bot that owns the Web App. |
    | web_app_short_name | string | Short name of the Web App. |
    | start_parameter | string | Start parameter to be passed to getWebAppLinkUrl. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_web_app.html).
    """

    defstruct "@type": "internalLinkTypeWebApp",
              "@extra": nil,
              bot_username: nil,
              web_app_short_name: nil,
              start_parameter: nil
  end

  defmodule MessageForumTopicIsHiddenToggled do
    @moduledoc """
    A General forum topic has been hidden or unhidden.

    | Name | Type | Description |
    |------|------| ------------|
    | is_hidden | bool | True, if the topic was hidden; otherwise, the topic was unhidden. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_forum_topic_is_hidden_toggled.html).
    """

    defstruct "@type": "messageForumTopicIsHiddenToggled", "@extra": nil, is_hidden: nil
  end

  defmodule ChatEventAvailableReactionsChanged do
    @moduledoc """
    The chat available reactions were changed.

    | Name | Type | Description |
    |------|------| ------------|
    | old_available_reactions | ChatAvailableReactions | Previous chat available reactions. |
    | new_available_reactions | ChatAvailableReactions | New chat available reactions. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_available_reactions_changed.html).
    """

    defstruct "@type": "chatEventAvailableReactionsChanged",
              "@extra": nil,
              old_available_reactions: nil,
              new_available_reactions: nil
  end

  defmodule ChatEventMemberPromoted do
    @moduledoc """
    A chat member has gained/lost administrator status, or the list of their administrator privileges has changed.

    | Name | Type | Description |
    |------|------| ------------|
    | user_id | string | Affected chat member user identifier. |
    | old_status | ChatMemberStatus | Previous status of the chat member. |
    | new_status | ChatMemberStatus | New status of the chat member. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_member_promoted.html).
    """

    defstruct "@type": "chatEventMemberPromoted", "@extra": nil, user_id: nil, old_status: nil, new_status: nil
  end

  defmodule ChatActionRecordingVideoNote do
    @moduledoc """
    The user is recording a video note.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_recording_video_note.html).
    """

    defstruct "@type": "chatActionRecordingVideoNote", "@extra": nil
  end

  defmodule UpdateSavedAnimations do
    @moduledoc """
    The list of saved animations was updated.

    | Name | Type | Description |
    |------|------| ------------|
    | animation_ids | number | The new list of file identifiers of saved animations. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_saved_animations.html).
    """

    defstruct "@type": "updateSavedAnimations", "@extra": nil, animation_ids: nil
  end

  defmodule TemporaryPasswordState do
    @moduledoc """
    Returns information about the availability of a temporary password, which can be used for payments.

    | Name | Type | Description |
    |------|------| ------------|
    | has_password | bool | True, if a temporary password is available. |
    | valid_for | number | Time left before the temporary password expires, in seconds. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1temporary_password_state.html).
    """

    defstruct "@type": "temporaryPasswordState", "@extra": nil, has_password: nil, valid_for: nil
  end

  defmodule UpdateUnreadChatCount do
    @moduledoc """
    Number of unread chats, i.e. with unread messages or marked as unread, has changed. This update is sent only if the message database is used.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_list | ChatList | The chat list with changed number of unread messages. |
    | total_count | number | Approximate total number of chats in the chat list. |
    | unread_count | number | Total number of unread chats. |
    | unread_unmuted_count | number | Total number of unread unmuted chats. |
    | marked_as_unread_count | number | Total number of chats marked as unread. |
    | marked_as_unread_unmuted_count | number | Total number of unmuted chats marked as unread. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_unread_chat_count.html).
    """

    defstruct "@type": "updateUnreadChatCount",
              "@extra": nil,
              chat_list: nil,
              total_count: nil,
              unread_count: nil,
              unread_unmuted_count: nil,
              marked_as_unread_count: nil,
              marked_as_unread_unmuted_count: nil
  end

  defmodule PollType do
    @moduledoc """
    This class is an abstract base class. Describes the type of a poll.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_poll_type.html).
    """

    defstruct "@type": "PollType", "@extra": nil
  end

  defmodule PushMessageContentVoiceNote do
    @moduledoc """
    A voice note message.

    | Name | Type | Description |
    |------|------| ------------|
    | voice_note | voiceNote | Message content; may be null. |
    | is_pinned | bool | True, if the message is a pinned message with the specified content. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_voice_note.html).
    """

    defstruct "@type": "pushMessageContentVoiceNote", "@extra": nil, voice_note: nil, is_pinned: nil
  end

  defmodule InlineQueryResultLocation do
    @moduledoc """
    Represents a point on the map.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Unique identifier of the query result. |
    | location | location | Location result. |
    | title | string | Title of the result. |
    | thumbnail | thumbnail | Result thumbnail in JPEG format; may be null. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_query_result_location.html).
    """

    defstruct "@type": "inlineQueryResultLocation", "@extra": nil, id: nil, location: nil, title: nil, thumbnail: nil
  end

  defmodule InputMessageReplyToMessage do
    @moduledoc """
    Describes a message to be replied.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | The identifier of the chat to which the message to be replied belongs; pass 0 if the message to be replied is in the same chat. Must always be 0 for replies in secret chats. A message can be replied in another chat or topic only if message.can_be_replied_in_another_chat. |
    | message_id | string | The identifier of the message to be replied in the same or the specified chat. |
    | quote | inputTextQuote | Quote from the message to be replied; pass null if none. Must always be null for replies in secret chats. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_reply_to_message.html).
    """

    defstruct "@type": "inputMessageReplyToMessage", "@extra": nil, chat_id: nil, message_id: nil, quote: nil
  end

  defmodule PageBlockFooter do
    @moduledoc """
    The footer of a page.

    | Name | Type | Description |
    |------|------| ------------|
    | footer | RichText | Footer. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_footer.html).
    """

    defstruct "@type": "pageBlockFooter", "@extra": nil, footer: nil
  end

  defmodule PremiumGiveawayInfo do
    @moduledoc """
    This class is an abstract base class. Contains information about Telegram Premium giveaway.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_premium_giveaway_info.html).
    """

    defstruct "@type": "PremiumGiveawayInfo", "@extra": nil
  end

  defmodule Sessions do
    @moduledoc """
    Contains a list of sessions.

    | Name | Type | Description |
    |------|------| ------------|
    | sessions | session | List of sessions. |
    | inactive_session_ttl_days | number | Number of days of inactivity before sessions will automatically be terminated; 1-366 days. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sessions.html).
    """

    defstruct "@type": "sessions", "@extra": nil, sessions: nil, inactive_session_ttl_days: nil
  end

  defmodule JsonValueString do
    @moduledoc """
    Represents a string JSON value.

    | Name | Type | Description |
    |------|------| ------------|
    | value | string | The value. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1json_value_string.html).
    """

    defstruct "@type": "jsonValueString", "@extra": nil, value: nil
  end

  defmodule StickerFullTypeMask do
    @moduledoc """
    The sticker is a mask in WEBP format to be placed on photos or videos.

    | Name | Type | Description |
    |------|------| ------------|
    | mask_position | maskPosition | Position where the mask is placed; may be null. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sticker_full_type_mask.html).
    """

    defstruct "@type": "stickerFullTypeMask", "@extra": nil, mask_position: nil
  end

  defmodule ReportReasonPornography do
    @moduledoc """
    The chat contains pornographic messages.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1report_reason_pornography.html).
    """

    defstruct "@type": "reportReasonPornography", "@extra": nil
  end

  defmodule EmailAddressAuthenticationCodeInfo do
    @moduledoc """
    Information about the email address authentication code that was sent.

    | Name | Type | Description |
    |------|------| ------------|
    | email_address_pattern | string | Pattern of the email address to which an authentication code was sent. |
    | length | number | Length of the code; 0 if unknown. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1email_address_authentication_code_info.html).
    """

    defstruct "@type": "emailAddressAuthenticationCodeInfo", "@extra": nil, email_address_pattern: nil, length: nil
  end

  defmodule ChatInviteLinkCounts do
    @moduledoc """
    Contains a list of chat invite link counts.

    | Name | Type | Description |
    |------|------| ------------|
    | invite_link_counts | chatInviteLinkCount | List of invite link counts. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_invite_link_counts.html).
    """

    defstruct "@type": "chatInviteLinkCounts", "@extra": nil, invite_link_counts: nil
  end

  defmodule UpdateBasicGroup do
    @moduledoc """
    Some data of a basic group has changed. This update is guaranteed to come before the basic group identifier is returned to the application.

    | Name | Type | Description |
    |------|------| ------------|
    | basic_group | basicGroup | New data about the group. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_basic_group.html).
    """

    defstruct "@type": "updateBasicGroup", "@extra": nil, basic_group: nil
  end

  defmodule InputPassportElementErrorSourceSelfie do
    @moduledoc """
    The selfie contains an error. The error is considered resolved when the file with the selfie changes.

    | Name | Type | Description |
    |------|------| ------------|
    | file_hash | bytes | Current hash of the file containing the selfie. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_passport_element_error_source_selfie.html).
    """

    defstruct "@type": "inputPassportElementErrorSourceSelfie", "@extra": nil, file_hash: nil
  end

  defmodule MessageDocument do
    @moduledoc """
    A document message (general file).

    | Name | Type | Description |
    |------|------| ------------|
    | document | document | The document description. |
    | caption | formattedText | Document caption. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_document.html).
    """

    defstruct "@type": "messageDocument", "@extra": nil, document: nil, caption: nil
  end

  defmodule AuthorizationStateClosing do
    @moduledoc """
    TDLib is closing, all subsequent queries will be answered with the error 500. Note that closing TDLib can take a while. All resources will be freed only after authorizationStateClosed has been received.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authorization_state_closing.html).
    """

    defstruct "@type": "authorizationStateClosing", "@extra": nil
  end

  defmodule ChatBoostSourceGiftCode do
    @moduledoc """
    The chat created a Telegram Premium gift code for a user.

    | Name | Type | Description |
    |------|------| ------------|
    | user_id | string | Identifier of a user, for which the gift code was created. |
    | gift_code | string | The created Telegram Premium gift code, which is known only if this is a gift code for the current user, or it has already been claimed. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_boost_source_gift_code.html).
    """

    defstruct "@type": "chatBoostSourceGiftCode", "@extra": nil, user_id: nil, gift_code: nil
  end

  defmodule InputStoryAreaTypeFoundVenue do
    @moduledoc """
    An area pointing to a venue found by the bot getOption("venue_search_bot_username").

    | Name | Type | Description |
    |------|------| ------------|
    | query_id | string | Identifier of the inline query, used to found the venue. |
    | result_id | string | Identifier of the inline query result. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_story_area_type_found_venue.html).
    """

    defstruct "@type": "inputStoryAreaTypeFoundVenue", "@extra": nil, query_id: nil, result_id: nil
  end

  defmodule MessagePoll do
    @moduledoc """
    A message with a poll.

    | Name | Type | Description |
    |------|------| ------------|
    | poll | poll | The poll description. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_poll.html).
    """

    defstruct "@type": "messagePoll", "@extra": nil, poll: nil
  end

  defmodule CallStateDiscarded do
    @moduledoc """
    The call has ended successfully.

    | Name | Type | Description |
    |------|------| ------------|
    | reason | CallDiscardReason | The reason why the call has ended. |
    | need_rating | bool | True, if the call rating must be sent to the server. |
    | need_debug_information | bool | True, if the call debug information must be sent to the server. |
    | need_log | bool | True, if the call log must be sent to the server. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_state_discarded.html).
    """

    defstruct "@type": "callStateDiscarded",
              "@extra": nil,
              reason: nil,
              need_rating: nil,
              need_debug_information: nil,
              need_log: nil
  end

  defmodule SuggestedActionRestorePremium do
    @moduledoc """
    Suggests the user to restore a recently expired Premium subscription.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1suggested_action_restore_premium.html).
    """

    defstruct "@type": "suggestedActionRestorePremium", "@extra": nil
  end

  defmodule LanguagePackStringValuePluralized do
    @moduledoc """
    A language pack string which has different forms based on the number of some object it mentions. See https://www.unicode.org/cldr/charts/latest/supplemental/language_plural_rules.html for more information.

    | Name | Type | Description |
    |------|------| ------------|
    | zero_value | string | Value for zero objects. |
    | one_value | string | Value for one object. |
    | two_value | string | Value for two objects. |
    | few_value | string | Value for few objects. |
    | many_value | string | Value for many objects. |
    | other_value | string | Default value. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1language_pack_string_value_pluralized.html).
    """

    defstruct "@type": "languagePackStringValuePluralized",
              "@extra": nil,
              zero_value: nil,
              one_value: nil,
              two_value: nil,
              few_value: nil,
              many_value: nil,
              other_value: nil
  end

  defmodule MessagePassportDataSent do
    @moduledoc """
    Telegram Passport data has been sent to a bot.

    | Name | Type | Description |
    |------|------| ------------|
    | types | PassportElementType | List of Telegram Passport element types sent. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_passport_data_sent.html).
    """

    defstruct "@type": "messagePassportDataSent", "@extra": nil, types: nil
  end

  defmodule StickerFormatWebp do
    @moduledoc """
    The sticker is an image in WEBP format.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sticker_format_webp.html).
    """

    defstruct "@type": "stickerFormatWebp", "@extra": nil
  end

  defmodule BlockList do
    @moduledoc """
    This class is an abstract base class. Describes a type of a block list.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_block_list.html).
    """

    defstruct "@type": "BlockList", "@extra": nil
  end

  defmodule DiceStickersRegular do
    @moduledoc """
    A regular animated sticker.

    | Name | Type | Description |
    |------|------| ------------|
    | sticker | sticker | The animated sticker with the dice animation. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1dice_stickers_regular.html).
    """

    defstruct "@type": "diceStickersRegular", "@extra": nil, sticker: nil
  end

  defmodule InternalLinkTypeStory do
    @moduledoc """
    The link is a link to a story. Call searchPublicChat with the given sender username, then call getStory with the received chat identifier and the given story identifier.

    | Name | Type | Description |
    |------|------| ------------|
    | story_sender_username | string | Username of the sender of the story. |
    | story_id | number | Story identifier. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_story.html).
    """

    defstruct "@type": "internalLinkTypeStory", "@extra": nil, story_sender_username: nil, story_id: nil
  end

  defmodule TextEntityTypeMention do
    @moduledoc """
    A mention of a user, a supergroup, or a channel by their username.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_mention.html).
    """

    defstruct "@type": "textEntityTypeMention", "@extra": nil
  end

  defmodule ChatStatisticsSupergroup do
    @moduledoc """
    A detailed statistics about a supergroup chat.

    | Name | Type | Description |
    |------|------| ------------|
    | period | dateRange | A period to which the statistics applies. |
    | member_count | statisticalValue | Number of members in the chat. |
    | message_count | statisticalValue | Number of messages sent to the chat. |
    | viewer_count | statisticalValue | Number of users who viewed messages in the chat. |
    | sender_count | statisticalValue | Number of users who sent messages to the chat. |
    | member_count_graph | StatisticalGraph | A graph containing number of members in the chat. |
    | join_graph | StatisticalGraph | A graph containing number of members joined and left the chat. |
    | join_by_source_graph | StatisticalGraph | A graph containing number of new member joins per source. |
    | language_graph | StatisticalGraph | A graph containing distribution of active users per language. |
    | message_content_graph | StatisticalGraph | A graph containing distribution of sent messages by content type. |
    | action_graph | StatisticalGraph | A graph containing number of different actions in the chat. |
    | day_graph | StatisticalGraph | A graph containing distribution of message views per hour. |
    | week_graph | StatisticalGraph | A graph containing distribution of message views per day of week. |
    | top_senders | chatStatisticsMessageSenderInfo | List of users sent most messages in the last week. |
    | top_administrators | chatStatisticsAdministratorActionsInfo | List of most active administrators in the last week. |
    | top_inviters | chatStatisticsInviterInfo | List of most active inviters of new members in the last week. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_statistics_supergroup.html).
    """

    defstruct "@type": "chatStatisticsSupergroup",
              "@extra": nil,
              period: nil,
              member_count: nil,
              message_count: nil,
              viewer_count: nil,
              sender_count: nil,
              member_count_graph: nil,
              join_graph: nil,
              join_by_source_graph: nil,
              language_graph: nil,
              message_content_graph: nil,
              action_graph: nil,
              day_graph: nil,
              week_graph: nil,
              top_senders: nil,
              top_administrators: nil,
              top_inviters: nil
  end

  defmodule TopChatCategoryInlineBots do
    @moduledoc """
    A category containing frequently used chats with inline bots sorted by their usage in inline mode.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1top_chat_category_inline_bots.html).
    """

    defstruct "@type": "topChatCategoryInlineBots", "@extra": nil
  end

  defmodule SuggestedAction do
    @moduledoc """
    This class is an abstract base class. Describes an action suggested to the current user.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_suggested_action.html).
    """

    defstruct "@type": "SuggestedAction", "@extra": nil
  end

  defmodule TestBytes do
    @moduledoc """
    A simple object containing a sequence of bytes; for testing only.

    | Name | Type | Description |
    |------|------| ------------|
    | value | bytes | Bytes. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1test_bytes.html).
    """

    defstruct "@type": "testBytes", "@extra": nil, value: nil
  end

  defmodule StoryAreaTypeLocation do
    @moduledoc """
    An area pointing to a location.

    | Name | Type | Description |
    |------|------| ------------|
    | location | location | The location. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1story_area_type_location.html).
    """

    defstruct "@type": "storyAreaTypeLocation", "@extra": nil, location: nil
  end

  defmodule ChatActionUploadingPhoto do
    @moduledoc """
    The user is uploading a photo.

    | Name | Type | Description |
    |------|------| ------------|
    | progress | number | Upload progress, as a percentage. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_uploading_photo.html).
    """

    defstruct "@type": "chatActionUploadingPhoto", "@extra": nil, progress: nil
  end

  defmodule InternalLinkTypeChatBoost do
    @moduledoc """
    The link is a link to boost a Telegram chat. Call getChatBoostLinkInfo with the given URL to process the link. If the chat is found, then call getChatBoostStatus and getAvailableChatBoostSlots to get the current boost status and check whether the chat can be boosted. If the user wants to boost the chat and the chat can be boosted, then call boostChat.

    | Name | Type | Description |
    |------|------| ------------|
    | url | string | URL to be passed to getChatBoostLinkInfo. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_chat_boost.html).
    """

    defstruct "@type": "internalLinkTypeChatBoost", "@extra": nil, url: nil
  end

  defmodule RtmpUrl do
    @moduledoc """
    Represents an RTMP URL.

    | Name | Type | Description |
    |------|------| ------------|
    | url | string | The URL. |
    | stream_key | string | Stream key. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1rtmp_url.html).
    """

    defstruct "@type": "rtmpUrl", "@extra": nil, url: nil, stream_key: nil
  end

  defmodule PremiumGiveawayParticipantStatusEligible do
    @moduledoc """
    The user is eligible for the giveaway.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_giveaway_participant_status_eligible.html).
    """

    defstruct "@type": "premiumGiveawayParticipantStatusEligible", "@extra": nil
  end

  defmodule PushMessageContentMessageForwards do
    @moduledoc """
    A forwarded messages.

    | Name | Type | Description |
    |------|------| ------------|
    | total_count | number | Number of forwarded messages. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_message_forwards.html).
    """

    defstruct "@type": "pushMessageContentMessageForwards", "@extra": nil, total_count: nil
  end

  defmodule PageBlockVoiceNote do
    @moduledoc """
    A voice note.

    | Name | Type | Description |
    |------|------| ------------|
    | voice_note | voiceNote | Voice note; may be null. |
    | caption | pageBlockCaption | Voice note caption. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_voice_note.html).
    """

    defstruct "@type": "pageBlockVoiceNote", "@extra": nil, voice_note: nil, caption: nil
  end

  defmodule PageBlockKicker do
    @moduledoc """
    A kicker.

    | Name | Type | Description |
    |------|------| ------------|
    | kicker | RichText | Kicker. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_kicker.html).
    """

    defstruct "@type": "pageBlockKicker", "@extra": nil, kicker: nil
  end

  defmodule UserTypeUnknown do
    @moduledoc """
    No information on the user besides the user identifier is available, yet this user has not been deleted. This object is extremely rare and must be handled like a deleted user. It is not possible to perform any actions on users of this type.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_type_unknown.html).
    """

    defstruct "@type": "userTypeUnknown", "@extra": nil
  end

  defmodule SupergroupMembersFilterSearch do
    @moduledoc """
    Used to search for supergroup or channel members via a (string) query.

    | Name | Type | Description |
    |------|------| ------------|
    | query | string | Query to search for. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1supergroup_members_filter_search.html).
    """

    defstruct "@type": "supergroupMembersFilterSearch", "@extra": nil, query: nil
  end

  defmodule InternalLinkTypeAttachmentMenuBot do
    @moduledoc """
    The link is a link to an attachment menu bot to be opened in the specified or a chosen chat. Process given target_chat to open the chat. Then, call searchPublicChat with the given bot username, check that the user is a bot and can be added to attachment menu. Then, use getAttachmentMenuBot to receive information about the bot. If the bot isn't added to attachment menu, then show a disclaimer about Mini Apps being a third-party apps, ask the user to accept their Terms of service and confirm adding the bot to side and attachment menu. If the user accept the terms and confirms adding, then use toggleBotIsAddedToAttachmentMenu to add the bot. If the attachment menu bot can't be used in the opened chat, show an error to the user. If the bot is added to attachment menu and can be used in the chat, then use openWebApp with the given URL.

    | Name | Type | Description |
    |------|------| ------------|
    | target_chat | TargetChat | Target chat to be opened. |
    | bot_username | string | Username of the bot. |
    | url | string | URL to be passed to openWebApp. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_attachment_menu_bot.html).
    """

    defstruct "@type": "internalLinkTypeAttachmentMenuBot", "@extra": nil, target_chat: nil, bot_username: nil, url: nil
  end

  defmodule MessageExtendedMediaVideo do
    @moduledoc """
    The media is a video.

    | Name | Type | Description |
    |------|------| ------------|
    | video | video | The video. |
    | caption | formattedText | Photo caption. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_extended_media_video.html).
    """

    defstruct "@type": "messageExtendedMediaVideo", "@extra": nil, video: nil, caption: nil
  end

  defmodule UpdateStorySendFailed do
    @moduledoc """
    A story failed to send. If the story sending is canceled, then updateStoryDeleted will be received instead of this update.

    | Name | Type | Description |
    |------|------| ------------|
    | story | story | The failed to send story. |
    | error | error | The cause of the story sending failure. |
    | error_type | CanSendStoryResult | Type of the error; may be null if unknown. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_story_send_failed.html).
    """

    defstruct "@type": "updateStorySendFailed", "@extra": nil, story: nil, error: nil, error_type: nil
  end

  defmodule PaymentProviderOther do
    @moduledoc """
    Some other payment provider, for which a web payment form must be shown.

    | Name | Type | Description |
    |------|------| ------------|
    | url | string | Payment form URL. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1payment_provider_other.html).
    """

    defstruct "@type": "paymentProviderOther", "@extra": nil, url: nil
  end

  defmodule ChatEventBackgroundCustomEmojiChanged do
    @moduledoc """
    The chat's custom emoji for reply background was changed.

    | Name | Type | Description |
    |------|------| ------------|
    | old_background_custom_emoji_id | string | Previous identifier of the custom emoji; 0 if none. |
    | new_background_custom_emoji_id | string | New identifier of the custom emoji; 0 if none. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_background_custom_emoji_changed.html).
    """

    defstruct "@type": "chatEventBackgroundCustomEmojiChanged",
              "@extra": nil,
              old_background_custom_emoji_id: nil,
              new_background_custom_emoji_id: nil
  end

  defmodule User do
    @moduledoc """
    Represents a user.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | User identifier. |
    | first_name | string | First name of the user. |
    | last_name | string | Last name of the user. |
    | usernames | usernames | Usernames of the user; may be null. |
    | phone_number | string | Phone number of the user. |
    | status | UserStatus | Current online status of the user. |
    | profile_photo | profilePhoto | Profile photo of the user; may be null. |
    | accent_color_id | number | Identifier of the accent color for name, and backgrounds of profile photo, reply header, and link preview. For Telegram Premium users only. |
    | background_custom_emoji_id | string | Identifier of a custom emoji to be shown on the reply header background; 0 if none. For Telegram Premium users only. |
    | profile_accent_color_id | number | Identifier of the accent color for the user's profile; -1 if none. For Telegram Premium users only. |
    | profile_background_custom_emoji_id | string | Identifier of a custom emoji to be shown on the background of the user's profile; 0 if none. For Telegram Premium users only. |
    | emoji_status | emojiStatus | Emoji status to be shown instead of the default Telegram Premium badge; may be null. For Telegram Premium users only. |
    | is_contact | bool | The user is a contact of the current user. |
    | is_mutual_contact | bool | The user is a contact of the current user and the current user is a contact of the user. |
    | is_close_friend | bool | The user is a close friend of the current user; implies that the user is a contact. |
    | is_verified | bool | True, if the user is verified. |
    | is_premium | bool | True, if the user is a Telegram Premium user. |
    | is_support | bool | True, if the user is Telegram support account. |
    | restriction_reason | string | If non-empty, it contains a human-readable description of the reason why access to this user must be restricted. |
    | is_scam | bool | True, if many users reported this user as a scam. |
    | is_fake | bool | True, if many users reported this user as a fake account. |
    | has_active_stories | bool | True, if the user has non-expired stories available to the current user. |
    | has_unread_active_stories | bool | True, if the user has unread non-expired stories available to the current user. |
    | have_access | bool | If false, the user is inaccessible, and the only information known about the user is inside this class. Identifier of the user can't be passed to any method. |
    | type | UserType | Type of the user. |
    | language_code | string | IETF language tag of the user's language; only available to bots. |
    | added_to_attachment_menu | bool | True, if the user added the current bot to attachment menu; only available to bots. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user.html).
    """

    defstruct "@type": "user",
              "@extra": nil,
              id: nil,
              first_name: nil,
              last_name: nil,
              usernames: nil,
              phone_number: nil,
              status: nil,
              profile_photo: nil,
              accent_color_id: nil,
              background_custom_emoji_id: nil,
              profile_accent_color_id: nil,
              profile_background_custom_emoji_id: nil,
              emoji_status: nil,
              is_contact: nil,
              is_mutual_contact: nil,
              is_close_friend: nil,
              is_verified: nil,
              is_premium: nil,
              is_support: nil,
              restriction_reason: nil,
              is_scam: nil,
              is_fake: nil,
              has_active_stories: nil,
              has_unread_active_stories: nil,
              have_access: nil,
              type: nil,
              language_code: nil,
              added_to_attachment_menu: nil
  end

  defmodule UpdateChatReplyMarkup do
    @moduledoc """
    The default chat reply markup was changed. Can occur because new messages with reply markup were received or because an old reply markup was hidden by the user.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |
    | reply_markup_message_id | string | Identifier of the message from which reply markup needs to be used; 0 if there is no default custom reply markup in the chat. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_reply_markup.html).
    """

    defstruct "@type": "updateChatReplyMarkup", "@extra": nil, chat_id: nil, reply_markup_message_id: nil
  end

  defmodule EmailAddressAuthenticationGoogleId do
    @moduledoc """
    An authentication token received through Google ID.

    | Name | Type | Description |
    |------|------| ------------|
    | token | string | The token. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1email_address_authentication_google_id.html).
    """

    defstruct "@type": "emailAddressAuthenticationGoogleId", "@extra": nil, token: nil
  end

  defmodule EmailAddressResetStatePending do
    @moduledoc """
    Email address reset has already been requested. Call resetAuthenticationEmailAddress to check whether immediate reset is possible.

    | Name | Type | Description |
    |------|------| ------------|
    | reset_in | number | Left time before the email address will be reset, in seconds. updateAuthorizationState is not sent when this field changes. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1email_address_reset_state_pending.html).
    """

    defstruct "@type": "emailAddressResetStatePending", "@extra": nil, reset_in: nil
  end

  defmodule ChatEventInviteLinkEdited do
    @moduledoc """
    A chat invite link was edited.

    | Name | Type | Description |
    |------|------| ------------|
    | old_invite_link | chatInviteLink | Previous information about the invite link. |
    | new_invite_link | chatInviteLink | New information about the invite link. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_invite_link_edited.html).
    """

    defstruct "@type": "chatEventInviteLinkEdited", "@extra": nil, old_invite_link: nil, new_invite_link: nil
  end

  defmodule UpdateChatMember do
    @moduledoc """
    User rights changed in a chat; for bots only.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |
    | actor_user_id | string | Identifier of the user, changing the rights. |
    | date | number | Point in time (Unix timestamp) when the user rights were changed. |
    | invite_link | chatInviteLink | If user has joined the chat using an invite link, the invite link; may be null. |
    | via_chat_folder_invite_link | bool | True, if the user has joined the chat using an invite link for a chat folder. |
    | old_chat_member | chatMember | Previous chat member. |
    | new_chat_member | chatMember | New chat member. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_member.html).
    """

    defstruct "@type": "updateChatMember",
              "@extra": nil,
              chat_id: nil,
              actor_user_id: nil,
              date: nil,
              invite_link: nil,
              via_chat_folder_invite_link: nil,
              old_chat_member: nil,
              new_chat_member: nil
  end

  defmodule CallProblemEcho do
    @moduledoc """
    The user heard their own voice.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_problem_echo.html).
    """

    defstruct "@type": "callProblemEcho", "@extra": nil
  end

  defmodule InternalLinkTypePremiumFeatures do
    @moduledoc """
    The link is a link to the Premium features screen of the application from which the user can subscribe to Telegram Premium. Call getPremiumFeatures with the given referrer to process the link.

    | Name | Type | Description |
    |------|------| ------------|
    | referrer | string | Referrer specified in the link. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_premium_features.html).
    """

    defstruct "@type": "internalLinkTypePremiumFeatures", "@extra": nil, referrer: nil
  end

  defmodule ChatAction do
    @moduledoc """
    This class is an abstract base class. Describes the different types of activity in a chat.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_chat_action.html).
    """

    defstruct "@type": "ChatAction", "@extra": nil
  end

  defmodule ThumbnailFormat do
    @moduledoc """
    This class is an abstract base class. Describes format of a thumbnail.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_thumbnail_format.html).
    """

    defstruct "@type": "ThumbnailFormat", "@extra": nil
  end

  defmodule ChatBoostSource do
    @moduledoc """
    This class is an abstract base class. Describes source of a chat boost.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_chat_boost_source.html).
    """

    defstruct "@type": "ChatBoostSource", "@extra": nil
  end

  defmodule SpeechRecognitionResult do
    @moduledoc """
    This class is an abstract base class. Describes result of speech recognition in a voice note.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_speech_recognition_result.html).
    """

    defstruct "@type": "SpeechRecognitionResult", "@extra": nil
  end

  defmodule InlineQueryResultAudio do
    @moduledoc """
    Represents an audio file.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Unique identifier of the query result. |
    | audio | audio | Audio file. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_query_result_audio.html).
    """

    defstruct "@type": "inlineQueryResultAudio", "@extra": nil, id: nil, audio: nil
  end

  defmodule InputBackground do
    @moduledoc """
    This class is an abstract base class. Contains information about background to set.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_input_background.html).
    """

    defstruct "@type": "InputBackground", "@extra": nil
  end

  defmodule ChatEventForumTopicCreated do
    @moduledoc """
    A new forum topic was created.

    | Name | Type | Description |
    |------|------| ------------|
    | topic_info | forumTopicInfo | Information about the topic. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_forum_topic_created.html).
    """

    defstruct "@type": "chatEventForumTopicCreated", "@extra": nil, topic_info: nil
  end

  defmodule InternalLinkTypePremiumGiftCode do
    @moduledoc """
    The link is a link with a Telegram Premium gift code. Call checkPremiumGiftCode with the given code to process the link. If the code is valid and the user wants to apply it, then call applyPremiumGiftCode.

    | Name | Type | Description |
    |------|------| ------------|
    | code | string | The Telegram Premium gift code. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_premium_gift_code.html).
    """

    defstruct "@type": "internalLinkTypePremiumGiftCode", "@extra": nil, code: nil
  end

  defmodule InputInlineQueryResultLocation do
    @moduledoc """
    Represents a point on the map.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Unique identifier of the query result. |
    | location | location | Location result. |
    | live_period | number | Amount of time relative to the message sent time until the location can be updated, in seconds. |
    | title | string | Title of the result. |
    | thumbnail_url | string | URL of the result thumbnail, if it exists. |
    | thumbnail_width | number | Thumbnail width, if known. |
    | thumbnail_height | number | Thumbnail height, if known. |
    | reply_markup | ReplyMarkup | The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null. |
    | input_message_content | InputMessageContent | The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_inline_query_result_location.html).
    """

    defstruct "@type": "inputInlineQueryResultLocation",
              "@extra": nil,
              id: nil,
              location: nil,
              live_period: nil,
              title: nil,
              thumbnail_url: nil,
              thumbnail_width: nil,
              thumbnail_height: nil,
              reply_markup: nil,
              input_message_content: nil
  end

  defmodule NotificationGroup do
    @moduledoc """
    Describes a group of notifications.

    | Name | Type | Description |
    |------|------| ------------|
    | id | number | Unique persistent auto-incremented from 1 identifier of the notification group. |
    | type | NotificationGroupType | Type of the group. |
    | chat_id | string | Identifier of a chat to which all notifications in the group belong. |
    | total_count | number | Total number of active notifications in the group. |
    | notifications | notification | The list of active notifications. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1notification_group.html).
    """

    defstruct "@type": "notificationGroup",
              "@extra": nil,
              id: nil,
              type: nil,
              chat_id: nil,
              total_count: nil,
              notifications: nil
  end

  defmodule KeyboardButtonType do
    @moduledoc """
    This class is an abstract base class. Describes a keyboard button type.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_keyboard_button_type.html).
    """

    defstruct "@type": "KeyboardButtonType", "@extra": nil
  end

  defmodule KeyboardButtonTypeText do
    @moduledoc """
    A simple button, with text that must be sent when the button is pressed.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1keyboard_button_type_text.html).
    """

    defstruct "@type": "keyboardButtonTypeText", "@extra": nil
  end

  defmodule UpdateFavoriteStickers do
    @moduledoc """
    The list of favorite stickers was updated.

    | Name | Type | Description |
    |------|------| ------------|
    | sticker_ids | number | The new list of file identifiers of favorite stickers. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_favorite_stickers.html).
    """

    defstruct "@type": "updateFavoriteStickers", "@extra": nil, sticker_ids: nil
  end

  defmodule ChatEventMemberJoined do
    @moduledoc """
    A new member joined the chat.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_member_joined.html).
    """

    defstruct "@type": "chatEventMemberJoined", "@extra": nil
  end

  defmodule MessageSendOptions do
    @moduledoc """
    Options to be used when a message is sent.

    | Name | Type | Description |
    |------|------| ------------|
    | disable_notification | bool | Pass true to disable notification for the message. |
    | from_background | bool | Pass true if the message is sent from the background. |
    | protect_content | bool | Pass true if the content of the message must be protected from forwarding and saving; for bots only. |
    | update_order_of_installed_sticker_sets | bool | Pass true if the user explicitly chosen a sticker or a custom emoji from an installed sticker set; applicable only to sendMessage and sendMessageAlbum. |
    | scheduling_state | MessageSchedulingState | Message scheduling state; pass null to send message immediately. Messages sent to a secret chat, live location messages and self-destructing messages can't be scheduled. |
    | sending_id | number | Non-persistent identifier, which will be returned back in messageSendingStatePending object and can be used to match sent messages and corresponding updateNewMessage updates. |
    | only_preview | bool | Pass true to get a fake message instead of actually sending them. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_send_options.html).
    """

    defstruct "@type": "messageSendOptions",
              "@extra": nil,
              disable_notification: nil,
              from_background: nil,
              protect_content: nil,
              update_order_of_installed_sticker_sets: nil,
              scheduling_state: nil,
              sending_id: nil,
              only_preview: nil
  end

  defmodule MessageSourceChatEventLog do
    @moduledoc """
    The message is from a chat event log.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_source_chat_event_log.html).
    """

    defstruct "@type": "messageSourceChatEventLog", "@extra": nil
  end

  defmodule SuggestedActionCheckPhoneNumber do
    @moduledoc """
    Suggests the user to check whether authorization phone number is correct and change the phone number if it is inaccessible.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1suggested_action_check_phone_number.html).
    """

    defstruct "@type": "suggestedActionCheckPhoneNumber", "@extra": nil
  end

  defmodule UpdateGroupCall do
    @moduledoc """
    Information about a group call was updated.

    | Name | Type | Description |
    |------|------| ------------|
    | group_call | groupCall | New data about a group call. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_group_call.html).
    """

    defstruct "@type": "updateGroupCall", "@extra": nil, group_call: nil
  end

  defmodule UpdateChatIsMarkedAsUnread do
    @moduledoc """
    A chat was marked as unread or was read.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |
    | is_marked_as_unread | bool | New value of is_marked_as_unread. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_is_marked_as_unread.html).
    """

    defstruct "@type": "updateChatIsMarkedAsUnread", "@extra": nil, chat_id: nil, is_marked_as_unread: nil
  end

  defmodule MaskPointForehead do
    @moduledoc """
    The mask is placed relatively to the forehead.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1mask_point_forehead.html).
    """

    defstruct "@type": "maskPointForehead", "@extra": nil
  end

  defmodule AuthenticationCodeTypeSms do
    @moduledoc """
    An authentication code is delivered via an SMS message to the specified phone number; applications may not receive this type of code.

    | Name | Type | Description |
    |------|------| ------------|
    | length | number | Length of the code. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authentication_code_type_sms.html).
    """

    defstruct "@type": "authenticationCodeTypeSms", "@extra": nil, length: nil
  end

  defmodule UpdateUserFullInfo do
    @moduledoc """
    Some data in userFullInfo has been changed.

    | Name | Type | Description |
    |------|------| ------------|
    | user_id | string | User identifier. |
    | user_full_info | userFullInfo | New full information about the user. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_user_full_info.html).
    """

    defstruct "@type": "updateUserFullInfo", "@extra": nil, user_id: nil, user_full_info: nil
  end

  defmodule SearchMessagesFilterEmpty do
    @moduledoc """
    Returns all found messages, no filter is applied.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_empty.html).
    """

    defstruct "@type": "searchMessagesFilterEmpty", "@extra": nil
  end

  defmodule PremiumSourceLimitExceeded do
    @moduledoc """
    A limit was exceeded.

    | Name | Type | Description |
    |------|------| ------------|
    | limit_type | PremiumLimitType | Type of the exceeded limit. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_source_limit_exceeded.html).
    """

    defstruct "@type": "premiumSourceLimitExceeded", "@extra": nil, limit_type: nil
  end

  defmodule OrderInfo do
    @moduledoc """
    Order information.

    | Name | Type | Description |
    |------|------| ------------|
    | name | string | Name of the user. |
    | phone_number | string | Phone number of the user. |
    | email_address | string | Email address of the user. |
    | shipping_address | address | Shipping address for this order; may be null. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1order_info.html).
    """

    defstruct "@type": "orderInfo",
              "@extra": nil,
              name: nil,
              phone_number: nil,
              email_address: nil,
              shipping_address: nil
  end

  defmodule InputPassportElementBankStatement do
    @moduledoc """
    A Telegram Passport element to be saved containing the user's bank statement.

    | Name | Type | Description |
    |------|------| ------------|
    | bank_statement | inputPersonalDocument | The bank statement to be saved. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_passport_element_bank_statement.html).
    """

    defstruct "@type": "inputPassportElementBankStatement", "@extra": nil, bank_statement: nil
  end

  defmodule DeviceTokenWindowsPush do
    @moduledoc """
    A token for Windows Push Notification Services.

    | Name | Type | Description |
    |------|------| ------------|
    | access_token | string | The access token that will be used to send notifications; may be empty to deregister a device. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1device_token_windows_push.html).
    """

    defstruct "@type": "deviceTokenWindowsPush", "@extra": nil, access_token: nil
  end

  defmodule ResetPasswordResultOk do
    @moduledoc """
    The password was reset.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1reset_password_result_ok.html).
    """

    defstruct "@type": "resetPasswordResultOk", "@extra": nil
  end

  defmodule UpdateActiveEmojiReactions do
    @moduledoc """
    The list of active emoji reactions has changed.

    | Name | Type | Description |
    |------|------| ------------|
    | emojis | string | The new list of active emoji reactions. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_active_emoji_reactions.html).
    """

    defstruct "@type": "updateActiveEmojiReactions", "@extra": nil, emojis: nil
  end

  defmodule ConnectedWebsites do
    @moduledoc """
    Contains a list of websites the current user is logged in with Telegram.

    | Name | Type | Description |
    |------|------| ------------|
    | websites | connectedWebsite | List of connected websites. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1connected_websites.html).
    """

    defstruct "@type": "connectedWebsites", "@extra": nil, websites: nil
  end

  defmodule PassportElementBankStatement do
    @moduledoc """
    A Telegram Passport element containing the user's bank statement.

    | Name | Type | Description |
    |------|------| ------------|
    | bank_statement | personalDocument | Bank statement. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_bank_statement.html).
    """

    defstruct "@type": "passportElementBankStatement", "@extra": nil, bank_statement: nil
  end

  defmodule ChatEventActiveUsernamesChanged do
    @moduledoc """
    The chat active usernames were changed.

    | Name | Type | Description |
    |------|------| ------------|
    | old_usernames | string | Previous list of active usernames. |
    | new_usernames | string | New list of active usernames. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_active_usernames_changed.html).
    """

    defstruct "@type": "chatEventActiveUsernamesChanged", "@extra": nil, old_usernames: nil, new_usernames: nil
  end

  defmodule CheckStickerSetNameResult do
    @moduledoc """
    This class is an abstract base class. Represents result of checking whether a name can be used for a new sticker set.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_check_sticker_set_name_result.html).
    """

    defstruct "@type": "CheckStickerSetNameResult", "@extra": nil
  end

  defmodule ConnectionStateWaitingForNetwork do
    @moduledoc """
    Waiting for the network to become available. Use setNetworkType to change the available network type.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1connection_state_waiting_for_network.html).
    """

    defstruct "@type": "connectionStateWaitingForNetwork", "@extra": nil
  end

  defmodule PremiumFeatureAccentColor do
    @moduledoc """
    The ability to choose accent color for replies and user profile.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_feature_accent_color.html).
    """

    defstruct "@type": "premiumFeatureAccentColor", "@extra": nil
  end

  defmodule NetworkTypeWiFi do
    @moduledoc """
    A Wi-Fi network.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1network_type_wi_fi.html).
    """

    defstruct "@type": "networkTypeWiFi", "@extra": nil
  end

  defmodule ChatActionBarSharePhoneNumber do
    @moduledoc """
    The chat is a private or secret chat with a mutual contact and the user's phone number can be shared with the other user using the method sharePhoneNumber.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_bar_share_phone_number.html).
    """

    defstruct "@type": "chatActionBarSharePhoneNumber", "@extra": nil
  end

  defmodule UpdateChatIsTranslatable do
    @moduledoc """
    Translation of chat messages was enabled or disabled.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |
    | is_translatable | bool | New value of is_translatable. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_is_translatable.html).
    """

    defstruct "@type": "updateChatIsTranslatable", "@extra": nil, chat_id: nil, is_translatable: nil
  end

  defmodule MessageThreadInfo do
    @moduledoc """
    Contains information about a message thread.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Identifier of the chat to which the message thread belongs. |
    | message_thread_id | string | Message thread identifier, unique within the chat. |
    | reply_info | messageReplyInfo | Information about the message thread; may be null for forum topic threads. |
    | unread_message_count | number | Approximate number of unread messages in the message thread. |
    | messages | message | The messages from which the thread starts. The messages are returned in a reverse chronological order (i.e., in order of decreasing message_id). |
    | draft_message | draftMessage | A draft of a message in the message thread; may be null if none. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_thread_info.html).
    """

    defstruct "@type": "messageThreadInfo",
              "@extra": nil,
              chat_id: nil,
              message_thread_id: nil,
              reply_info: nil,
              unread_message_count: nil,
              messages: nil,
              draft_message: nil
  end

  defmodule PremiumGiveawayParameters do
    @moduledoc """
    Describes parameters of a Telegram Premium giveaway.

    | Name | Type | Description |
    |------|------| ------------|
    | boosted_chat_id | string | Identifier of the channel chat, which will be automatically boosted by the winners of the giveaway for duration of the Premium subscription. |
    | additional_chat_ids | string | Identifiers of other channel chats that must be subscribed by the users to be eligible for the giveaway. There can be up to getOption("giveaway_additional_chat_count_max") additional chats. |
    | winners_selection_date | number | Point in time (Unix timestamp) when the giveaway is expected to be performed; must be 60-getOption("giveaway_duration_max") seconds in the future in scheduled giveaways. |
    | only_new_members | bool | True, if only new members of the chats will be eligible for the giveaway. |
    | country_codes | string | The list of two-letter ISO 3166-1 alpha-2 codes of countries, users from which will be eligible for the giveaway. If empty, then all users can participate in the giveaway. There can be up to getOption("giveaway_country_count_max") chosen countries. Users with phone number that was bought on Fragment can participate in any giveaway and the country code "FT" must not be specified in the list. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_giveaway_parameters.html).
    """

    defstruct "@type": "premiumGiveawayParameters",
              "@extra": nil,
              boosted_chat_id: nil,
              additional_chat_ids: nil,
              winners_selection_date: nil,
              only_new_members: nil,
              country_codes: nil
  end

  defmodule LoginUrlInfo do
    @moduledoc """
    This class is an abstract base class. Contains information about an inline button of type inlineKeyboardButtonTypeLoginUrl.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_login_url_info.html).
    """

    defstruct "@type": "LoginUrlInfo", "@extra": nil
  end

  defmodule TopChatCategory do
    @moduledoc """
    This class is an abstract base class. Represents the categories of chats for which a list of frequently used chats can be retrieved.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_top_chat_category.html).
    """

    defstruct "@type": "TopChatCategory", "@extra": nil
  end

  defmodule PremiumLimitTypeShareableChatFolderCount do
    @moduledoc """
    The maximum number of added shareable chat folders.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_limit_type_shareable_chat_folder_count.html).
    """

    defstruct "@type": "premiumLimitTypeShareableChatFolderCount", "@extra": nil
  end

  defmodule SessionTypeXbox do
    @moduledoc """
    The session is running on an Xbox console.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1session_type_xbox.html).
    """

    defstruct "@type": "sessionTypeXbox", "@extra": nil
  end

  defmodule ChatMembersFilterAdministrators do
    @moduledoc """
    Returns the owner and administrators.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_members_filter_administrators.html).
    """

    defstruct "@type": "chatMembersFilterAdministrators", "@extra": nil
  end

  defmodule PageBlockCover do
    @moduledoc """
    A page cover.

    | Name | Type | Description |
    |------|------| ------------|
    | cover | PageBlock | Cover. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_cover.html).
    """

    defstruct "@type": "pageBlockCover", "@extra": nil, cover: nil
  end

  defmodule PageBlockVideo do
    @moduledoc """
    A video.

    | Name | Type | Description |
    |------|------| ------------|
    | video | video | Video file; may be null. |
    | caption | pageBlockCaption | Video caption. |
    | need_autoplay | bool | True, if the video must be played automatically. |
    | is_looped | bool | True, if the video must be looped. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_video.html).
    """

    defstruct "@type": "pageBlockVideo", "@extra": nil, video: nil, caption: nil, need_autoplay: nil, is_looped: nil
  end

  defmodule MessageScreenshotTaken do
    @moduledoc """
    A screenshot of a message in the chat has been taken.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_screenshot_taken.html).
    """

    defstruct "@type": "messageScreenshotTaken", "@extra": nil
  end

  defmodule MaskPointMouth do
    @moduledoc """
    The mask is placed relatively to the mouth.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1mask_point_mouth.html).
    """

    defstruct "@type": "maskPointMouth", "@extra": nil
  end

  defmodule ChatEventPollStopped do
    @moduledoc """
    A poll in a message was stopped.

    | Name | Type | Description |
    |------|------| ------------|
    | message | message | The message with the poll. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_poll_stopped.html).
    """

    defstruct "@type": "chatEventPollStopped", "@extra": nil, message: nil
  end

  defmodule StoryRepostInfo do
    @moduledoc """
    Contains information about original story that was reposted.

    | Name | Type | Description |
    |------|------| ------------|
    | origin | StoryOrigin | Origin of the story that was reposted. |
    | is_content_modified | bool | True, if story content was modified during reposting; otherwise, story wasn't modified. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1story_repost_info.html).
    """

    defstruct "@type": "storyRepostInfo", "@extra": nil, origin: nil, is_content_modified: nil
  end

  defmodule UpdateFileDownloads do
    @moduledoc """
    The state of the file download list has changed.

    | Name | Type | Description |
    |------|------| ------------|
    | total_size | string | Total size of files in the file download list, in bytes. |
    | total_count | number | Total number of files in the file download list. |
    | downloaded_size | string | Total downloaded size of files in the file download list, in bytes. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_file_downloads.html).
    """

    defstruct "@type": "updateFileDownloads", "@extra": nil, total_size: nil, total_count: nil, downloaded_size: nil
  end

  defmodule LanguagePackStrings do
    @moduledoc """
    Contains a list of language pack strings.

    | Name | Type | Description |
    |------|------| ------------|
    | strings | languagePackString | A list of language pack strings. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1language_pack_strings.html).
    """

    defstruct "@type": "languagePackStrings", "@extra": nil, strings: nil
  end

  defmodule PushMessageContentSuggestProfilePhoto do
    @moduledoc """
    A profile photo was suggested to the user.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_suggest_profile_photo.html).
    """

    defstruct "@type": "pushMessageContentSuggestProfilePhoto", "@extra": nil
  end

  defmodule CallbackQueryPayloadDataWithPassword do
    @moduledoc """
    The payload for a callback button requiring password.

    | Name | Type | Description |
    |------|------| ------------|
    | password | string | The 2-step verification password for the current user. |
    | data | bytes | Data that was attached to the callback button. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1callback_query_payload_data_with_password.html).
    """

    defstruct "@type": "callbackQueryPayloadDataWithPassword", "@extra": nil, password: nil, data: nil
  end

  defmodule SupergroupMembersFilterRecent do
    @moduledoc """
    Returns recently active users in reverse chronological order.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1supergroup_members_filter_recent.html).
    """

    defstruct "@type": "supergroupMembersFilterRecent", "@extra": nil
  end

  defmodule CheckChatUsernameResultPublicGroupsUnavailable do
    @moduledoc """
    The user can't be a member of a public supergroup.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1check_chat_username_result_public_groups_unavailable.html).
    """

    defstruct "@type": "checkChatUsernameResultPublicGroupsUnavailable", "@extra": nil
  end

  defmodule PushMessageContentScreenshotTaken do
    @moduledoc """
    A screenshot of a message in the chat has been taken.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_screenshot_taken.html).
    """

    defstruct "@type": "pushMessageContentScreenshotTaken", "@extra": nil
  end

  defmodule ChatSourcePublicServiceAnnouncement do
    @moduledoc """
    The chat contains a public service announcement.

    | Name | Type | Description |
    |------|------| ------------|
    | type | string | The type of the announcement. |
    | text | string | The text of the announcement. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_source_public_service_announcement.html).
    """

    defstruct "@type": "chatSourcePublicServiceAnnouncement", "@extra": nil, type: nil, text: nil
  end

  defmodule SessionTypeIpad do
    @moduledoc """
    The session is running on an iPad device.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1session_type_ipad.html).
    """

    defstruct "@type": "sessionTypeIpad", "@extra": nil
  end

  defmodule ChatFolderInviteLinks do
    @moduledoc """
    Represents a list of chat folder invite links.

    | Name | Type | Description |
    |------|------| ------------|
    | invite_links | chatFolderInviteLink | List of the invite links. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_folder_invite_links.html).
    """

    defstruct "@type": "chatFolderInviteLinks", "@extra": nil, invite_links: nil
  end

  defmodule CallbackQueryPayloadGame do
    @moduledoc """
    The payload for a game callback button.

    | Name | Type | Description |
    |------|------| ------------|
    | game_short_name | string | A short name of the game that was attached to the callback button. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1callback_query_payload_game.html).
    """

    defstruct "@type": "callbackQueryPayloadGame", "@extra": nil, game_short_name: nil
  end

  defmodule PageBlockChatLink do
    @moduledoc """
    A link to a chat.

    | Name | Type | Description |
    |------|------| ------------|
    | title | string | Chat title. |
    | photo | chatPhotoInfo | Chat photo; may be null. |
    | accent_color_id | number | Identifier of the accent color for chat title and background of chat photo. |
    | username | string | Chat username by which all other information about the chat can be resolved. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_chat_link.html).
    """

    defstruct "@type": "pageBlockChatLink", "@extra": nil, title: nil, photo: nil, accent_color_id: nil, username: nil
  end

  defmodule ChatActiveStories do
    @moduledoc """
    Describes active stories posted by a chat.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Identifier of the chat that posted the stories. |
    | list | StoryList | Identifier of the story list in which the stories are shown; may be null if the stories aren't shown in a story list. |
    | order | string | A parameter used to determine order of the stories in the story list; 0 if the stories doesn't need to be shown in the story list. Stories must be sorted by the pair (order, story_sender_chat_id) in descending order. |
    | max_read_story_id | number | Identifier of the last read active story. |
    | stories | storyInfo | Basic information about the stories; use getStory to get full information about the stories. The stories are in a chronological order (i.e., in order of increasing story identifiers). |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_active_stories.html).
    """

    defstruct "@type": "chatActiveStories",
              "@extra": nil,
              chat_id: nil,
              list: nil,
              order: nil,
              max_read_story_id: nil,
              stories: nil
  end

  defmodule BankCardActionOpenUrl do
    @moduledoc """
    Describes an action associated with a bank card number.

    | Name | Type | Description |
    |------|------| ------------|
    | text | string | Action text. |
    | url | string | The URL to be opened. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1bank_card_action_open_url.html).
    """

    defstruct "@type": "bankCardActionOpenUrl", "@extra": nil, text: nil, url: nil
  end

  defmodule UserStatus do
    @moduledoc """
    This class is an abstract base class. Describes the last time the user was online.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_user_status.html).
    """

    defstruct "@type": "UserStatus", "@extra": nil
  end

  defmodule MessageSchedulingState do
    @moduledoc """
    This class is an abstract base class. Contains information about the time when a scheduled message will be sent.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_message_scheduling_state.html).
    """

    defstruct "@type": "MessageSchedulingState", "@extra": nil
  end

  defmodule InternalLinkTypeSettings do
    @moduledoc """
    The link is a link to application settings.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_settings.html).
    """

    defstruct "@type": "internalLinkTypeSettings", "@extra": nil
  end

  defmodule PremiumFeatureEmojiStatus do
    @moduledoc """
    An emoji status shown along with the user's name.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_feature_emoji_status.html).
    """

    defstruct "@type": "premiumFeatureEmojiStatus", "@extra": nil
  end

  defmodule MessageGiftedPremium do
    @moduledoc """
    Telegram Premium was gifted to the user.

    | Name | Type | Description |
    |------|------| ------------|
    | gifter_user_id | string | The identifier of a user that gifted Telegram Premium; 0 if the gift was anonymous. |
    | currency | string | Currency for the paid amount. |
    | amount | string | The paid amount, in the smallest units of the currency. |
    | cryptocurrency | string | Cryptocurrency used to pay for the gift; may be empty if none. |
    | cryptocurrency_amount | string | The paid amount, in the smallest units of the cryptocurrency. |
    | month_count | number | Number of month the Telegram Premium subscription will be active. |
    | sticker | sticker | A sticker to be shown in the message; may be null if unknown. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_gifted_premium.html).
    """

    defstruct "@type": "messageGiftedPremium",
              "@extra": nil,
              gifter_user_id: nil,
              currency: nil,
              amount: nil,
              cryptocurrency: nil,
              cryptocurrency_amount: nil,
              month_count: nil,
              sticker: nil
  end

  defmodule GameHighScores do
    @moduledoc """
    Contains a list of game high scores.

    | Name | Type | Description |
    |------|------| ------------|
    | scores | gameHighScore | A list of game high scores. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1game_high_scores.html).
    """

    defstruct "@type": "gameHighScores", "@extra": nil, scores: nil
  end

  defmodule UpdateSuggestedActions do
    @moduledoc """
    The list of suggested to the user actions has changed.

    | Name | Type | Description |
    |------|------| ------------|
    | added_actions | SuggestedAction | Added suggested actions. |
    | removed_actions | SuggestedAction | Removed suggested actions. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_suggested_actions.html).
    """

    defstruct "@type": "updateSuggestedActions", "@extra": nil, added_actions: nil, removed_actions: nil
  end

  defmodule InternalLinkTypeChatFolderSettings do
    @moduledoc """
    The link is a link to the folder section of the app settings.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_chat_folder_settings.html).
    """

    defstruct "@type": "internalLinkTypeChatFolderSettings", "@extra": nil
  end

  defmodule PremiumFeatureUniqueStickers do
    @moduledoc """
    Allowed to use premium stickers with unique effects.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_feature_unique_stickers.html).
    """

    defstruct "@type": "premiumFeatureUniqueStickers", "@extra": nil
  end

  defmodule RichTextEmailAddress do
    @moduledoc """
    A rich text email link.

    | Name | Type | Description |
    |------|------| ------------|
    | text | RichText | Text. |
    | email_address | string | Email address. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1rich_text_email_address.html).
    """

    defstruct "@type": "richTextEmailAddress", "@extra": nil, text: nil, email_address: nil
  end

  defmodule MessageSourceMessageThreadHistory do
    @moduledoc """
    The message is from a message thread history.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_source_message_thread_history.html).
    """

    defstruct "@type": "messageSourceMessageThreadHistory", "@extra": nil
  end

  defmodule ReportReason do
    @moduledoc """
    This class is an abstract base class. Describes the reason why a chat is reported.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_report_reason.html).
    """

    defstruct "@type": "ReportReason", "@extra": nil
  end

  defmodule ChatTheme do
    @moduledoc """
    Describes a chat theme.

    | Name | Type | Description |
    |------|------| ------------|
    | name | string | Theme name. |
    | light_settings | themeSettings | Theme settings for a light chat theme. |
    | dark_settings | themeSettings | Theme settings for a dark chat theme. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_theme.html).
    """

    defstruct "@type": "chatTheme", "@extra": nil, name: nil, light_settings: nil, dark_settings: nil
  end

  defmodule PremiumSourceStoryFeature do
    @moduledoc """
    A user tried to use a Premium story feature.

    | Name | Type | Description |
    |------|------| ------------|
    | feature | PremiumStoryFeature | The used feature. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_source_story_feature.html).
    """

    defstruct "@type": "premiumSourceStoryFeature", "@extra": nil, feature: nil
  end

  defmodule SupergroupMembersFilterContacts do
    @moduledoc """
    Returns contacts of the user, which are members of the supergroup or channel.

    | Name | Type | Description |
    |------|------| ------------|
    | query | string | Query to search for. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1supergroup_members_filter_contacts.html).
    """

    defstruct "@type": "supergroupMembersFilterContacts", "@extra": nil, query: nil
  end

  defmodule PushMessageContentStory do
    @moduledoc """
    A message with a story.

    | Name | Type | Description |
    |------|------| ------------|
    | is_pinned | bool | True, if the message is a pinned message with the specified content. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_story.html).
    """

    defstruct "@type": "pushMessageContentStory", "@extra": nil, is_pinned: nil
  end

  defmodule ChatTypeSecret do
    @moduledoc """
    A secret chat with a user.

    | Name | Type | Description |
    |------|------| ------------|
    | secret_chat_id | number | Secret chat identifier. |
    | user_id | string | User identifier of the other user in the secret chat. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_type_secret.html).
    """

    defstruct "@type": "chatTypeSecret", "@extra": nil, secret_chat_id: nil, user_id: nil
  end

  defmodule CallDiscardReasonHungUp do
    @moduledoc """
    The call was ended because one of the parties hung up.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_discard_reason_hung_up.html).
    """

    defstruct "@type": "callDiscardReasonHungUp", "@extra": nil
  end

  defmodule PremiumSourceSettings do
    @moduledoc """
    A user opened the Premium features screen from settings.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_source_settings.html).
    """

    defstruct "@type": "premiumSourceSettings", "@extra": nil
  end

  defmodule InputPassportElementRentalAgreement do
    @moduledoc """
    A Telegram Passport element to be saved containing the user's rental agreement.

    | Name | Type | Description |
    |------|------| ------------|
    | rental_agreement | inputPersonalDocument | The rental agreement to be saved. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_passport_element_rental_agreement.html).
    """

    defstruct "@type": "inputPassportElementRentalAgreement", "@extra": nil, rental_agreement: nil
  end

  defmodule ChatMemberStatusAdministrator do
    @moduledoc """
    The user is a member of the chat and has some additional privileges. In basic groups, administrators can edit and delete messages sent by others, add new members, ban unprivileged members, and manage video chats. In supergroups and channels, there are more detailed options for administrator privileges.

    | Name | Type | Description |
    |------|------| ------------|
    | custom_title | string | A custom title of the administrator; 0-16 characters without emojis; applicable to supergroups only. |
    | can_be_edited | bool | True, if the current user can edit the administrator privileges for the called user. |
    | rights | chatAdministratorRights | Rights of the administrator. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_member_status_administrator.html).
    """

    defstruct "@type": "chatMemberStatusAdministrator",
              "@extra": nil,
              custom_title: nil,
              can_be_edited: nil,
              rights: nil
  end

  defmodule PremiumGiveawayParticipantStatusAlreadyWasMember do
    @moduledoc """
    The user can't participate in the giveaway, because they have already been member of the chat.

    | Name | Type | Description |
    |------|------| ------------|
    | joined_chat_date | number | Point in time (Unix timestamp) when the user joined the chat. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_giveaway_participant_status_already_was_member.html).
    """

    defstruct "@type": "premiumGiveawayParticipantStatusAlreadyWasMember", "@extra": nil, joined_chat_date: nil
  end

  defmodule AuthenticationCodeType do
    @moduledoc """
    This class is an abstract base class. Provides information about the method by which an authentication code is delivered to the user.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_authentication_code_type.html).
    """

    defstruct "@type": "AuthenticationCodeType", "@extra": nil
  end

  defmodule UpdateChatViewAsTopics do
    @moduledoc """
    A chat default appearance has changed.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |
    | view_as_topics | bool | New value of view_as_topics. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_view_as_topics.html).
    """

    defstruct "@type": "updateChatViewAsTopics", "@extra": nil, chat_id: nil, view_as_topics: nil
  end

  defmodule UpdateChatDefaultDisableNotification do
    @moduledoc """
    The value of the default disable_notification parameter, used when a message is sent to the chat, was changed.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |
    | default_disable_notification | bool | The new default_disable_notification value. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_default_disable_notification.html).
    """

    defstruct "@type": "updateChatDefaultDisableNotification",
              "@extra": nil,
              chat_id: nil,
              default_disable_notification: nil
  end

  defmodule PageBlockSubtitle do
    @moduledoc """
    The subtitle of a page.

    | Name | Type | Description |
    |------|------| ------------|
    | subtitle | RichText | Subtitle. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_subtitle.html).
    """

    defstruct "@type": "pageBlockSubtitle", "@extra": nil, subtitle: nil
  end

  defmodule CallStatePending do
    @moduledoc """
    The call is pending, waiting to be accepted by a user.

    | Name | Type | Description |
    |------|------| ------------|
    | is_created | bool | True, if the call has already been created by the server. |
    | is_received | bool | True, if the call has already been received by the other party. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_state_pending.html).
    """

    defstruct "@type": "callStatePending", "@extra": nil, is_created: nil, is_received: nil
  end

  defmodule InternalLinkTypeUnknownDeepLink do
    @moduledoc """
    The link is an unknown tg: link. Call getDeepLinkInfo to process the link.

    | Name | Type | Description |
    |------|------| ------------|
    | link | string | Link to be passed to getDeepLinkInfo. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_unknown_deep_link.html).
    """

    defstruct "@type": "internalLinkTypeUnknownDeepLink", "@extra": nil, link: nil
  end

  defmodule PremiumFeatureUpgradedStories do
    @moduledoc """
    Allowed to use many additional features for stories.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_feature_upgraded_stories.html).
    """

    defstruct "@type": "premiumFeatureUpgradedStories", "@extra": nil
  end

  defmodule ChatEventTitleChanged do
    @moduledoc """
    The chat title was changed.

    | Name | Type | Description |
    |------|------| ------------|
    | old_title | string | Previous chat title. |
    | new_title | string | New chat title. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_title_changed.html).
    """

    defstruct "@type": "chatEventTitleChanged", "@extra": nil, old_title: nil, new_title: nil
  end

  defmodule PushMessageContentChatSetBackground do
    @moduledoc """
    A chat background was edited.

    | Name | Type | Description |
    |------|------| ------------|
    | is_same | bool | True, if the set background is the same as the background of the current user. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_chat_set_background.html).
    """

    defstruct "@type": "pushMessageContentChatSetBackground", "@extra": nil, is_same: nil
  end

  defmodule MessageExtendedMediaPhoto do
    @moduledoc """
    The media is a photo.

    | Name | Type | Description |
    |------|------| ------------|
    | photo | photo | The photo. |
    | caption | formattedText | Photo caption. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_extended_media_photo.html).
    """

    defstruct "@type": "messageExtendedMediaPhoto", "@extra": nil, photo: nil, caption: nil
  end

  defmodule ChatActionTyping do
    @moduledoc """
    The user is typing a message.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_typing.html).
    """

    defstruct "@type": "chatActionTyping", "@extra": nil
  end

  defmodule PageBlockHeader do
    @moduledoc """
    A header.

    | Name | Type | Description |
    |------|------| ------------|
    | header | RichText | Header. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_header.html).
    """

    defstruct "@type": "pageBlockHeader", "@extra": nil, header: nil
  end

  defmodule UpdateChatPosition do
    @moduledoc """
    The position of a chat in a chat list has changed. An updateChatLastMessage or updateChatDraftMessage update might be sent instead of the update.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |
    | position | chatPosition | New chat position. If new order is 0, then the chat needs to be removed from the list. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_position.html).
    """

    defstruct "@type": "updateChatPosition", "@extra": nil, chat_id: nil, position: nil
  end

  defmodule StorePaymentPurposePremiumSubscription do
    @moduledoc """
    The user subscribing to Telegram Premium.

    | Name | Type | Description |
    |------|------| ------------|
    | is_restore | bool | Pass true if this is a restore of a Telegram Premium purchase; only for App Store. |
    | is_upgrade | bool | Pass true if this is an upgrade from a monthly subscription to early subscription; only for App Store. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1store_payment_purpose_premium_subscription.html).
    """

    defstruct "@type": "storePaymentPurposePremiumSubscription", "@extra": nil, is_restore: nil, is_upgrade: nil
  end

  defmodule AutosaveSettings do
    @moduledoc """
    Describes autosave settings.

    | Name | Type | Description |
    |------|------| ------------|
    | private_chat_settings | scopeAutosaveSettings | Default autosave settings for private chats. |
    | group_settings | scopeAutosaveSettings | Default autosave settings for basic group and supergroup chats. |
    | channel_settings | scopeAutosaveSettings | Default autosave settings for channel chats. |
    | exceptions | autosaveSettingsException | Autosave settings for specific chats. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1autosave_settings.html).
    """

    defstruct "@type": "autosaveSettings",
              "@extra": nil,
              private_chat_settings: nil,
              group_settings: nil,
              channel_settings: nil,
              exceptions: nil
  end

  defmodule InternalLinkTypeUnsupportedProxy do
    @moduledoc """
    The link is a link to an unsupported proxy. An alert can be shown to the user.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_unsupported_proxy.html).
    """

    defstruct "@type": "internalLinkTypeUnsupportedProxy", "@extra": nil
  end

  defmodule InternalLinkTypeBotStart do
    @moduledoc """
    The link is a link to a chat with a Telegram bot. Call searchPublicChat with the given bot username, check that the user is a bot, show START button in the chat with the bot, and then call sendBotStartMessage with the given start parameter after the button is pressed.

    | Name | Type | Description |
    |------|------| ------------|
    | bot_username | string | Username of the bot. |
    | start_parameter | string | The parameter to be passed to sendBotStartMessage. |
    | autostart | bool | True, if sendBotStartMessage must be called automatically without showing the START button. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_bot_start.html).
    """

    defstruct "@type": "internalLinkTypeBotStart",
              "@extra": nil,
              bot_username: nil,
              start_parameter: nil,
              autostart: nil
  end

  defmodule BasicGroup do
    @moduledoc """
    Represents a basic group of 0-200 users (must be upgraded to a supergroup to accommodate more than 200 users).

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Group identifier. |
    | member_count | number | Number of members in the group. |
    | status | ChatMemberStatus | Status of the current user in the group. |
    | is_active | bool | True, if the group is active. |
    | upgraded_to_supergroup_id | string | Identifier of the supergroup to which this group was upgraded; 0 if none. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1basic_group.html).
    """

    defstruct "@type": "basicGroup",
              "@extra": nil,
              id: nil,
              member_count: nil,
              status: nil,
              is_active: nil,
              upgraded_to_supergroup_id: nil
  end

  defmodule ChatBackground do
    @moduledoc """
    Describes a background set for a specific chat.

    | Name | Type | Description |
    |------|------| ------------|
    | background | background | The background. |
    | dark_theme_dimming | number | Dimming of the background in dark themes, as a percentage; 0-100. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_background.html).
    """

    defstruct "@type": "chatBackground", "@extra": nil, background: nil, dark_theme_dimming: nil
  end

  defmodule MessageFileTypeUnknown do
    @moduledoc """
    The messages were exported from a chat of unknown type.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_file_type_unknown.html).
    """

    defstruct "@type": "messageFileTypeUnknown", "@extra": nil
  end

  defmodule Messages do
    @moduledoc """
    Contains a list of messages.

    | Name | Type | Description |
    |------|------| ------------|
    | total_count | number | Approximate total number of messages found. |
    | messages | message | List of messages; messages may be null. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1messages.html).
    """

    defstruct "@type": "messages", "@extra": nil, total_count: nil, messages: nil
  end

  defmodule ChatInviteLinkCount do
    @moduledoc """
    Describes a chat administrator with a number of active and revoked chat invite links.

    | Name | Type | Description |
    |------|------| ------------|
    | user_id | string | Administrator's user identifier. |
    | invite_link_count | number | Number of active invite links. |
    | revoked_invite_link_count | number | Number of revoked invite links. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_invite_link_count.html).
    """

    defstruct "@type": "chatInviteLinkCount",
              "@extra": nil,
              user_id: nil,
              invite_link_count: nil,
              revoked_invite_link_count: nil
  end

  defmodule AuthorizationStateWaitCode do
    @moduledoc """
    TDLib needs the user's authentication code to authorize. Call checkAuthenticationCode to check the code.

    | Name | Type | Description |
    |------|------| ------------|
    | code_info | authenticationCodeInfo | Information about the authorization code that was sent. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authorization_state_wait_code.html).
    """

    defstruct "@type": "authorizationStateWaitCode", "@extra": nil, code_info: nil
  end

  defmodule PremiumLimitTypeCaptionLength do
    @moduledoc """
    The maximum length of sent media caption.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_limit_type_caption_length.html).
    """

    defstruct "@type": "premiumLimitTypeCaptionLength", "@extra": nil
  end

  defmodule BackgroundFillGradient do
    @moduledoc """
    Describes a gradient fill of a background.

    | Name | Type | Description |
    |------|------| ------------|
    | top_color | number | A top color of the background in the RGB24 format. |
    | bottom_color | number | A bottom color of the background in the RGB24 format. |
    | rotation_angle | number | Clockwise rotation angle of the gradient, in degrees; 0-359. Must always be divisible by 45. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1background_fill_gradient.html).
    """

    defstruct "@type": "backgroundFillGradient", "@extra": nil, top_color: nil, bottom_color: nil, rotation_angle: nil
  end

  defmodule Animations do
    @moduledoc """
    Represents a list of animations.

    | Name | Type | Description |
    |------|------| ------------|
    | animations | animation | List of animations. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1animations.html).
    """

    defstruct "@type": "animations", "@extra": nil, animations: nil
  end

  defmodule InputPassportElementErrorSourceReverseSide do
    @moduledoc """
    The reverse side of the document contains an error. The error is considered resolved when the file with the reverse side of the document changes.

    | Name | Type | Description |
    |------|------| ------------|
    | file_hash | bytes | Current hash of the file containing the reverse side. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_passport_element_error_source_reverse_side.html).
    """

    defstruct "@type": "inputPassportElementErrorSourceReverseSide", "@extra": nil, file_hash: nil
  end

  defmodule ChatEventVideoChatEnded do
    @moduledoc """
    A video chat was ended.

    | Name | Type | Description |
    |------|------| ------------|
    | group_call_id | number | Identifier of the video chat. The video chat can be received through the method getGroupCall. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_video_chat_ended.html).
    """

    defstruct "@type": "chatEventVideoChatEnded", "@extra": nil, group_call_id: nil
  end

  defmodule MessageDice do
    @moduledoc """
    A dice message. The dice value is randomly generated by the server.

    | Name | Type | Description |
    |------|------| ------------|
    | initial_state | DiceStickers | The animated stickers with the initial dice animation; may be null if unknown. updateMessageContent will be sent when the sticker became known. |
    | final_state | DiceStickers | The animated stickers with the final dice animation; may be null if unknown. updateMessageContent will be sent when the sticker became known. |
    | emoji | string | Emoji on which the dice throw animation is based. |
    | value | number | The dice value. If the value is 0, the dice don't have final state yet. |
    | success_animation_frame_number | number | Number of frame after which a success animation like a shower of confetti needs to be shown on updateMessageSendSucceeded. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_dice.html).
    """

    defstruct "@type": "messageDice",
              "@extra": nil,
              initial_state: nil,
              final_state: nil,
              emoji: nil,
              value: nil,
              success_animation_frame_number: nil
  end

  defmodule NetworkStatisticsEntryFile do
    @moduledoc """
    Contains information about the total amount of data that was used to send and receive files.

    | Name | Type | Description |
    |------|------| ------------|
    | file_type | FileType | Type of the file the data is part of; pass null if the data isn't related to files. |
    | network_type | NetworkType | Type of the network the data was sent through. Call setNetworkType to maintain the actual network type. |
    | sent_bytes | string | Total number of bytes sent. |
    | received_bytes | string | Total number of bytes received. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1network_statistics_entry_file.html).
    """

    defstruct "@type": "networkStatisticsEntryFile",
              "@extra": nil,
              file_type: nil,
              network_type: nil,
              sent_bytes: nil,
              received_bytes: nil
  end

  defmodule UpdateAuthorizationState do
    @moduledoc """
    The user authorization state has changed.

    | Name | Type | Description |
    |------|------| ------------|
    | authorization_state | AuthorizationState | New authorization state. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_authorization_state.html).
    """

    defstruct "@type": "updateAuthorizationState", "@extra": nil, authorization_state: nil
  end

  defmodule UpdateMessageInteractionInfo do
    @moduledoc """
    The information about interactions with a message has changed.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |
    | message_id | string | Message identifier. |
    | interaction_info | messageInteractionInfo | New information about interactions with the message; may be null. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_message_interaction_info.html).
    """

    defstruct "@type": "updateMessageInteractionInfo",
              "@extra": nil,
              chat_id: nil,
              message_id: nil,
              interaction_info: nil
  end

  defmodule TextEntityTypeCustomEmoji do
    @moduledoc """
    A custom emoji. The text behind a custom emoji must be an emoji. Only premium users can use premium custom emoji.

    | Name | Type | Description |
    |------|------| ------------|
    | custom_emoji_id | string | Unique identifier of the custom emoji. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_custom_emoji.html).
    """

    defstruct "@type": "textEntityTypeCustomEmoji", "@extra": nil, custom_emoji_id: nil
  end

  defmodule UpdateProfileAccentColors do
    @moduledoc """
    The list of supported accent colors for user profiles has changed.

    | Name | Type | Description |
    |------|------| ------------|
    | colors | profileAccentColor | Information about supported colors. |
    | available_accent_color_ids | number | The list of accent color identifiers, which can be set through setProfileAccentColor. The colors must be shown in the specififed order. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_profile_accent_colors.html).
    """

    defstruct "@type": "updateProfileAccentColors", "@extra": nil, colors: nil, available_accent_color_ids: nil
  end

  defmodule UserPrivacySettingRule do
    @moduledoc """
    This class is an abstract base class. Represents a single rule for managing user privacy settings.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_user_privacy_setting_rule.html).
    """

    defstruct "@type": "UserPrivacySettingRule", "@extra": nil
  end

  defmodule ChatBoost do
    @moduledoc """
    Describes a boost applied to a chat.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Unique identifier of the boost. |
    | count | number | The number of identical boosts applied. |
    | source | ChatBoostSource | Source of the boost. |
    | start_date | number | Point in time (Unix timestamp) when the chat was boosted. |
    | expiration_date | number | Point in time (Unix timestamp) when the boost will expire. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_boost.html).
    """

    defstruct "@type": "chatBoost",
              "@extra": nil,
              id: nil,
              count: nil,
              source: nil,
              start_date: nil,
              expiration_date: nil
  end

  defmodule SessionTypeLinux do
    @moduledoc """
    The session is running on a Linux device.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1session_type_linux.html).
    """

    defstruct "@type": "sessionTypeLinux", "@extra": nil
  end

  defmodule PremiumGiftCodePaymentOptions do
    @moduledoc """
    Contains a list of options for creating Telegram Premium gift codes.

    | Name | Type | Description |
    |------|------| ------------|
    | options | premiumGiftCodePaymentOption | The list of options. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_gift_code_payment_options.html).
    """

    defstruct "@type": "premiumGiftCodePaymentOptions", "@extra": nil, options: nil
  end

  defmodule MessageChatShared do
    @moduledoc """
    The current user shared a chat, which was requested by the bot.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Identifier of the shared chat. |
    | button_id | number | Identifier of the keyboard button with the request. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_chat_shared.html).
    """

    defstruct "@type": "messageChatShared", "@extra": nil, chat_id: nil, button_id: nil
  end

  defmodule MessagePaymentSuccessfulBot do
    @moduledoc """
    A payment has been completed; for bots only.

    | Name | Type | Description |
    |------|------| ------------|
    | currency | string | Currency for price of the product. |
    | total_amount | string | Total price for the product, in the smallest units of the currency. |
    | is_recurring | bool | True, if this is a recurring payment. |
    | is_first_recurring | bool | True, if this is the first recurring payment. |
    | invoice_payload | bytes | Invoice payload. |
    | shipping_option_id | string | Identifier of the shipping option chosen by the user; may be empty if not applicable. |
    | order_info | orderInfo | Information about the order; may be null. |
    | telegram_payment_charge_id | string | Telegram payment identifier. |
    | provider_payment_charge_id | string | Provider payment identifier. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_payment_successful_bot.html).
    """

    defstruct "@type": "messagePaymentSuccessfulBot",
              "@extra": nil,
              currency: nil,
              total_amount: nil,
              is_recurring: nil,
              is_first_recurring: nil,
              invoice_payload: nil,
              shipping_option_id: nil,
              order_info: nil,
              telegram_payment_charge_id: nil,
              provider_payment_charge_id: nil
  end

  defmodule UpdateChatAvailableReactions do
    @moduledoc """
    The chat available reactions were changed.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |
    | available_reactions | ChatAvailableReactions | The new reactions, available in the chat. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_available_reactions.html).
    """

    defstruct "@type": "updateChatAvailableReactions", "@extra": nil, chat_id: nil, available_reactions: nil
  end

  defmodule BotCommandScopeChat do
    @moduledoc """
    A scope covering all members of a chat.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1bot_command_scope_chat.html).
    """

    defstruct "@type": "botCommandScopeChat", "@extra": nil, chat_id: nil
  end

  defmodule UpdateChatThemes do
    @moduledoc """
    The list of available chat themes has changed.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_themes | chatTheme | The new list of chat themes. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_themes.html).
    """

    defstruct "@type": "updateChatThemes", "@extra": nil, chat_themes: nil
  end

  defmodule ReportReasonChildAbuse do
    @moduledoc """
    The chat has child abuse related content.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1report_reason_child_abuse.html).
    """

    defstruct "@type": "reportReasonChildAbuse", "@extra": nil
  end

  defmodule MessageCopyOptions do
    @moduledoc """
    Options to be used when a message content is copied without reference to the original sender. Service messages, and messages with messageInvoice or messagePremiumGiveaway content can't be copied.

    | Name | Type | Description |
    |------|------| ------------|
    | send_copy | bool | True, if content of the message needs to be copied without reference to the original sender. Always true if the message is forwarded to a secret chat or is local. |
    | replace_caption | bool | True, if media caption of the message copy needs to be replaced. Ignored if send_copy is false. |
    | new_caption | formattedText | New message caption; pass null to copy message without caption. Ignored if replace_caption is false. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_copy_options.html).
    """

    defstruct "@type": "messageCopyOptions", "@extra": nil, send_copy: nil, replace_caption: nil, new_caption: nil
  end

  defmodule MessageSourceHistoryPreview do
    @moduledoc """
    The message is from chat, message thread or forum topic history preview.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_source_history_preview.html).
    """

    defstruct "@type": "messageSourceHistoryPreview", "@extra": nil
  end

  defmodule InputSticker do
    @moduledoc """
    A sticker to be added to a sticker set.

    | Name | Type | Description |
    |------|------| ------------|
    | sticker | InputFile | File with the sticker; must fit in a 512x512 square. For WEBP stickers the file must be in WEBP or PNG format, which will be converted to WEBP server-side. See https://core.telegram.org/animated_stickers#technical-requirements for technical requirements. |
    | emojis | string | String with 1-20 emoji corresponding to the sticker. |
    | mask_position | maskPosition | Position where the mask is placed; pass null if not specified. |
    | keywords | string | List of up to 20 keywords with total length up to 64 characters, which can be used to find the sticker. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_sticker.html).
    """

    defstruct "@type": "inputSticker", "@extra": nil, sticker: nil, emojis: nil, mask_position: nil, keywords: nil
  end

  defmodule PremiumLimitTypeSimilarChatCount do
    @moduledoc """
    The maximum number of received similar chats.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_limit_type_similar_chat_count.html).
    """

    defstruct "@type": "premiumLimitTypeSimilarChatCount", "@extra": nil
  end

  defmodule CallProblemDropped do
    @moduledoc """
    The call ended unexpectedly.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_problem_dropped.html).
    """

    defstruct "@type": "callProblemDropped", "@extra": nil
  end

  defmodule MessageText do
    @moduledoc """
    A text message.

    | Name | Type | Description |
    |------|------| ------------|
    | text | formattedText | Text of the message. |
    | web_page | webPage | A link preview attached to the message; may be null. |
    | link_preview_options | linkPreviewOptions | Options which were used for generation of the link preview; may be null if default options were used. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_text.html).
    """

    defstruct "@type": "messageText", "@extra": nil, text: nil, web_page: nil, link_preview_options: nil
  end

  defmodule ChatStatisticsObjectTypeStory do
    @moduledoc """
    Describes a story sent by the chat.

    | Name | Type | Description |
    |------|------| ------------|
    | story_id | number | Story identifier. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_statistics_object_type_story.html).
    """

    defstruct "@type": "chatStatisticsObjectTypeStory", "@extra": nil, story_id: nil
  end

  defmodule GroupCallId do
    @moduledoc """
    Contains the group call identifier.

    | Name | Type | Description |
    |------|------| ------------|
    | id | number | Group call identifier. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1group_call_id.html).
    """

    defstruct "@type": "groupCallId", "@extra": nil, id: nil
  end

  defmodule CheckChatUsernameResultPublicChatsTooMany do
    @moduledoc """
    The user has too many chats with username, one of them must be made private first.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1check_chat_username_result_public_chats_too_many.html).
    """

    defstruct "@type": "checkChatUsernameResultPublicChatsTooMany", "@extra": nil
  end

  defmodule ReactionTypeCustomEmoji do
    @moduledoc """
    A reaction with a custom emoji.

    | Name | Type | Description |
    |------|------| ------------|
    | custom_emoji_id | string | Unique identifier of the custom emoji. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1reaction_type_custom_emoji.html).
    """

    defstruct "@type": "reactionTypeCustomEmoji", "@extra": nil, custom_emoji_id: nil
  end

  defmodule StoryContentPhoto do
    @moduledoc """
    A photo story.

    | Name | Type | Description |
    |------|------| ------------|
    | photo | photo | The photo. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1story_content_photo.html).
    """

    defstruct "@type": "storyContentPhoto", "@extra": nil, photo: nil
  end

  defmodule PageBlockHorizontalAlignmentCenter do
    @moduledoc """
    The content must be center-aligned.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_horizontal_alignment_center.html).
    """

    defstruct "@type": "pageBlockHorizontalAlignmentCenter", "@extra": nil
  end

  defmodule NotificationGroupTypeSecretChat do
    @moduledoc """
    A group containing a notification of type notificationTypeNewSecretChat.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1notification_group_type_secret_chat.html).
    """

    defstruct "@type": "notificationGroupTypeSecretChat", "@extra": nil
  end

  defmodule EmailAddressAuthentication do
    @moduledoc """
    This class is an abstract base class. Contains authentication data for a email address.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_email_address_authentication.html).
    """

    defstruct "@type": "EmailAddressAuthentication", "@extra": nil
  end

  defmodule TMeUrlTypeUser do
    @moduledoc """
    A URL linking to a user.

    | Name | Type | Description |
    |------|------| ------------|
    | user_id | string | Identifier of the user. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1t_me_url_type_user.html).
    """

    defstruct "@type": "tMeUrlTypeUser", "@extra": nil, user_id: nil
  end

  defmodule InputMessageText do
    @moduledoc """
    A text message.

    | Name | Type | Description |
    |------|------| ------------|
    | text | formattedText | Formatted text to be sent; 0-getOption("message_text_length_max") characters. Only Bold, Italic, Underline, Strikethrough, Spoiler, CustomEmoji, BlockQuote, Code, Pre, PreCode, TextUrl and MentionName entities are allowed to be specified manually. |
    | link_preview_options | linkPreviewOptions | Options to be used for generation of a link preview; pass null to use default link preview options. |
    | clear_draft | bool | True, if a chat message draft must be deleted. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_text.html).
    """

    defstruct "@type": "inputMessageText", "@extra": nil, text: nil, link_preview_options: nil, clear_draft: nil
  end

  defmodule PushMessageContentRecurringPayment do
    @moduledoc """
    A new recurring payment was made by the current user.

    | Name | Type | Description |
    |------|------| ------------|
    | amount | string | The paid amount. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_recurring_payment.html).
    """

    defstruct "@type": "pushMessageContentRecurringPayment", "@extra": nil, amount: nil
  end

  defmodule MessageOriginChat do
    @moduledoc """
    The message was originally sent on behalf of a chat.

    | Name | Type | Description |
    |------|------| ------------|
    | sender_chat_id | string | Identifier of the chat that originally sent the message. |
    | author_signature | string | For messages originally sent by an anonymous chat administrator, original message author signature. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_origin_chat.html).
    """

    defstruct "@type": "messageOriginChat", "@extra": nil, sender_chat_id: nil, author_signature: nil
  end

  defmodule ChatMemberStatusLeft do
    @moduledoc """
    The user or the chat is not a chat member.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_member_status_left.html).
    """

    defstruct "@type": "chatMemberStatusLeft", "@extra": nil
  end

  defmodule PushMessageContentChatChangePhoto do
    @moduledoc """
    A chat photo was edited.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_chat_change_photo.html).
    """

    defstruct "@type": "pushMessageContentChatChangePhoto", "@extra": nil
  end

  defmodule InlineQueryResultsButtonTypeWebApp do
    @moduledoc """
    Describes the button that opens a Web App by calling getWebAppUrl.

    | Name | Type | Description |
    |------|------| ------------|
    | url | string | An HTTP URL to pass to getWebAppUrl. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_query_results_button_type_web_app.html).
    """

    defstruct "@type": "inlineQueryResultsButtonTypeWebApp", "@extra": nil, url: nil
  end

  defmodule ReportReasonCopyright do
    @moduledoc """
    The chat contains copyrighted content.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1report_reason_copyright.html).
    """

    defstruct "@type": "reportReasonCopyright", "@extra": nil
  end

  defmodule UpdateSecretChat do
    @moduledoc """
    Some data of a secret chat has changed. This update is guaranteed to come before the secret chat identifier is returned to the application.

    | Name | Type | Description |
    |------|------| ------------|
    | secret_chat | secretChat | New data about the secret chat. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_secret_chat.html).
    """

    defstruct "@type": "updateSecretChat", "@extra": nil, secret_chat: nil
  end

  defmodule BackgroundTypePattern do
    @moduledoc """
    A PNG or TGV (gzipped subset of SVG with MIME type "application/x-tgwallpattern") pattern to be combined with the background fill chosen by the user.

    | Name | Type | Description |
    |------|------| ------------|
    | fill | BackgroundFill | Fill of the background. |
    | intensity | number | Intensity of the pattern when it is shown above the filled background; 0-100. |
    | is_inverted | bool | True, if the background fill must be applied only to the pattern itself. All other pixels are black in this case. For dark themes only. |
    | is_moving | bool | True, if the background needs to be slightly moved when device is tilted. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1background_type_pattern.html).
    """

    defstruct "@type": "backgroundTypePattern",
              "@extra": nil,
              fill: nil,
              intensity: nil,
              is_inverted: nil,
              is_moving: nil
  end

  defmodule InputCredentialsNew do
    @moduledoc """
    Applies if a user enters new credentials on a payment provider website.

    | Name | Type | Description |
    |------|------| ------------|
    | data | string | JSON-encoded data with the credential identifier from the payment provider. |
    | allow_save | bool | True, if the credential identifier can be saved on the server side. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_credentials_new.html).
    """

    defstruct "@type": "inputCredentialsNew", "@extra": nil, data: nil, allow_save: nil
  end

  defmodule MessageChatDeleteMember do
    @moduledoc """
    A chat member was deleted.

    | Name | Type | Description |
    |------|------| ------------|
    | user_id | string | User identifier of the deleted chat member. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_chat_delete_member.html).
    """

    defstruct "@type": "messageChatDeleteMember", "@extra": nil, user_id: nil
  end

  defmodule MessageInviteVideoChatParticipants do
    @moduledoc """
    A message with information about an invite to a video chat.

    | Name | Type | Description |
    |------|------| ------------|
    | group_call_id | number | Identifier of the video chat. The video chat can be received through the method getGroupCall. |
    | user_ids | string | Invited user identifiers. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_invite_video_chat_participants.html).
    """

    defstruct "@type": "messageInviteVideoChatParticipants", "@extra": nil, group_call_id: nil, user_ids: nil
  end

  defmodule MaskPoint do
    @moduledoc """
    This class is an abstract base class. Part of the face, relative to which a mask is placed.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_mask_point.html).
    """

    defstruct "@type": "MaskPoint", "@extra": nil
  end

  defmodule UserTypeRegular do
    @moduledoc """
    A regular user.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_type_regular.html).
    """

    defstruct "@type": "userTypeRegular", "@extra": nil
  end

  defmodule InputMessageInvoice do
    @moduledoc """
    A message with an invoice; can be used only by bots.

    | Name | Type | Description |
    |------|------| ------------|
    | invoice | invoice | Invoice. |
    | title | string | Product title; 1-32 characters. |
    | description | string | Product description; 0-255 characters. |
    | photo_url | string | Product photo URL; optional. |
    | photo_size | number | Product photo size. |
    | photo_width | number | Product photo width. |
    | photo_height | number | Product photo height. |
    | payload | bytes | The invoice payload. |
    | provider_token | string | Payment provider token. |
    | provider_data | string | JSON-encoded data about the invoice, which will be shared with the payment provider. |
    | start_parameter | string | Unique invoice bot deep link parameter for the generation of this invoice. If empty, it would be possible to pay directly from forwards of the invoice message. |
    | extended_media_content | InputMessageContent | The content of extended media attached to the invoice. The content of the message to be sent. Must be one of the following types: inputMessagePhoto, inputMessageVideo. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_invoice.html).
    """

    defstruct "@type": "inputMessageInvoice",
              "@extra": nil,
              invoice: nil,
              title: nil,
              description: nil,
              photo_url: nil,
              photo_size: nil,
              photo_width: nil,
              photo_height: nil,
              payload: nil,
              provider_token: nil,
              provider_data: nil,
              start_parameter: nil,
              extended_media_content: nil
  end

  defmodule TextEntityType do
    @moduledoc """
    This class is an abstract base class. Represents a part of the text which must be formatted differently.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_text_entity_type.html).
    """

    defstruct "@type": "TextEntityType", "@extra": nil
  end

  defmodule Ok do
    @moduledoc """
    An object of this type is returned on a successful function call for certain functions.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1ok.html).
    """

    defstruct "@type": "ok", "@extra": nil
  end

  defmodule UserPrivacySettingRuleRestrictUsers do
    @moduledoc """
    A rule to restrict all specified users from doing something.

    | Name | Type | Description |
    |------|------| ------------|
    | user_ids | string | The user identifiers, total number of users in all rules must not exceed 1000. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_privacy_setting_rule_restrict_users.html).
    """

    defstruct "@type": "userPrivacySettingRuleRestrictUsers", "@extra": nil, user_ids: nil
  end

  defmodule PremiumGiveawayParticipantStatusAdministrator do
    @moduledoc """
    The user can't participate in the giveaway, because they are an administrator in one of the chats that created the giveaway.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Identifier of the chat administered by the user. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_giveaway_participant_status_administrator.html).
    """

    defstruct "@type": "premiumGiveawayParticipantStatusAdministrator", "@extra": nil, chat_id: nil
  end

  defmodule CallServer do
    @moduledoc """
    Describes a server for relaying call data.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Server identifier. |
    | ip_address | string | Server IPv4 address. |
    | ipv6_address | string | Server IPv6 address. |
    | port | number | Server port number. |
    | type | CallServerType | Server type. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_server.html).
    """

    defstruct "@type": "callServer", "@extra": nil, id: nil, ip_address: nil, ipv6_address: nil, port: nil, type: nil
  end

  defmodule BotMenuButton do
    @moduledoc """
    Describes a button to be shown instead of bot commands menu button.

    | Name | Type | Description |
    |------|------| ------------|
    | text | string | Text of the button. |
    | url | string | URL to be passed to openWebApp. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1bot_menu_button.html).
    """

    defstruct "@type": "botMenuButton", "@extra": nil, text: nil, url: nil
  end

  defmodule InputFileLocal do
    @moduledoc """
    A file defined by a local path.

    | Name | Type | Description |
    |------|------| ------------|
    | path | string | Local path to the file. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_file_local.html).
    """

    defstruct "@type": "inputFileLocal", "@extra": nil, path: nil
  end

  defmodule PremiumFeatureProfileBadge do
    @moduledoc """
    A badge in the user's profile.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_feature_profile_badge.html).
    """

    defstruct "@type": "premiumFeatureProfileBadge", "@extra": nil
  end

  defmodule MessageSourceChatHistory do
    @moduledoc """
    The message is from a chat history.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_source_chat_history.html).
    """

    defstruct "@type": "messageSourceChatHistory", "@extra": nil
  end

  defmodule ChatEventMessagePinned do
    @moduledoc """
    A message was pinned.

    | Name | Type | Description |
    |------|------| ------------|
    | message | message | Pinned message. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_message_pinned.html).
    """

    defstruct "@type": "chatEventMessagePinned", "@extra": nil, message: nil
  end

  defmodule FileTypeDocument do
    @moduledoc """
    The file is a document.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_document.html).
    """

    defstruct "@type": "fileTypeDocument", "@extra": nil
  end

  defmodule PushMessageContentChatDeleteMember do
    @moduledoc """
    A chat member was deleted.

    | Name | Type | Description |
    |------|------| ------------|
    | member_name | string | Name of the deleted member. |
    | is_current_user | bool | True, if the current user was deleted from the group. |
    | is_left | bool | True, if the user has left the group themselves. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_chat_delete_member.html).
    """

    defstruct "@type": "pushMessageContentChatDeleteMember",
              "@extra": nil,
              member_name: nil,
              is_current_user: nil,
              is_left: nil
  end

  defmodule StickerFullTypeCustomEmoji do
    @moduledoc """
    The sticker is a custom emoji to be used inside message text and caption. Currently, only Telegram Premium users can use custom emoji.

    | Name | Type | Description |
    |------|------| ------------|
    | custom_emoji_id | string | Identifier of the custom emoji. |
    | needs_repainting | bool | True, if the sticker must be repainted to a text color in messages, the color of the Telegram Premium badge in emoji status, white color on chat photos, or another appropriate color in other places. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sticker_full_type_custom_emoji.html).
    """

    defstruct "@type": "stickerFullTypeCustomEmoji", "@extra": nil, custom_emoji_id: nil, needs_repainting: nil
  end

  defmodule BotCommandScopeAllChatAdministrators do
    @moduledoc """
    A scope covering all group and supergroup chat administrators.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1bot_command_scope_all_chat_administrators.html).
    """

    defstruct "@type": "botCommandScopeAllChatAdministrators", "@extra": nil
  end

  defmodule KeyboardButtonTypeRequestChat do
    @moduledoc """
    A button that requests a chat to be shared by the current user; available only in private chats. Use the method shareChatWithBot to complete the request.

    | Name | Type | Description |
    |------|------| ------------|
    | id | number | Unique button identifier. |
    | chat_is_channel | bool | True, if the chat must be a channel; otherwise, a basic group or a supergroup chat is shared. |
    | restrict_chat_is_forum | bool | True, if the chat must or must not be a forum supergroup. |
    | chat_is_forum | bool | True, if the chat must be a forum supergroup; otherwise, the chat must not be a forum supergroup. Ignored if restrict_chat_is_forum is false. |
    | restrict_chat_has_username | bool | True, if the chat must or must not have a username. |
    | chat_has_username | bool | True, if the chat must have a username; otherwise, the chat must not have a username. Ignored if restrict_chat_has_username is false. |
    | chat_is_created | bool | True, if the chat must be created by the current user. |
    | user_administrator_rights | chatAdministratorRights | Expected user administrator rights in the chat; may be null if they aren't restricted. |
    | bot_administrator_rights | chatAdministratorRights | Expected bot administrator rights in the chat; may be null if they aren't restricted. |
    | bot_is_member | bool | True, if the bot must be a member of the chat; for basic group and supergroup chats only. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1keyboard_button_type_request_chat.html).
    """

    defstruct "@type": "keyboardButtonTypeRequestChat",
              "@extra": nil,
              id: nil,
              chat_is_channel: nil,
              restrict_chat_is_forum: nil,
              chat_is_forum: nil,
              restrict_chat_has_username: nil,
              chat_has_username: nil,
              chat_is_created: nil,
              user_administrator_rights: nil,
              bot_administrator_rights: nil,
              bot_is_member: nil
  end

  defmodule InlineKeyboardButtonTypeCallbackWithPassword do
    @moduledoc """
    A button that asks for the 2-step verification password of the current user and then sends a callback query to a bot.

    | Name | Type | Description |
    |------|------| ------------|
    | data | bytes | Data to be sent to the bot via a callback query. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_keyboard_button_type_callback_with_password.html).
    """

    defstruct "@type": "inlineKeyboardButtonTypeCallbackWithPassword", "@extra": nil, data: nil
  end

  defmodule PageBlockHorizontalAlignment do
    @moduledoc """
    This class is an abstract base class. Describes a horizontal alignment of a table cell content.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_page_block_horizontal_alignment.html).
    """

    defstruct "@type": "PageBlockHorizontalAlignment", "@extra": nil
  end

  defmodule UpdateNewPreCheckoutQuery do
    @moduledoc """
    A new incoming pre-checkout query; for bots only. Contains full information about a checkout.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Unique query identifier. |
    | sender_user_id | string | Identifier of the user who sent the query. |
    | currency | string | Currency for the product price. |
    | total_amount | string | Total price for the product, in the smallest units of the currency. |
    | invoice_payload | bytes | Invoice payload. |
    | shipping_option_id | string | Identifier of a shipping option chosen by the user; may be empty if not applicable. |
    | order_info | orderInfo | Information about the order; may be null. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_new_pre_checkout_query.html).
    """

    defstruct "@type": "updateNewPreCheckoutQuery",
              "@extra": nil,
              id: nil,
              sender_user_id: nil,
              currency: nil,
              total_amount: nil,
              invoice_payload: nil,
              shipping_option_id: nil,
              order_info: nil
  end

  defmodule PassportElementTypeIdentityCard do
    @moduledoc """
    A Telegram Passport element containing the user's identity card.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_type_identity_card.html).
    """

    defstruct "@type": "passportElementTypeIdentityCard", "@extra": nil
  end

  defmodule NetworkStatisticsEntryCall do
    @moduledoc """
    Contains information about the total amount of data that was used for calls.

    | Name | Type | Description |
    |------|------| ------------|
    | network_type | NetworkType | Type of the network the data was sent through. Call setNetworkType to maintain the actual network type. |
    | sent_bytes | string | Total number of bytes sent. |
    | received_bytes | string | Total number of bytes received. |
    | duration | double | Total call duration, in seconds. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1network_statistics_entry_call.html).
    """

    defstruct "@type": "networkStatisticsEntryCall",
              "@extra": nil,
              network_type: nil,
              sent_bytes: nil,
              received_bytes: nil,
              duration: nil
  end

  defmodule StatisticalGraph do
    @moduledoc """
    This class is an abstract base class. Describes a statistical graph.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_statistical_graph.html).
    """

    defstruct "@type": "StatisticalGraph", "@extra": nil
  end

  defmodule UpdateNewMessage do
    @moduledoc """
    A new message was received; can also be an outgoing message.

    | Name | Type | Description |
    |------|------| ------------|
    | message | message | The new message. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_new_message.html).
    """

    defstruct "@type": "updateNewMessage", "@extra": nil, message: nil
  end

  defmodule InviteLinkChatTypeChannel do
    @moduledoc """
    The link is an invite link for a channel.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1invite_link_chat_type_channel.html).
    """

    defstruct "@type": "inviteLinkChatTypeChannel", "@extra": nil
  end

  defmodule ConnectionStateReady do
    @moduledoc """
    There is a working connection to the Telegram servers.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1connection_state_ready.html).
    """

    defstruct "@type": "connectionStateReady", "@extra": nil
  end

  defmodule UpdateChatPermissions do
    @moduledoc """
    Chat permissions were changed.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |
    | permissions | chatPermissions | The new chat permissions. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_permissions.html).
    """

    defstruct "@type": "updateChatPermissions", "@extra": nil, chat_id: nil, permissions: nil
  end

  defmodule ProfileAccentColor do
    @moduledoc """
    Contains information about supported accent color for user profile photo background.

    | Name | Type | Description |
    |------|------| ------------|
    | id | number | Profile accent color identifier. |
    | light_theme_colors | profileAccentColors | Description of accent colors expected to be used in light themes. |
    | dark_theme_colors | profileAccentColors | Description of accent colors expected to be used in dark themes. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1profile_accent_color.html).
    """

    defstruct "@type": "profileAccentColor", "@extra": nil, id: nil, light_theme_colors: nil, dark_theme_colors: nil
  end

  defmodule MessageSponsorTypeWebApp do
    @moduledoc """
    The sponsor is a web app.

    | Name | Type | Description |
    |------|------| ------------|
    | web_app_title | string | Web App title. |
    | link | InternalLinkType | An internal link to be opened when the sponsored message is clicked. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_sponsor_type_web_app.html).
    """

    defstruct "@type": "messageSponsorTypeWebApp", "@extra": nil, web_app_title: nil, link: nil
  end

  defmodule InlineQueryResultDocument do
    @moduledoc """
    Represents a document.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Unique identifier of the query result. |
    | document | document | Document. |
    | title | string | Document title. |
    | description | string | Document description. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_query_result_document.html).
    """

    defstruct "@type": "inlineQueryResultDocument", "@extra": nil, id: nil, document: nil, title: nil, description: nil
  end

  defmodule PublicChatType do
    @moduledoc """
    This class is an abstract base class. Describes a type of public chats.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_public_chat_type.html).
    """

    defstruct "@type": "PublicChatType", "@extra": nil
  end

  defmodule UserStatusRecently do
    @moduledoc """
    The user was online recently.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_status_recently.html).
    """

    defstruct "@type": "userStatusRecently", "@extra": nil
  end

  defmodule BankCardInfo do
    @moduledoc """
    Information about a bank card.

    | Name | Type | Description |
    |------|------| ------------|
    | title | string | Title of the bank card description. |
    | actions | bankCardActionOpenUrl | Actions that can be done with the bank card number. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1bank_card_info.html).
    """

    defstruct "@type": "bankCardInfo", "@extra": nil, title: nil, actions: nil
  end

  defmodule InlineKeyboardButtonTypeWebApp do
    @moduledoc """
    A button that opens a Web App by calling openWebApp.

    | Name | Type | Description |
    |------|------| ------------|
    | url | string | An HTTP URL to pass to openWebApp. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_keyboard_button_type_web_app.html).
    """

    defstruct "@type": "inlineKeyboardButtonTypeWebApp", "@extra": nil, url: nil
  end

  defmodule TopChatCategoryUsers do
    @moduledoc """
    A category containing frequently used private chats with non-bot users.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1top_chat_category_users.html).
    """

    defstruct "@type": "topChatCategoryUsers", "@extra": nil
  end

  defmodule PageBlockDivider do
    @moduledoc """
    An empty block separating a page.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_divider.html).
    """

    defstruct "@type": "pageBlockDivider", "@extra": nil
  end

  defmodule PremiumLimitTypeSavedAnimationCount do
    @moduledoc """
    The maximum number of saved animations.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_limit_type_saved_animation_count.html).
    """

    defstruct "@type": "premiumLimitTypeSavedAnimationCount", "@extra": nil
  end

  defmodule TextEntityTypeSpoiler do
    @moduledoc """
    A spoiler text.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_spoiler.html).
    """

    defstruct "@type": "textEntityTypeSpoiler", "@extra": nil
  end

  defmodule ArchiveChatListSettings do
    @moduledoc """
    Contains settings for automatic moving of chats to and from the Archive chat lists.

    | Name | Type | Description |
    |------|------| ------------|
    | archive_and_mute_new_chats_from_unknown_users | bool | True, if new chats from non-contacts will be automatically archived and muted. Can be set to true only if the option "can_archive_and_mute_new_chats_from_unknown_users" is true. |
    | keep_unmuted_chats_archived | bool | True, if unmuted chats will be kept in the Archive chat list when they get a new message. |
    | keep_chats_from_folders_archived | bool | True, if unmuted chats, that are always included or pinned in a folder, will be kept in the Archive chat list when they get a new message. Ignored if keep_unmuted_chats_archived == true. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1archive_chat_list_settings.html).
    """

    defstruct "@type": "archiveChatListSettings",
              "@extra": nil,
              archive_and_mute_new_chats_from_unknown_users: nil,
              keep_unmuted_chats_archived: nil,
              keep_chats_from_folders_archived: nil
  end

  defmodule InlineQueryResultVoiceNote do
    @moduledoc """
    Represents a voice note.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Unique identifier of the query result. |
    | voice_note | voiceNote | Voice note. |
    | title | string | Title of the voice note. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_query_result_voice_note.html).
    """

    defstruct "@type": "inlineQueryResultVoiceNote", "@extra": nil, id: nil, voice_note: nil, title: nil
  end

  defmodule InputMessageAnimation do
    @moduledoc """
    An animation message (GIF-style).

    | Name | Type | Description |
    |------|------| ------------|
    | animation | InputFile | Animation file to be sent. |
    | thumbnail | inputThumbnail | Animation thumbnail; pass null to skip thumbnail uploading. |
    | added_sticker_file_ids | number | File identifiers of the stickers added to the animation, if applicable. |
    | duration | number | Duration of the animation, in seconds. |
    | width | number | Width of the animation; may be replaced by the server. |
    | height | number | Height of the animation; may be replaced by the server. |
    | caption | formattedText | Animation caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters. |
    | has_spoiler | bool | True, if the animation preview must be covered by a spoiler animation; not supported in secret chats. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_animation.html).
    """

    defstruct "@type": "inputMessageAnimation",
              "@extra": nil,
              animation: nil,
              thumbnail: nil,
              added_sticker_file_ids: nil,
              duration: nil,
              width: nil,
              height: nil,
              caption: nil,
              has_spoiler: nil
  end

  defmodule PassportElementsWithErrors do
    @moduledoc """
    Contains information about a Telegram Passport elements and corresponding errors.

    | Name | Type | Description |
    |------|------| ------------|
    | elements | PassportElement | Telegram Passport elements. |
    | errors | passportElementError | Errors in the elements that are already available. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_elements_with_errors.html).
    """

    defstruct "@type": "passportElementsWithErrors", "@extra": nil, elements: nil, errors: nil
  end

  defmodule LogVerbosityLevel do
    @moduledoc """
    Contains a TDLib internal log verbosity level.

    | Name | Type | Description |
    |------|------| ------------|
    | verbosity_level | number | Log verbosity level. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1log_verbosity_level.html).
    """

    defstruct "@type": "logVerbosityLevel", "@extra": nil, verbosity_level: nil
  end

  defmodule InlineKeyboardButtonTypeUser do
    @moduledoc """
    A button with a user reference to be handled in the same way as textEntityTypeMentionName entities.

    | Name | Type | Description |
    |------|------| ------------|
    | user_id | string | User identifier. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_keyboard_button_type_user.html).
    """

    defstruct "@type": "inlineKeyboardButtonTypeUser", "@extra": nil, user_id: nil
  end

  defmodule SpeechRecognitionResultError do
    @moduledoc """
    The speech recognition failed.

    | Name | Type | Description |
    |------|------| ------------|
    | error | error | Recognition error. An error with a message "MSG_VOICE_TOO_LONG" is returned when media duration is too big to be recognized. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1speech_recognition_result_error.html).
    """

    defstruct "@type": "speechRecognitionResultError", "@extra": nil, error: nil
  end

  defmodule TestVectorStringObject do
    @moduledoc """
    A simple object containing a vector of objects that hold a string; for testing only.

    | Name | Type | Description |
    |------|------| ------------|
    | value | testString | Vector of objects. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1test_vector_string_object.html).
    """

    defstruct "@type": "testVectorStringObject", "@extra": nil, value: nil
  end

  defmodule ChatPhotos do
    @moduledoc """
    Contains a list of chat or user profile photos.

    | Name | Type | Description |
    |------|------| ------------|
    | total_count | number | Total number of photos. |
    | photos | chatPhoto | List of photos. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_photos.html).
    """

    defstruct "@type": "chatPhotos", "@extra": nil, total_count: nil, photos: nil
  end

  defmodule DeviceTokenWebPush do
    @moduledoc """
    A token for web Push API.

    | Name | Type | Description |
    |------|------| ------------|
    | endpoint | string | Absolute URL exposed by the push service where the application server can send push messages; may be empty to deregister a device. |
    | p256dh_base64url | string | Base64url-encoded P-256 elliptic curve Diffie-Hellman public key. |
    | auth_base64url | string | Base64url-encoded authentication secret. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1device_token_web_push.html).
    """

    defstruct "@type": "deviceTokenWebPush", "@extra": nil, endpoint: nil, p256dh_base64url: nil, auth_base64url: nil
  end

  defmodule PushMessageContentContactRegistered do
    @moduledoc """
    A contact has registered with Telegram.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_contact_registered.html).
    """

    defstruct "@type": "pushMessageContentContactRegistered", "@extra": nil
  end

  defmodule MessageImportInfo do
    @moduledoc """
    Contains information about a message created with importMessages.

    | Name | Type | Description |
    |------|------| ------------|
    | sender_name | string | Name of the original sender. |
    | date | number | Point in time (Unix timestamp) when the message was originally sent. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_import_info.html).
    """

    defstruct "@type": "messageImportInfo", "@extra": nil, sender_name: nil, date: nil
  end

  defmodule PassportElementEmailAddress do
    @moduledoc """
    A Telegram Passport element containing the user's email address.

    | Name | Type | Description |
    |------|------| ------------|
    | email_address | string | Email address. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_email_address.html).
    """

    defstruct "@type": "passportElementEmailAddress", "@extra": nil, email_address: nil
  end

  defmodule EmailAddressAuthenticationAppleId do
    @moduledoc """
    An authentication token received through Apple ID.

    | Name | Type | Description |
    |------|------| ------------|
    | token | string | The token. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1email_address_authentication_apple_id.html).
    """

    defstruct "@type": "emailAddressAuthenticationAppleId", "@extra": nil, token: nil
  end

  defmodule ReactionTypeEmoji do
    @moduledoc """
    A reaction with an emoji.

    | Name | Type | Description |
    |------|------| ------------|
    | emoji | string | Text representation of the reaction. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1reaction_type_emoji.html).
    """

    defstruct "@type": "reactionTypeEmoji", "@extra": nil, emoji: nil
  end

  defmodule StoryOriginPublicStory do
    @moduledoc """
    The original story was a public story with known sender.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Identifier of the chat that posted original story. |
    | story_id | number | Story identifier of the original story. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1story_origin_public_story.html).
    """

    defstruct "@type": "storyOriginPublicStory", "@extra": nil, chat_id: nil, story_id: nil
  end

  defmodule UserType do
    @moduledoc """
    This class is an abstract base class. Represents the type of a user. The following types are possible: regular users, deleted users and bots.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_user_type.html).
    """

    defstruct "@type": "UserType", "@extra": nil
  end

  defmodule CallState do
    @moduledoc """
    This class is an abstract base class. Describes the current call state.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_call_state.html).
    """

    defstruct "@type": "CallState", "@extra": nil
  end

  defmodule InputMessageAudio do
    @moduledoc """
    An audio message.

    | Name | Type | Description |
    |------|------| ------------|
    | audio | InputFile | Audio file to be sent. |
    | album_cover_thumbnail | inputThumbnail | Thumbnail of the cover for the album; pass null to skip thumbnail uploading. |
    | duration | number | Duration of the audio, in seconds; may be replaced by the server. |
    | title | string | Title of the audio; 0-64 characters; may be replaced by the server. |
    | performer | string | Performer of the audio; 0-64 characters, may be replaced by the server. |
    | caption | formattedText | Audio caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_audio.html).
    """

    defstruct "@type": "inputMessageAudio",
              "@extra": nil,
              audio: nil,
              album_cover_thumbnail: nil,
              duration: nil,
              title: nil,
              performer: nil,
              caption: nil
  end

  defmodule MessageSelfDestructTypeTimer do
    @moduledoc """
    The message will be self-destructed in the specified time after its content was opened.

    | Name | Type | Description |
    |------|------| ------------|
    | self_destruct_time | number | The message's self-destruct time, in seconds; must be between 0 and 60 in private chats. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_self_destruct_type_timer.html).
    """

    defstruct "@type": "messageSelfDestructTypeTimer", "@extra": nil, self_destruct_time: nil
  end

  defmodule ConnectionStateConnectingToProxy do
    @moduledoc """
    Establishing a connection with a proxy server.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1connection_state_connecting_to_proxy.html).
    """

    defstruct "@type": "connectionStateConnectingToProxy", "@extra": nil
  end

  defmodule PushMessageContentSticker do
    @moduledoc """
    A message with a sticker.

    | Name | Type | Description |
    |------|------| ------------|
    | sticker | sticker | Message content; may be null. |
    | emoji | string | Emoji corresponding to the sticker; may be empty. |
    | is_pinned | bool | True, if the message is a pinned message with the specified content. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_sticker.html).
    """

    defstruct "@type": "pushMessageContentSticker", "@extra": nil, sticker: nil, emoji: nil, is_pinned: nil
  end

  defmodule InputPassportElementErrorSource do
    @moduledoc """
    This class is an abstract base class. Contains the description of an error in a Telegram Passport element; for bots only.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_input_passport_element_error_source.html).
    """

    defstruct "@type": "InputPassportElementErrorSource", "@extra": nil
  end

  defmodule PassportElementTypeRentalAgreement do
    @moduledoc """
    A Telegram Passport element containing the user's rental agreement.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_type_rental_agreement.html).
    """

    defstruct "@type": "passportElementTypeRentalAgreement", "@extra": nil
  end

  defmodule InputPassportElementPersonalDetails do
    @moduledoc """
    A Telegram Passport element to be saved containing the user's personal details.

    | Name | Type | Description |
    |------|------| ------------|
    | personal_details | personalDetails | Personal details of the user. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_passport_element_personal_details.html).
    """

    defstruct "@type": "inputPassportElementPersonalDetails", "@extra": nil, personal_details: nil
  end

  defmodule ChatEventMessageUnpinned do
    @moduledoc """
    A message was unpinned.

    | Name | Type | Description |
    |------|------| ------------|
    | message | message | Unpinned message. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_message_unpinned.html).
    """

    defstruct "@type": "chatEventMessageUnpinned", "@extra": nil, message: nil
  end

  defmodule SupergroupMembersFilterMention do
    @moduledoc """
    Returns users which can be mentioned in the supergroup.

    | Name | Type | Description |
    |------|------| ------------|
    | query | string | Query to search for. |
    | message_thread_id | string | If non-zero, the identifier of the current message thread. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1supergroup_members_filter_mention.html).
    """

    defstruct "@type": "supergroupMembersFilterMention", "@extra": nil, query: nil, message_thread_id: nil
  end

  defmodule InputPassportElementInternalPassport do
    @moduledoc """
    A Telegram Passport element to be saved containing the user's internal passport.

    | Name | Type | Description |
    |------|------| ------------|
    | internal_passport | inputIdentityDocument | The internal passport to be saved. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_passport_element_internal_passport.html).
    """

    defstruct "@type": "inputPassportElementInternalPassport", "@extra": nil, internal_passport: nil
  end

  defmodule TextEntityTypeBlockQuote do
    @moduledoc """
    Text that must be formatted as if inside a blockquote HTML tag.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_block_quote.html).
    """

    defstruct "@type": "textEntityTypeBlockQuote", "@extra": nil
  end

  defmodule MessageCalendarDay do
    @moduledoc """
    Contains information about found messages sent on a specific day.

    | Name | Type | Description |
    |------|------| ------------|
    | total_count | number | Total number of found messages sent on the day. |
    | message | message | First message sent on the day. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_calendar_day.html).
    """

    defstruct "@type": "messageCalendarDay", "@extra": nil, total_count: nil, message: nil
  end

  defmodule InputInlineQueryResultAnimation do
    @moduledoc """
    Represents a link to an animated GIF or an animated (i.e., without sound) H.264/MPEG-4 AVC video.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Unique identifier of the query result. |
    | title | string | Title of the query result. |
    | thumbnail_url | string | URL of the result thumbnail (JPEG, GIF, or MPEG4), if it exists. |
    | thumbnail_mime_type | string | MIME type of the video thumbnail. If non-empty, must be one of "image/jpeg", "image/gif" and "video/mp4". |
    | video_url | string | The URL of the video file (file size must not exceed 1MB). |
    | video_mime_type | string | MIME type of the video file. Must be one of "image/gif" and "video/mp4". |
    | video_duration | number | Duration of the video, in seconds. |
    | video_width | number | Width of the video. |
    | video_height | number | Height of the video. |
    | reply_markup | ReplyMarkup | The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null. |
    | input_message_content | InputMessageContent | The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageAnimation, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_inline_query_result_animation.html).
    """

    defstruct "@type": "inputInlineQueryResultAnimation",
              "@extra": nil,
              id: nil,
              title: nil,
              thumbnail_url: nil,
              thumbnail_mime_type: nil,
              video_url: nil,
              video_mime_type: nil,
              video_duration: nil,
              video_width: nil,
              video_height: nil,
              reply_markup: nil,
              input_message_content: nil
  end

  defmodule ChatListArchive do
    @moduledoc """
    A list of chats usually located at the top of the main chat list. Unmuted chats are automatically moved from the Archive to the Main chat list when a new message arrives.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_list_archive.html).
    """

    defstruct "@type": "chatListArchive", "@extra": nil
  end

  defmodule PassportElementErrorSourceTranslationFile do
    @moduledoc """
    One of files with the translation of the document contains an error. The error will be considered resolved when the file changes.

    | Name | Type | Description |
    |------|------| ------------|
    | file_index | number | Index of a file with the error. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_error_source_translation_file.html).
    """

    defstruct "@type": "passportElementErrorSourceTranslationFile", "@extra": nil, file_index: nil
  end

  defmodule RichTextFixed do
    @moduledoc """
    A fixed-width rich text.

    | Name | Type | Description |
    |------|------| ------------|
    | text | RichText | Text. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1rich_text_fixed.html).
    """

    defstruct "@type": "richTextFixed", "@extra": nil, text: nil
  end

  defmodule MessageSupergroupChatCreate do
    @moduledoc """
    A newly created supergroup or channel.

    | Name | Type | Description |
    |------|------| ------------|
    | title | string | Title of the supergroup or channel. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_supergroup_chat_create.html).
    """

    defstruct "@type": "messageSupergroupChatCreate", "@extra": nil, title: nil
  end

  defmodule ChatFolderInfo do
    @moduledoc """
    Contains basic information about a chat folder.

    | Name | Type | Description |
    |------|------| ------------|
    | id | number | Unique chat folder identifier. |
    | title | string | The title of the folder; 1-12 characters without line feeds. |
    | icon | chatFolderIcon | The chosen or default icon for the chat folder. |
    | is_shareable | bool | True, if at least one link has been created for the folder. |
    | has_my_invite_links | bool | True, if the chat folder has invite links created by the current user. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_folder_info.html).
    """

    defstruct "@type": "chatFolderInfo",
              "@extra": nil,
              id: nil,
              title: nil,
              icon: nil,
              is_shareable: nil,
              has_my_invite_links: nil
  end

  defmodule PremiumLimitTypeStoryCaptionLength do
    @moduledoc """
    The maximum length of captions of sent stories.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_limit_type_story_caption_length.html).
    """

    defstruct "@type": "premiumLimitTypeStoryCaptionLength", "@extra": nil
  end

  defmodule TestString do
    @moduledoc """
    A simple object containing a string; for testing only.

    | Name | Type | Description |
    |------|------| ------------|
    | value | string | String. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1test_string.html).
    """

    defstruct "@type": "testString", "@extra": nil, value: nil
  end

  defmodule ChatJoinRequestsInfo do
    @moduledoc """
    Contains information about pending join requests for a chat.

    | Name | Type | Description |
    |------|------| ------------|
    | total_count | number | Total number of pending join requests. |
    | user_ids | string | Identifiers of at most 3 users sent the newest pending join requests. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_join_requests_info.html).
    """

    defstruct "@type": "chatJoinRequestsInfo", "@extra": nil, total_count: nil, user_ids: nil
  end

  defmodule ScopeNotificationSettings do
    @moduledoc """
    Contains information about notification settings for several chats.

    | Name | Type | Description |
    |------|------| ------------|
    | mute_for | number | Time left before notifications will be unmuted, in seconds. |
    | sound_id | string | Identifier of the notification sound to be played; 0 if sound is disabled. |
    | show_preview | bool | True, if message content must be displayed in notifications. |
    | use_default_mute_stories | bool | If true, story notifications are received only for the first 5 chats from topChatCategoryUsers regardless of the value of mute_stories. |
    | mute_stories | bool | True, if story notifications are disabled. |
    | story_sound_id | string | Identifier of the notification sound to be played for stories; 0 if sound is disabled. |
    | show_story_sender | bool | True, if the sender of stories must be displayed in notifications. |
    | disable_pinned_message_notifications | bool | True, if notifications for incoming pinned messages will be created as for an ordinary unread message. |
    | disable_mention_notifications | bool | True, if notifications for messages with mentions will be created as for an ordinary unread message. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1scope_notification_settings.html).
    """

    defstruct "@type": "scopeNotificationSettings",
              "@extra": nil,
              mute_for: nil,
              sound_id: nil,
              show_preview: nil,
              use_default_mute_stories: nil,
              mute_stories: nil,
              story_sound_id: nil,
              show_story_sender: nil,
              disable_pinned_message_notifications: nil,
              disable_mention_notifications: nil
  end

  defmodule LogTags do
    @moduledoc """
    Contains a list of available TDLib internal log tags.

    | Name | Type | Description |
    |------|------| ------------|
    | tags | string | List of log tags. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1log_tags.html).
    """

    defstruct "@type": "logTags", "@extra": nil, tags: nil
  end

  defmodule MessagePassportDataReceived do
    @moduledoc """
    Telegram Passport data has been received; for bots only.

    | Name | Type | Description |
    |------|------| ------------|
    | elements | encryptedPassportElement | List of received Telegram Passport elements. |
    | credentials | encryptedCredentials | Encrypted data credentials. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_passport_data_received.html).
    """

    defstruct "@type": "messagePassportDataReceived", "@extra": nil, elements: nil, credentials: nil
  end

  defmodule InternalLinkTypeMessage do
    @moduledoc """
    The link is a link to a Telegram message or a forum topic. Call getMessageLinkInfo with the given URL to process the link.

    | Name | Type | Description |
    |------|------| ------------|
    | url | string | URL to be passed to getMessageLinkInfo. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_message.html).
    """

    defstruct "@type": "internalLinkTypeMessage", "@extra": nil, url: nil
  end

  defmodule AutosaveSettingsScope do
    @moduledoc """
    This class is an abstract base class. Describes scope of autosave settings.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_autosave_settings_scope.html).
    """

    defstruct "@type": "AutosaveSettingsScope", "@extra": nil
  end

  defmodule UpdateStoryStealthMode do
    @moduledoc """
    Story stealth mode settings have changed.

    | Name | Type | Description |
    |------|------| ------------|
    | active_until_date | number | Point in time (Unix timestamp) until stealth mode is active; 0 if it is disabled. |
    | cooldown_until_date | number | Point in time (Unix timestamp) when stealth mode can be enabled again; 0 if there is no active cooldown. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_story_stealth_mode.html).
    """

    defstruct "@type": "updateStoryStealthMode", "@extra": nil, active_until_date: nil, cooldown_until_date: nil
  end

  defmodule InternalLinkTypeUserPhoneNumber do
    @moduledoc """
    The link is a link to a user by its phone number. Call searchUserByPhoneNumber with the given phone number to process the link.

    | Name | Type | Description |
    |------|------| ------------|
    | phone_number | string | Phone number of the user. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_user_phone_number.html).
    """

    defstruct "@type": "internalLinkTypeUserPhoneNumber", "@extra": nil, phone_number: nil
  end

  defmodule TextEntityTypePre do
    @moduledoc """
    Text that must be formatted as if inside a pre HTML tag.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_pre.html).
    """

    defstruct "@type": "textEntityTypePre", "@extra": nil
  end

  defmodule ChatEventAction do
    @moduledoc """
    This class is an abstract base class. Represents a chat event.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_chat_event_action.html).
    """

    defstruct "@type": "ChatEventAction", "@extra": nil
  end

  defmodule ChatStatisticsMessageSenderInfo do
    @moduledoc """
    Contains statistics about messages sent by a user.

    | Name | Type | Description |
    |------|------| ------------|
    | user_id | string | User identifier. |
    | sent_message_count | number | Number of sent messages. |
    | average_character_count | number | Average number of characters in sent messages; 0 if unknown. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_statistics_message_sender_info.html).
    """

    defstruct "@type": "chatStatisticsMessageSenderInfo",
              "@extra": nil,
              user_id: nil,
              sent_message_count: nil,
              average_character_count: nil
  end

  defmodule StorePaymentPurposePremiumGiftCodes do
    @moduledoc """
    The user creating Telegram Premium gift codes for other users.

    | Name | Type | Description |
    |------|------| ------------|
    | boosted_chat_id | string | Identifier of the channel chat, which will be automatically boosted by the users for duration of the Premium subscription and which is administered by the user; 0 if none. |
    | currency | string | ISO 4217 currency code of the payment currency. |
    | amount | string | Paid amount, in the smallest units of the currency. |
    | user_ids | string | Identifiers of the users which can activate the gift codes. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1store_payment_purpose_premium_gift_codes.html).
    """

    defstruct "@type": "storePaymentPurposePremiumGiftCodes",
              "@extra": nil,
              boosted_chat_id: nil,
              currency: nil,
              amount: nil,
              user_ids: nil
  end

  defmodule PushMessageContent do
    @moduledoc """
    This class is an abstract base class. Contains content of a push message notification.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_push_message_content.html).
    """

    defstruct "@type": "PushMessageContent", "@extra": nil
  end

  defmodule Text do
    @moduledoc """
    Contains some text.

    | Name | Type | Description |
    |------|------| ------------|
    | text | string | Text. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text.html).
    """

    defstruct "@type": "text", "@extra": nil, text: nil
  end

  defmodule ChatEventIsForumToggled do
    @moduledoc """
    The is_forum setting of a channel was toggled.

    | Name | Type | Description |
    |------|------| ------------|
    | is_forum | bool | New value of is_forum. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_is_forum_toggled.html).
    """

    defstruct "@type": "chatEventIsForumToggled", "@extra": nil, is_forum: nil
  end

  defmodule MessageCalendar do
    @moduledoc """
    Contains information about found messages, split by days according to the option "utc_time_offset".

    | Name | Type | Description |
    |------|------| ------------|
    | total_count | number | Total number of found messages. |
    | days | messageCalendarDay | Information about messages sent. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_calendar.html).
    """

    defstruct "@type": "messageCalendar", "@extra": nil, total_count: nil, days: nil
  end

  defmodule ForumTopics do
    @moduledoc """
    Describes a list of forum topics.

    | Name | Type | Description |
    |------|------| ------------|
    | total_count | number | Approximate total number of forum topics found. |
    | topics | forumTopic | List of forum topics. |
    | next_offset_date | number | Offset date for the next getForumTopics request. |
    | next_offset_message_id | string | Offset message identifier for the next getForumTopics request. |
    | next_offset_message_thread_id | string | Offset message thread identifier for the next getForumTopics request. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1forum_topics.html).
    """

    defstruct "@type": "forumTopics",
              "@extra": nil,
              total_count: nil,
              topics: nil,
              next_offset_date: nil,
              next_offset_message_id: nil,
              next_offset_message_thread_id: nil
  end

  defmodule FileTypeVideo do
    @moduledoc """
    The file is a video.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_video.html).
    """

    defstruct "@type": "fileTypeVideo", "@extra": nil
  end

  defmodule UpdateAddChatMembersPrivacyForbidden do
    @moduledoc """
    Adding users to a chat has failed because of their privacy settings. An invite link can be shared with the users if appropriate.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |
    | user_ids | string | Identifiers of users, which weren't added because of their privacy settings. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_add_chat_members_privacy_forbidden.html).
    """

    defstruct "@type": "updateAddChatMembersPrivacyForbidden", "@extra": nil, chat_id: nil, user_ids: nil
  end

  defmodule ChatTypeBasicGroup do
    @moduledoc """
    A basic group (a chat with 0-200 other users).

    | Name | Type | Description |
    |------|------| ------------|
    | basic_group_id | string | Basic group identifier. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_type_basic_group.html).
    """

    defstruct "@type": "chatTypeBasicGroup", "@extra": nil, basic_group_id: nil
  end

  defmodule LanguagePackStringValueDeleted do
    @moduledoc """
    A deleted language pack string, the value must be taken from the built-in English language pack.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1language_pack_string_value_deleted.html).
    """

    defstruct "@type": "languagePackStringValueDeleted", "@extra": nil
  end

  defmodule TextEntityTypeTextUrl do
    @moduledoc """
    A text description shown instead of a raw URL.

    | Name | Type | Description |
    |------|------| ------------|
    | url | string | HTTP or tg:// URL to be opened when the link is clicked. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_text_url.html).
    """

    defstruct "@type": "textEntityTypeTextUrl", "@extra": nil, url: nil
  end

  defmodule CallDiscardReasonMissed do
    @moduledoc """
    The call was ended before the conversation started. It was canceled by the caller or missed by the other party.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_discard_reason_missed.html).
    """

    defstruct "@type": "callDiscardReasonMissed", "@extra": nil
  end

  defmodule ChatActionBarReportAddBlock do
    @moduledoc """
    The chat is a private or secret chat, which can be reported using the method reportChat, or the other user can be blocked using the method setMessageSenderBlockList, or the other user can be added to the contact list using the method addContact. If the chat is a private chat with a user with an emoji status, then a notice about emoji status usage must be shown.

    | Name | Type | Description |
    |------|------| ------------|
    | can_unarchive | bool | If true, the chat was automatically archived and can be moved back to the main chat list using addChatToList simultaneously with setting chat notification settings to default using setChatNotificationSettings. |
    | distance | number | If non-negative, the current user was found by the other user through searchChatsNearby and this is the distance between the users. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_bar_report_add_block.html).
    """

    defstruct "@type": "chatActionBarReportAddBlock", "@extra": nil, can_unarchive: nil, distance: nil
  end

  defmodule StorageStatisticsByFileType do
    @moduledoc """
    Contains the storage usage statistics for a specific file type.

    | Name | Type | Description |
    |------|------| ------------|
    | file_type | FileType | File type. |
    | size | string | Total size of the files, in bytes. |
    | count | number | Total number of files. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1storage_statistics_by_file_type.html).
    """

    defstruct "@type": "storageStatisticsByFileType", "@extra": nil, file_type: nil, size: nil, count: nil
  end

  defmodule FileTypeProfilePhoto do
    @moduledoc """
    The file is a profile photo.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_profile_photo.html).
    """

    defstruct "@type": "fileTypeProfilePhoto", "@extra": nil
  end

  defmodule NotificationSettingsScopePrivateChats do
    @moduledoc """
    Notification settings applied to all private and secret chats when the corresponding chat setting has a default value.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1notification_settings_scope_private_chats.html).
    """

    defstruct "@type": "notificationSettingsScopePrivateChats", "@extra": nil
  end

  defmodule UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages do
    @moduledoc """
    A privacy setting for managing whether the user can receive voice and video messages in private chats.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_privacy_setting_allow_private_voice_and_video_note_messages.html).
    """

    defstruct "@type": "userPrivacySettingAllowPrivateVoiceAndVideoNoteMessages", "@extra": nil
  end

  defmodule MessageAutoDeleteTime do
    @moduledoc """
    Contains default auto-delete timer setting for new chats.

    | Name | Type | Description |
    |------|------| ------------|
    | time | number | Message auto-delete time, in seconds. If 0, then messages aren't deleted automatically. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_auto_delete_time.html).
    """

    defstruct "@type": "messageAutoDeleteTime", "@extra": nil, time: nil
  end

  defmodule PageBlockEmbedded do
    @moduledoc """
    An embedded web page.

    | Name | Type | Description |
    |------|------| ------------|
    | url | string | Web page URL, if available. |
    | html | string | HTML-markup of the embedded page. |
    | poster_photo | photo | Poster photo, if available; may be null. |
    | width | number | Block width; 0 if unknown. |
    | height | number | Block height; 0 if unknown. |
    | caption | pageBlockCaption | Block caption. |
    | is_full_width | bool | True, if the block must be full width. |
    | allow_scrolling | bool | True, if scrolling needs to be allowed. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_embedded.html).
    """

    defstruct "@type": "pageBlockEmbedded",
              "@extra": nil,
              url: nil,
              html: nil,
              poster_photo: nil,
              width: nil,
              height: nil,
              caption: nil,
              is_full_width: nil,
              allow_scrolling: nil
  end

  defmodule LocalizationTargetInfo do
    @moduledoc """
    Contains information about the current localization target.

    | Name | Type | Description |
    |------|------| ------------|
    | language_packs | languagePackInfo | List of available language packs for this application. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1localization_target_info.html).
    """

    defstruct "@type": "localizationTargetInfo", "@extra": nil, language_packs: nil
  end

  defmodule BotWriteAccessAllowReasonLaunchedWebApp do
    @moduledoc """
    The user launched a Web App using getWebAppLinkUrl.

    | Name | Type | Description |
    |------|------| ------------|
    | web_app | webApp | Information about the Web App. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1bot_write_access_allow_reason_launched_web_app.html).
    """

    defstruct "@type": "botWriteAccessAllowReasonLaunchedWebApp", "@extra": nil, web_app: nil
  end

  defmodule PageBlockMap do
    @moduledoc """
    A map.

    | Name | Type | Description |
    |------|------| ------------|
    | location | location | Location of the map center. |
    | zoom | number | Map zoom level. |
    | width | number | Map width. |
    | height | number | Map height. |
    | caption | pageBlockCaption | Block caption. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_map.html).
    """

    defstruct "@type": "pageBlockMap", "@extra": nil, location: nil, zoom: nil, width: nil, height: nil, caption: nil
  end

  defmodule StoryAreaTypeSuggestedReaction do
    @moduledoc """
    An area pointing to a suggested reaction. App needs to show a clickable reaction on the area and call setStoryReaction when the are is clicked.

    | Name | Type | Description |
    |------|------| ------------|
    | reaction_type | ReactionType | Type of the reaction. |
    | total_count | number | Number of times the reaction was added. |
    | is_dark | bool | True, if reaction has a dark background. |
    | is_flipped | bool | True, if reaction corner is flipped. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1story_area_type_suggested_reaction.html).
    """

    defstruct "@type": "storyAreaTypeSuggestedReaction",
              "@extra": nil,
              reaction_type: nil,
              total_count: nil,
              is_dark: nil,
              is_flipped: nil
  end

  defmodule UserPrivacySettingAllowPeerToPeerCalls do
    @moduledoc """
    A privacy setting for managing whether peer-to-peer connections can be used for calls.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_privacy_setting_allow_peer_to_peer_calls.html).
    """

    defstruct "@type": "userPrivacySettingAllowPeerToPeerCalls", "@extra": nil
  end

  defmodule UpdateAnimationSearchParameters do
    @moduledoc """
    The parameters of animation search through getOption("animation_search_bot_username") bot has changed.

    | Name | Type | Description |
    |------|------| ------------|
    | provider | string | Name of the animation search provider. |
    | emojis | string | The new list of emojis suggested for searching. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_animation_search_parameters.html).
    """

    defstruct "@type": "updateAnimationSearchParameters", "@extra": nil, provider: nil, emojis: nil
  end

  defmodule InputThumbnail do
    @moduledoc """
    A thumbnail to be sent along with a file; must be in JPEG or WEBP format for stickers, and less than 200 KB in size.

    | Name | Type | Description |
    |------|------| ------------|
    | thumbnail | InputFile | Thumbnail file to send. Sending thumbnails by file_id is currently not supported. |
    | width | number | Thumbnail width, usually shouldn't exceed 320. Use 0 if unknown. |
    | height | number | Thumbnail height, usually shouldn't exceed 320. Use 0 if unknown. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_thumbnail.html).
    """

    defstruct "@type": "inputThumbnail", "@extra": nil, thumbnail: nil, width: nil, height: nil
  end

  defmodule PremiumFeature do
    @moduledoc """
    This class is an abstract base class. Describes a feature available to Premium users.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_premium_feature.html).
    """

    defstruct "@type": "PremiumFeature", "@extra": nil
  end

  defmodule PollTypeRegular do
    @moduledoc """
    A regular poll.

    | Name | Type | Description |
    |------|------| ------------|
    | allow_multiple_answers | bool | True, if multiple answer options can be chosen simultaneously. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1poll_type_regular.html).
    """

    defstruct "@type": "pollTypeRegular", "@extra": nil, allow_multiple_answers: nil
  end

  defmodule ChatJoinRequest do
    @moduledoc """
    Describes a user that sent a join request and waits for administrator approval.

    | Name | Type | Description |
    |------|------| ------------|
    | user_id | string | User identifier. |
    | date | number | Point in time (Unix timestamp) when the user sent the join request. |
    | bio | string | A short bio of the user. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_join_request.html).
    """

    defstruct "@type": "chatJoinRequest", "@extra": nil, user_id: nil, date: nil, bio: nil
  end

  defmodule InputMessageDocument do
    @moduledoc """
    A document message (general file).

    | Name | Type | Description |
    |------|------| ------------|
    | document | InputFile | Document to be sent. |
    | thumbnail | inputThumbnail | Document thumbnail; pass null to skip thumbnail uploading. |
    | disable_content_type_detection | bool | Pass true to disable automatic file type detection and send the document as a file. Always true for files sent to secret chats. |
    | caption | formattedText | Document caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_document.html).
    """

    defstruct "@type": "inputMessageDocument",
              "@extra": nil,
              document: nil,
              thumbnail: nil,
              disable_content_type_detection: nil,
              caption: nil
  end

  defmodule KeyboardButtonTypeRequestLocation do
    @moduledoc """
    A button that sends the user's location when pressed; available only in private chats.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1keyboard_button_type_request_location.html).
    """

    defstruct "@type": "keyboardButtonTypeRequestLocation", "@extra": nil
  end

  defmodule UpdateNewCallSignalingData do
    @moduledoc """
    New call signaling data arrived.

    | Name | Type | Description |
    |------|------| ------------|
    | call_id | number | The call identifier. |
    | data | bytes | The data. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_new_call_signaling_data.html).
    """

    defstruct "@type": "updateNewCallSignalingData", "@extra": nil, call_id: nil, data: nil
  end

  defmodule UpdateChatReadInbox do
    @moduledoc """
    Incoming messages were read or the number of unread messages has been changed.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |
    | last_read_inbox_message_id | string | Identifier of the last read incoming message. |
    | unread_count | number | The number of unread messages left in the chat. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_read_inbox.html).
    """

    defstruct "@type": "updateChatReadInbox",
              "@extra": nil,
              chat_id: nil,
              last_read_inbox_message_id: nil,
              unread_count: nil
  end

  defmodule UserFullInfo do
    @moduledoc """
    Contains full information about a user.

    | Name | Type | Description |
    |------|------| ------------|
    | personal_photo | chatPhoto | User profile photo set by the current user for the contact; may be null. If null and user.profile_photo is null, then the photo is empty; otherwise, it is unknown. If non-null, then it is the same photo as in user.profile_photo and chat.photo. This photo isn't returned in the list of user photos. |
    | photo | chatPhoto | User profile photo; may be null. If null and user.profile_photo is null, then the photo is empty; otherwise, it is unknown. If non-null and personal_photo is null, then it is the same photo as in user.profile_photo and chat.photo. |
    | public_photo | chatPhoto | User profile photo visible if the main photo is hidden by privacy settings; may be null. If null and user.profile_photo is null, then the photo is empty; otherwise, it is unknown. If non-null and both photo and personal_photo are null, then it is the same photo as in user.profile_photo and chat.photo. This photo isn't returned in the list of user photos. |
    | block_list | BlockList | Block list to which the user is added; may be null if none. |
    | can_be_called | bool | True, if the user can be called. |
    | supports_video_calls | bool | True, if a video call can be created with the user. |
    | has_private_calls | bool | True, if the user can't be called due to their privacy settings. |
    | has_private_forwards | bool | True, if the user can't be linked in forwarded messages due to their privacy settings. |
    | has_restricted_voice_and_video_note_messages | bool | True, if voice and video notes can't be sent or forwarded to the user. |
    | has_pinned_stories | bool | True, if the user has pinned stories. |
    | need_phone_number_privacy_exception | bool | True, if the current user needs to explicitly allow to share their phone number with the user when the method addContact is used. |
    | set_chat_background | bool | True, if the user set chat background for both chat users and it wasn't reverted yet. |
    | bio | formattedText | A short user bio; may be null for bots. |
    | premium_gift_options | premiumPaymentOption | The list of available options for gifting Telegram Premium to the user. |
    | group_in_common_count | number | Number of group chats where both the other user and the current user are a member; 0 for the current user. |
    | bot_info | botInfo | For bots, information about the bot; may be null if the user isn't a bot. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_full_info.html).
    """

    defstruct "@type": "userFullInfo",
              "@extra": nil,
              personal_photo: nil,
              photo: nil,
              public_photo: nil,
              block_list: nil,
              can_be_called: nil,
              supports_video_calls: nil,
              has_private_calls: nil,
              has_private_forwards: nil,
              has_restricted_voice_and_video_note_messages: nil,
              has_pinned_stories: nil,
              need_phone_number_privacy_exception: nil,
              set_chat_background: nil,
              bio: nil,
              premium_gift_options: nil,
              group_in_common_count: nil,
              bot_info: nil
  end

  defmodule InputPassportElementErrorSourceFile do
    @moduledoc """
    The file contains an error. The error is considered resolved when the file changes.

    | Name | Type | Description |
    |------|------| ------------|
    | file_hash | bytes | Current hash of the file which has the error. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_passport_element_error_source_file.html).
    """

    defstruct "@type": "inputPassportElementErrorSourceFile", "@extra": nil, file_hash: nil
  end

  defmodule UpdateNewChosenInlineResult do
    @moduledoc """
    The user has chosen a result of an inline query; for bots only.

    | Name | Type | Description |
    |------|------| ------------|
    | sender_user_id | string | Identifier of the user who sent the query. |
    | user_location | location | User location; may be null. |
    | query | string | Text of the query. |
    | result_id | string | Identifier of the chosen result. |
    | inline_message_id | string | Identifier of the sent inline message, if known. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_new_chosen_inline_result.html).
    """

    defstruct "@type": "updateNewChosenInlineResult",
              "@extra": nil,
              sender_user_id: nil,
              user_location: nil,
              query: nil,
              result_id: nil,
              inline_message_id: nil
  end

  defmodule CallStateExchangingKeys do
    @moduledoc """
    The call has been answered and encryption keys are being exchanged.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_state_exchanging_keys.html).
    """

    defstruct "@type": "callStateExchangingKeys", "@extra": nil
  end

  defmodule PremiumGiveawayInfoOngoing do
    @moduledoc """
    Describes an ongoing giveaway.

    | Name | Type | Description |
    |------|------| ------------|
    | creation_date | number | Point in time (Unix timestamp) when the giveaway was created. |
    | status | PremiumGiveawayParticipantStatus | Status of the current user in the giveaway. |
    | is_ended | bool | True, if the giveaway has ended and results are being prepared. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_giveaway_info_ongoing.html).
    """

    defstruct "@type": "premiumGiveawayInfoOngoing", "@extra": nil, creation_date: nil, status: nil, is_ended: nil
  end

  defmodule SessionTypeIphone do
    @moduledoc """
    The session is running on an iPhone device.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1session_type_iphone.html).
    """

    defstruct "@type": "sessionTypeIphone", "@extra": nil
  end

  defmodule Contact do
    @moduledoc """
    Describes a user contact.

    | Name | Type | Description |
    |------|------| ------------|
    | phone_number | string | Phone number of the user. |
    | first_name | string | First name of the user; 1-255 characters in length. |
    | last_name | string | Last name of the user. |
    | vcard | string | Additional data about the user in a form of vCard; 0-2048 bytes in length. |
    | user_id | string | Identifier of the user, if known; 0 otherwise. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1contact.html).
    """

    defstruct "@type": "contact",
              "@extra": nil,
              phone_number: nil,
              first_name: nil,
              last_name: nil,
              vcard: nil,
              user_id: nil
  end

  defmodule MessageLocation do
    @moduledoc """
    A message with a location.

    | Name | Type | Description |
    |------|------| ------------|
    | location | location | The location description. |
    | live_period | number | Time relative to the message send date, for which the location can be updated, in seconds. |
    | expires_in | number | Left time for which the location can be updated, in seconds. updateMessageContent is not sent when this field changes. |
    | heading | number | For live locations, a direction in which the location moves, in degrees; 1-360. If 0 the direction is unknown. |
    | proximity_alert_radius | number | For live locations, a maximum distance to another chat member for proximity alerts, in meters (0-100000). 0 if the notification is disabled. Available only to the message sender. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_location.html).
    """

    defstruct "@type": "messageLocation",
              "@extra": nil,
              location: nil,
              live_period: nil,
              expires_in: nil,
              heading: nil,
              proximity_alert_radius: nil
  end

  defmodule TelegramPaymentPurpose do
    @moduledoc """
    This class is an abstract base class. Describes a purpose of a payment toward Telegram.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_telegram_payment_purpose.html).
    """

    defstruct "@type": "TelegramPaymentPurpose", "@extra": nil
  end

  defmodule StoryPublicForwardStory do
    @moduledoc """
    Contains a public repost of a story as a story.

    | Name | Type | Description |
    |------|------| ------------|
    | story | story | Information about the reposted story. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1story_public_forward_story.html).
    """

    defstruct "@type": "storyPublicForwardStory", "@extra": nil, story: nil
  end

  defmodule UpdateActiveNotifications do
    @moduledoc """
    Contains active notifications that were shown on previous application launches. This update is sent only if the message database is used. In that case it comes once before any updateNotification and updateNotificationGroup update.

    | Name | Type | Description |
    |------|------| ------------|
    | groups | notificationGroup | Lists of active notification groups. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_active_notifications.html).
    """

    defstruct "@type": "updateActiveNotifications", "@extra": nil, groups: nil
  end

  defmodule InlineQueryResultsButtonTypeStartBot do
    @moduledoc """
    Describes the button that opens a private chat with the bot and sends a start message to the bot with the given parameter.

    | Name | Type | Description |
    |------|------| ------------|
    | parameter | string | The parameter for the bot start message. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_query_results_button_type_start_bot.html).
    """

    defstruct "@type": "inlineQueryResultsButtonTypeStartBot", "@extra": nil, parameter: nil
  end

  defmodule UpdateHavePendingNotifications do
    @moduledoc """
    Describes whether there are some pending notification updates. Can be used to prevent application from killing, while there are some pending notifications.

    | Name | Type | Description |
    |------|------| ------------|
    | have_delayed_notifications | bool | True, if there are some delayed notification updates, which will be sent soon. |
    | have_unreceived_notifications | bool | True, if there can be some yet unreceived notifications, which are being fetched from the server. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_have_pending_notifications.html).
    """

    defstruct "@type": "updateHavePendingNotifications",
              "@extra": nil,
              have_delayed_notifications: nil,
              have_unreceived_notifications: nil
  end

  defmodule AuthenticationCodeInfo do
    @moduledoc """
    Information about the authentication code that was sent.

    | Name | Type | Description |
    |------|------| ------------|
    | phone_number | string | A phone number that is being authenticated. |
    | type | AuthenticationCodeType | The way the code was sent to the user. |
    | next_type | AuthenticationCodeType | The way the next code will be sent to the user; may be null. |
    | timeout | number | Timeout before the code can be re-sent, in seconds. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authentication_code_info.html).
    """

    defstruct "@type": "authenticationCodeInfo",
              "@extra": nil,
              phone_number: nil,
              type: nil,
              next_type: nil,
              timeout: nil
  end

  defmodule FoundPositions do
    @moduledoc """
    Contains 0-based positions of matched objects.

    | Name | Type | Description |
    |------|------| ------------|
    | total_count | number | Total number of matched objects. |
    | positions | number | The positions of the matched objects. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1found_positions.html).
    """

    defstruct "@type": "foundPositions", "@extra": nil, total_count: nil, positions: nil
  end

  defmodule BotWriteAccessAllowReasonAddedToAttachmentMenu do
    @moduledoc """
    The user added the bot to attachment or side menu using toggleBotIsAddedToAttachmentMenu.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1bot_write_access_allow_reason_added_to_attachment_menu.html).
    """

    defstruct "@type": "botWriteAccessAllowReasonAddedToAttachmentMenu", "@extra": nil
  end

  defmodule InternalLinkTypeTheme do
    @moduledoc """
    The link is a link to a theme. TDLib has no theme support yet.

    | Name | Type | Description |
    |------|------| ------------|
    | theme_name | string | Name of the theme. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_theme.html).
    """

    defstruct "@type": "internalLinkTypeTheme", "@extra": nil, theme_name: nil
  end

  defmodule InputPassportElementErrorSourceUnspecified do
    @moduledoc """
    The element contains an error in an unspecified place. The error will be considered resolved when new data is added.

    | Name | Type | Description |
    |------|------| ------------|
    | element_hash | bytes | Current hash of the entire element. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_passport_element_error_source_unspecified.html).
    """

    defstruct "@type": "inputPassportElementErrorSourceUnspecified", "@extra": nil, element_hash: nil
  end

  defmodule PushMessageContentBasicGroupChatCreate do
    @moduledoc """
    A newly created basic group.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_basic_group_chat_create.html).
    """

    defstruct "@type": "pushMessageContentBasicGroupChatCreate", "@extra": nil
  end

  defmodule PushMessageContentChatSetTheme do
    @moduledoc """
    A chat theme was edited.

    | Name | Type | Description |
    |------|------| ------------|
    | theme_name | string | If non-empty, name of a new theme, set for the chat. Otherwise, the chat theme was reset to the default one. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_chat_set_theme.html).
    """

    defstruct "@type": "pushMessageContentChatSetTheme", "@extra": nil, theme_name: nil
  end

  defmodule InputMessageContent do
    @moduledoc """
    This class is an abstract base class. The content of a message to send.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_input_message_content.html).
    """

    defstruct "@type": "InputMessageContent", "@extra": nil
  end

  defmodule UpdateGroupCallParticipant do
    @moduledoc """
    Information about a group call participant was changed. The updates are sent only after the group call is received through getGroupCall and only if the call is joined or being joined.

    | Name | Type | Description |
    |------|------| ------------|
    | group_call_id | number | Identifier of group call. |
    | participant | groupCallParticipant | New data about a participant. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_group_call_participant.html).
    """

    defstruct "@type": "updateGroupCallParticipant", "@extra": nil, group_call_id: nil, participant: nil
  end

  defmodule AuthenticationCodeTypeFlashCall do
    @moduledoc """
    An authentication code is delivered by an immediately canceled call to the specified phone number. The phone number that calls is the code that must be entered automatically.

    | Name | Type | Description |
    |------|------| ------------|
    | pattern | string | Pattern of the phone number from which the call will be made. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authentication_code_type_flash_call.html).
    """

    defstruct "@type": "authenticationCodeTypeFlashCall", "@extra": nil, pattern: nil
  end

  defmodule UpdateChatDraftMessage do
    @moduledoc """
    A chat draft has changed. Be aware that the update may come in the currently opened chat but with old content of the draft. If the user has changed the content of the draft, this update mustn't be applied.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |
    | draft_message | draftMessage | The new draft message; may be null. |
    | positions | chatPosition | The new chat positions in the chat lists. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_draft_message.html).
    """

    defstruct "@type": "updateChatDraftMessage", "@extra": nil, chat_id: nil, draft_message: nil, positions: nil
  end

  defmodule PremiumLimitTypeChatFolderCount do
    @moduledoc """
    The maximum number of chat folders.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_limit_type_chat_folder_count.html).
    """

    defstruct "@type": "premiumLimitTypeChatFolderCount", "@extra": nil
  end

  defmodule UpdateMessageUnreadReactions do
    @moduledoc """
    The list of unread reactions added to a message was changed.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |
    | message_id | string | Message identifier. |
    | unread_reactions | unreadReaction | The new list of unread reactions. |
    | unread_reaction_count | number | The new number of messages with unread reactions left in the chat. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_message_unread_reactions.html).
    """

    defstruct "@type": "updateMessageUnreadReactions",
              "@extra": nil,
              chat_id: nil,
              message_id: nil,
              unread_reactions: nil,
              unread_reaction_count: nil
  end

  defmodule TMeUrls do
    @moduledoc """
    Contains a list of t.me URLs.

    | Name | Type | Description |
    |------|------| ------------|
    | urls | tMeUrl | List of URLs. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1t_me_urls.html).
    """

    defstruct "@type": "tMeUrls", "@extra": nil, urls: nil
  end

  defmodule PassportElementErrorSourceFiles do
    @moduledoc """
    The list of attached files contains an error. The error will be considered resolved when the list of files changes.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_error_source_files.html).
    """

    defstruct "@type": "passportElementErrorSourceFiles", "@extra": nil
  end

  defmodule AuthorizationStateReady do
    @moduledoc """
    The user has been successfully authorized. TDLib is now ready to answer general requests.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authorization_state_ready.html).
    """

    defstruct "@type": "authorizationStateReady", "@extra": nil
  end

  defmodule Session do
    @moduledoc """
    Contains information about one session in a Telegram application used by the current user. Sessions must be shown to the user in the returned order.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Session identifier. |
    | is_current | bool | True, if this session is the current session. |
    | is_password_pending | bool | True, if a 2-step verification password is needed to complete authorization of the session. |
    | is_unconfirmed | bool | True, if the session wasn't confirmed from another session. |
    | can_accept_secret_chats | bool | True, if incoming secret chats can be accepted by the session. |
    | can_accept_calls | bool | True, if incoming calls can be accepted by the session. |
    | type | SessionType | Session type based on the system and application version, which can be used to display a corresponding icon. |
    | api_id | number | Telegram API identifier, as provided by the application. |
    | application_name | string | Name of the application, as provided by the application. |
    | application_version | string | The version of the application, as provided by the application. |
    | is_official_application | bool | True, if the application is an official application or uses the api_id of an official application. |
    | device_model | string | Model of the device the application has been run or is running on, as provided by the application. |
    | platform | string | Operating system the application has been run or is running on, as provided by the application. |
    | system_version | string | Version of the operating system the application has been run or is running on, as provided by the application. |
    | log_in_date | number | Point in time (Unix timestamp) when the user has logged in. |
    | last_active_date | number | Point in time (Unix timestamp) when the session was last used. |
    | ip_address | string | IP address from which the session was created, in human-readable format. |
    | location | string | A human-readable description of the location from which the session was created, based on the IP address. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1session.html).
    """

    defstruct "@type": "session",
              "@extra": nil,
              id: nil,
              is_current: nil,
              is_password_pending: nil,
              is_unconfirmed: nil,
              can_accept_secret_chats: nil,
              can_accept_calls: nil,
              type: nil,
              api_id: nil,
              application_name: nil,
              application_version: nil,
              is_official_application: nil,
              device_model: nil,
              platform: nil,
              system_version: nil,
              log_in_date: nil,
              last_active_date: nil,
              ip_address: nil,
              location: nil
  end

  defmodule ChatEventMemberRestricted do
    @moduledoc """
    A chat member was restricted/unrestricted or banned/unbanned, or the list of their restrictions has changed.

    | Name | Type | Description |
    |------|------| ------------|
    | member_id | MessageSender | Affected chat member identifier. |
    | old_status | ChatMemberStatus | Previous status of the chat member. |
    | new_status | ChatMemberStatus | New status of the chat member. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_member_restricted.html).
    """

    defstruct "@type": "chatEventMemberRestricted", "@extra": nil, member_id: nil, old_status: nil, new_status: nil
  end

  defmodule PaymentForm do
    @moduledoc """
    Contains information about an invoice payment form.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | The payment form identifier. |
    | invoice | invoice | Full information about the invoice. |
    | seller_bot_user_id | string | User identifier of the seller bot. |
    | payment_provider_user_id | string | User identifier of the payment provider bot. |
    | payment_provider | PaymentProvider | Information about the payment provider. |
    | additional_payment_options | paymentOption | The list of additional payment options. |
    | saved_order_info | orderInfo | Saved server-side order information; may be null. |
    | saved_credentials | savedCredentials | The list of saved payment credentials. |
    | can_save_credentials | bool | True, if the user can choose to save credentials. |
    | need_password | bool | True, if the user will be able to save credentials, if sets up a 2-step verification password. |
    | product_title | string | Product title. |
    | product_description | formattedText | Product description. |
    | product_photo | photo | Product photo; may be null. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1payment_form.html).
    """

    defstruct "@type": "paymentForm",
              "@extra": nil,
              id: nil,
              invoice: nil,
              seller_bot_user_id: nil,
              payment_provider_user_id: nil,
              payment_provider: nil,
              additional_payment_options: nil,
              saved_order_info: nil,
              saved_credentials: nil,
              can_save_credentials: nil,
              need_password: nil,
              product_title: nil,
              product_description: nil,
              product_photo: nil
  end

  defmodule JsonValueNull do
    @moduledoc """
    Represents a null JSON value.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1json_value_null.html).
    """

    defstruct "@type": "jsonValueNull", "@extra": nil
  end

  defmodule StickerSet do
    @moduledoc """
    Represents a sticker set.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Identifier of the sticker set. |
    | title | string | Title of the sticker set. |
    | name | string | Name of the sticker set. |
    | thumbnail | thumbnail | Sticker set thumbnail in WEBP, TGS, or WEBM format with width and height 100; may be null. The file can be downloaded only before the thumbnail is changed. |
    | thumbnail_outline | closedVectorPath | Sticker set thumbnail's outline represented as a list of closed vector paths; may be empty. The coordinate system origin is in the upper-left corner. |
    | is_installed | bool | True, if the sticker set has been installed by the current user. |
    | is_archived | bool | True, if the sticker set has been archived. A sticker set can't be installed and archived simultaneously. |
    | is_official | bool | True, if the sticker set is official. |
    | sticker_format | StickerFormat | Format of the stickers in the set. |
    | sticker_type | StickerType | Type of the stickers in the set. |
    | needs_repainting | bool | True, if stickers in the sticker set are custom emoji that must be repainted; for custom emoji sticker sets only. |
    | is_viewed | bool | True for already viewed trending sticker sets. |
    | stickers | sticker | List of stickers in this set. |
    | emojis | emojis | A list of emoji corresponding to the stickers in the same order. The list is only for informational purposes, because a sticker is always sent with a fixed emoji from the corresponding Sticker object. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sticker_set.html).
    """

    defstruct "@type": "stickerSet",
              "@extra": nil,
              id: nil,
              title: nil,
              name: nil,
              thumbnail: nil,
              thumbnail_outline: nil,
              is_installed: nil,
              is_archived: nil,
              is_official: nil,
              sticker_format: nil,
              sticker_type: nil,
              needs_repainting: nil,
              is_viewed: nil,
              stickers: nil,
              emojis: nil
  end

  defmodule PasswordState do
    @moduledoc """
    Represents the current state of 2-step verification.

    | Name | Type | Description |
    |------|------| ------------|
    | has_password | bool | True, if a 2-step verification password is set. |
    | password_hint | string | Hint for the password; may be empty. |
    | has_recovery_email_address | bool | True, if a recovery email is set. |
    | has_passport_data | bool | True, if some Telegram Passport elements were saved. |
    | recovery_email_address_code_info | emailAddressAuthenticationCodeInfo | Information about the recovery email address to which the confirmation email was sent; may be null. |
    | login_email_address_pattern | string | Pattern of the email address set up for logging in. |
    | pending_reset_date | number | If not 0, point in time (Unix timestamp) after which the 2-step verification password can be reset immediately using resetPassword. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1password_state.html).
    """

    defstruct "@type": "passwordState",
              "@extra": nil,
              has_password: nil,
              password_hint: nil,
              has_recovery_email_address: nil,
              has_passport_data: nil,
              recovery_email_address_code_info: nil,
              login_email_address_pattern: nil,
              pending_reset_date: nil
  end

  defmodule UpdateMessageIsPinned do
    @moduledoc """
    The message pinned state was changed.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |
    | message_id | string | The message identifier. |
    | is_pinned | bool | True, if the message is pinned. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_message_is_pinned.html).
    """

    defstruct "@type": "updateMessageIsPinned", "@extra": nil, chat_id: nil, message_id: nil, is_pinned: nil
  end

  defmodule InviteLinkChatTypeSupergroup do
    @moduledoc """
    The link is an invite link for a supergroup.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1invite_link_chat_type_supergroup.html).
    """

    defstruct "@type": "inviteLinkChatTypeSupergroup", "@extra": nil
  end

  defmodule ChatEventMessageDeleted do
    @moduledoc """
    A message was deleted.

    | Name | Type | Description |
    |------|------| ------------|
    | message | message | Deleted message. |
    | can_report_anti_spam_false_positive | bool | True, if the message deletion can be reported via reportSupergroupAntiSpamFalsePositive. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_message_deleted.html).
    """

    defstruct "@type": "chatEventMessageDeleted", "@extra": nil, message: nil, can_report_anti_spam_false_positive: nil
  end

  defmodule InlineKeyboardButtonTypeLoginUrl do
    @moduledoc """
    A button that opens a specified URL and automatically authorize the current user by calling getLoginUrlInfo.

    | Name | Type | Description |
    |------|------| ------------|
    | url | string | An HTTP URL to pass to getLoginUrlInfo. |
    | id | string | Unique button identifier. |
    | forward_text | string | If non-empty, new text of the button in forwarded messages. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_keyboard_button_type_login_url.html).
    """

    defstruct "@type": "inlineKeyboardButtonTypeLoginUrl", "@extra": nil, url: nil, id: nil, forward_text: nil
  end

  defmodule FileTypeSecure do
    @moduledoc """
    The file is a file from Secure storage used for storing Telegram Passport files.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_secure.html).
    """

    defstruct "@type": "fileTypeSecure", "@extra": nil
  end

  defmodule SessionTypeApple do
    @moduledoc """
    The session is running on a generic Apple device.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1session_type_apple.html).
    """

    defstruct "@type": "sessionTypeApple", "@extra": nil
  end

  defmodule UserPrivacySettingRuleAllowUsers do
    @moduledoc """
    A rule to allow certain specified users to do something.

    | Name | Type | Description |
    |------|------| ------------|
    | user_ids | string | The user identifiers, total number of users in all rules must not exceed 1000. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_privacy_setting_rule_allow_users.html).
    """

    defstruct "@type": "userPrivacySettingRuleAllowUsers", "@extra": nil, user_ids: nil
  end

  defmodule SecretChatState do
    @moduledoc """
    This class is an abstract base class. Describes the current secret chat state.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_secret_chat_state.html).
    """

    defstruct "@type": "SecretChatState", "@extra": nil
  end

  defmodule OptionValueString do
    @moduledoc """
    Represents a string option.

    | Name | Type | Description |
    |------|------| ------------|
    | value | string | The value of the option. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1option_value_string.html).
    """

    defstruct "@type": "optionValueString", "@extra": nil, value: nil
  end

  defmodule ChatEventMessageAutoDeleteTimeChanged do
    @moduledoc """
    The message auto-delete timer was changed.

    | Name | Type | Description |
    |------|------| ------------|
    | old_message_auto_delete_time | number | Previous value of message_auto_delete_time. |
    | new_message_auto_delete_time | number | New value of message_auto_delete_time. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_message_auto_delete_time_changed.html).
    """

    defstruct "@type": "chatEventMessageAutoDeleteTimeChanged",
              "@extra": nil,
              old_message_auto_delete_time: nil,
              new_message_auto_delete_time: nil
  end

  defmodule DateRange do
    @moduledoc """
    Represents a date range.

    | Name | Type | Description |
    |------|------| ------------|
    | start_date | number | Point in time (Unix timestamp) at which the date range begins. |
    | end_date | number | Point in time (Unix timestamp) at which the date range ends. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1date_range.html).
    """

    defstruct "@type": "dateRange", "@extra": nil, start_date: nil, end_date: nil
  end

  defmodule MessageUserShared do
    @moduledoc """
    The current user shared a user, which was requested by the bot.

    | Name | Type | Description |
    |------|------| ------------|
    | user_id | string | Identifier of the shared user. |
    | button_id | number | Identifier of the keyboard button with the request. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_user_shared.html).
    """

    defstruct "@type": "messageUserShared", "@extra": nil, user_id: nil, button_id: nil
  end

  defmodule PageBlockSlideshow do
    @moduledoc """
    A slideshow.

    | Name | Type | Description |
    |------|------| ------------|
    | page_blocks | PageBlock | Slideshow item contents. |
    | caption | pageBlockCaption | Block caption. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_slideshow.html).
    """

    defstruct "@type": "pageBlockSlideshow", "@extra": nil, page_blocks: nil, caption: nil
  end

  defmodule RecoveryEmailAddress do
    @moduledoc """
    Contains information about the current recovery email address.

    | Name | Type | Description |
    |------|------| ------------|
    | recovery_email_address | string | Recovery email address. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1recovery_email_address.html).
    """

    defstruct "@type": "recoveryEmailAddress", "@extra": nil, recovery_email_address: nil
  end

  defmodule InputMessageReplyToStory do
    @moduledoc """
    Describes a story to be replied.

    | Name | Type | Description |
    |------|------| ------------|
    | story_sender_chat_id | string | The identifier of the sender of the story. Currently, stories can be replied only in the sender's chat. |
    | story_id | number | The identifier of the story. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_reply_to_story.html).
    """

    defstruct "@type": "inputMessageReplyToStory", "@extra": nil, story_sender_chat_id: nil, story_id: nil
  end

  defmodule VectorPathCommandCubicBezierCurve do
    @moduledoc """
    A cubic Bézier curve to a given point.

    | Name | Type | Description |
    |------|------| ------------|
    | start_control_point | point | The start control point of the curve. |
    | end_control_point | point | The end control point of the curve. |
    | end_point | point | The end point of the curve. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1vector_path_command_cubic_bezier_curve.html).
    """

    defstruct "@type": "vectorPathCommandCubicBezierCurve",
              "@extra": nil,
              start_control_point: nil,
              end_control_point: nil,
              end_point: nil
  end

  defmodule MessageSourceSearch do
    @moduledoc """
    The message is from search results, including file downloads, local file list, outgoing document messages, calendar.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_source_search.html).
    """

    defstruct "@type": "messageSourceSearch", "@extra": nil
  end

  defmodule InternalLinkType do
    @moduledoc """
    This class is an abstract base class. Describes an internal https://t.me or tg: link, which must be processed by the application in a special way.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_internal_link_type.html).
    """

    defstruct "@type": "InternalLinkType", "@extra": nil
  end

  defmodule CallDiscardReasonDisconnected do
    @moduledoc """
    The call was ended during the conversation because the users were disconnected.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_discard_reason_disconnected.html).
    """

    defstruct "@type": "callDiscardReasonDisconnected", "@extra": nil
  end

  defmodule TelegramPaymentPurposePremiumGiftCodes do
    @moduledoc """
    The user creating Telegram Premium gift codes for other users.

    | Name | Type | Description |
    |------|------| ------------|
    | boosted_chat_id | string | Identifier of the channel chat, which will be automatically boosted by the users for duration of the Premium subscription and which is administered by the user; 0 if none. |
    | currency | string | ISO 4217 currency code of the payment currency. |
    | amount | string | Paid amount, in the smallest units of the currency. |
    | user_ids | string | Identifiers of the users which can activate the gift codes. |
    | month_count | number | Number of month the Telegram Premium subscription will be active for the users. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1telegram_payment_purpose_premium_gift_codes.html).
    """

    defstruct "@type": "telegramPaymentPurposePremiumGiftCodes",
              "@extra": nil,
              boosted_chat_id: nil,
              currency: nil,
              amount: nil,
              user_ids: nil,
              month_count: nil
  end

  defmodule PaymentOption do
    @moduledoc """
    Describes an additional payment option.

    | Name | Type | Description |
    |------|------| ------------|
    | title | string | Title for the payment option. |
    | url | string | Payment form URL to be opened in a web view. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1payment_option.html).
    """

    defstruct "@type": "paymentOption", "@extra": nil, title: nil, url: nil
  end

  defmodule Location do
    @moduledoc """
    Describes a location on planet Earth.

    | Name | Type | Description |
    |------|------| ------------|
    | latitude | double | Latitude of the location in degrees; as defined by the sender. |
    | longitude | double | Longitude of the location, in degrees; as defined by the sender. |
    | horizontal_accuracy | double | The estimated horizontal accuracy of the location, in meters; as defined by the sender. 0 if unknown. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1location.html).
    """

    defstruct "@type": "location", "@extra": nil, latitude: nil, longitude: nil, horizontal_accuracy: nil
  end

  defmodule PushMessageContentChatChangeTitle do
    @moduledoc """
    A chat title was edited.

    | Name | Type | Description |
    |------|------| ------------|
    | title | string | New chat title. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_chat_change_title.html).
    """

    defstruct "@type": "pushMessageContentChatChangeTitle", "@extra": nil, title: nil
  end

  defmodule InlineQueryResultArticle do
    @moduledoc """
    Represents a link to an article or web page.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Unique identifier of the query result. |
    | url | string | URL of the result, if it exists. |
    | hide_url | bool | True, if the URL must be not shown. |
    | title | string | Title of the result. |
    | description | string | A short description of the result. |
    | thumbnail | thumbnail | Result thumbnail in JPEG format; may be null. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_query_result_article.html).
    """

    defstruct "@type": "inlineQueryResultArticle",
              "@extra": nil,
              id: nil,
              url: nil,
              hide_url: nil,
              title: nil,
              description: nil,
              thumbnail: nil
  end

  defmodule EmailAddressResetState do
    @moduledoc """
    This class is an abstract base class. Describes reset state of a email address.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_email_address_reset_state.html).
    """

    defstruct "@type": "EmailAddressResetState", "@extra": nil
  end

  defmodule FileDownload do
    @moduledoc """
    Describes a file added to file download list.

    | Name | Type | Description |
    |------|------| ------------|
    | file_id | number | File identifier. |
    | message | message | The message with the file. |
    | add_date | number | Point in time (Unix timestamp) when the file was added to the download list. |
    | complete_date | number | Point in time (Unix timestamp) when the file downloading was completed; 0 if the file downloading isn't completed. |
    | is_paused | bool | True, if downloading of the file is paused. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_download.html).
    """

    defstruct "@type": "fileDownload",
              "@extra": nil,
              file_id: nil,
              message: nil,
              add_date: nil,
              complete_date: nil,
              is_paused: nil
  end

  defmodule MessagePremiumGiveaway do
    @moduledoc """
    A Telegram Premium giveaway.

    | Name | Type | Description |
    |------|------| ------------|
    | parameters | premiumGiveawayParameters | Giveaway parameters. |
    | winner_count | number | Number of users which will receive Telegram Premium subscription gift codes. |
    | month_count | number | Number of month the Telegram Premium subscription will be active after code activation. |
    | sticker | sticker | A sticker to be shown in the message; may be null if unknown. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_premium_giveaway.html).
    """

    defstruct "@type": "messagePremiumGiveaway",
              "@extra": nil,
              parameters: nil,
              winner_count: nil,
              month_count: nil,
              sticker: nil
  end

  defmodule ReplyMarkupForceReply do
    @moduledoc """
    Instructs application to force a reply to this message.

    | Name | Type | Description |
    |------|------| ------------|
    | is_personal | bool | True, if a forced reply must automatically be shown to the current user. For outgoing messages, specify true to show the forced reply only for the mentioned users and for the target user of a reply. |
    | input_field_placeholder | string | If non-empty, the placeholder to be shown in the input field when the reply is active; 0-64 characters. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1reply_markup_force_reply.html).
    """

    defstruct "@type": "replyMarkupForceReply", "@extra": nil, is_personal: nil, input_field_placeholder: nil
  end

  defmodule MessageOriginUser do
    @moduledoc """
    The message was originally sent by a known user.

    | Name | Type | Description |
    |------|------| ------------|
    | sender_user_id | string | Identifier of the user that originally sent the message. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_origin_user.html).
    """

    defstruct "@type": "messageOriginUser", "@extra": nil, sender_user_id: nil
  end

  defmodule LinkPreviewOptions do
    @moduledoc """
    Options to be used for generation of a link preview.

    | Name | Type | Description |
    |------|------| ------------|
    | is_disabled | bool | True, if link preview must be disabled. |
    | url | string | URL to use for link preview. If empty, then the first URL found in the message text will be used. |
    | force_small_media | bool | True, if shown media preview must be small; ignored in secret chats or if the URL isn't explicitly specified. |
    | force_large_media | bool | True, if shown media preview must be large; ignored in secret chats or if the URL isn't explicitly specified. |
    | show_above_text | bool | True, if link preview must be shown above message text; otherwise, the link preview will be shown below the message text; ignored in secret chats. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1link_preview_options.html).
    """

    defstruct "@type": "linkPreviewOptions",
              "@extra": nil,
              is_disabled: nil,
              url: nil,
              force_small_media: nil,
              force_large_media: nil,
              show_above_text: nil
  end

  defmodule PollTypeQuiz do
    @moduledoc """
    A poll in quiz mode, which has exactly one correct answer option and can be answered only once.

    | Name | Type | Description |
    |------|------| ------------|
    | correct_option_id | number | 0-based identifier of the correct answer option; -1 for a yet unanswered poll. |
    | explanation | formattedText | Text that is shown when the user chooses an incorrect answer or taps on the lamp icon; 0-200 characters with at most 2 line feeds; empty for a yet unanswered poll. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1poll_type_quiz.html).
    """

    defstruct "@type": "pollTypeQuiz", "@extra": nil, correct_option_id: nil, explanation: nil
  end

  defmodule FileTypeThumbnail do
    @moduledoc """
    The file is a thumbnail of another file.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_thumbnail.html).
    """

    defstruct "@type": "fileTypeThumbnail", "@extra": nil
  end

  defmodule BasicGroupFullInfo do
    @moduledoc """
    Contains full information about a basic group.

    | Name | Type | Description |
    |------|------| ------------|
    | photo | chatPhoto | Chat photo; may be null if empty or unknown. If non-null, then it is the same photo as in chat.photo. |
    | description | string | Group description. Updated only after the basic group is opened. |
    | creator_user_id | string | User identifier of the creator of the group; 0 if unknown. |
    | members | chatMember | Group members. |
    | can_hide_members | bool | True, if non-administrators and non-bots can be hidden in responses to getSupergroupMembers and searchChatMembers for non-administrators after upgrading the basic group to a supergroup. |
    | can_toggle_aggressive_anti_spam | bool | True, if aggressive anti-spam checks can be enabled or disabled in the supergroup after upgrading the basic group to a supergroup. |
    | invite_link | chatInviteLink | Primary invite link for this group; may be null. For chat administrators with can_invite_users right only. Updated only after the basic group is opened. |
    | bot_commands | botCommands | List of commands of bots in the group. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1basic_group_full_info.html).
    """

    defstruct "@type": "basicGroupFullInfo",
              "@extra": nil,
              photo: nil,
              description: nil,
              creator_user_id: nil,
              members: nil,
              can_hide_members: nil,
              can_toggle_aggressive_anti_spam: nil,
              invite_link: nil,
              bot_commands: nil
  end

  defmodule CallServerTypeWebrtc do
    @moduledoc """
    A WebRTC server.

    | Name | Type | Description |
    |------|------| ------------|
    | username | string | Username to be used for authentication. |
    | password | string | Authentication password. |
    | supports_turn | bool | True, if the server supports TURN. |
    | supports_stun | bool | True, if the server supports STUN. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_server_type_webrtc.html).
    """

    defstruct "@type": "callServerTypeWebrtc",
              "@extra": nil,
              username: nil,
              password: nil,
              supports_turn: nil,
              supports_stun: nil
  end

  defmodule InternalLinkTypeGame do
    @moduledoc """
    The link is a link to a game. Call searchPublicChat with the given bot username, check that the user is a bot, ask the current user to select a chat to send the game, and then call sendMessage with inputMessageGame.

    | Name | Type | Description |
    |------|------| ------------|
    | bot_username | string | Username of the bot that owns the game. |
    | game_short_name | string | Short name of the game. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_game.html).
    """

    defstruct "@type": "internalLinkTypeGame", "@extra": nil, bot_username: nil, game_short_name: nil
  end

  defmodule InputPassportElementErrorSourceDataField do
    @moduledoc """
    A data field contains an error. The error is considered resolved when the field's value changes.

    | Name | Type | Description |
    |------|------| ------------|
    | field_name | string | Field name. |
    | data_hash | bytes | Current data hash. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_passport_element_error_source_data_field.html).
    """

    defstruct "@type": "inputPassportElementErrorSourceDataField", "@extra": nil, field_name: nil, data_hash: nil
  end

  defmodule PassportElementPassport do
    @moduledoc """
    A Telegram Passport element containing the user's passport.

    | Name | Type | Description |
    |------|------| ------------|
    | passport | identityDocument | Passport. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_passport.html).
    """

    defstruct "@type": "passportElementPassport", "@extra": nil, passport: nil
  end

  defmodule InlineQueryResultVideo do
    @moduledoc """
    Represents a video.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Unique identifier of the query result. |
    | video | video | Video. |
    | title | string | Title of the video. |
    | description | string | Description of the video. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_query_result_video.html).
    """

    defstruct "@type": "inlineQueryResultVideo", "@extra": nil, id: nil, video: nil, title: nil, description: nil
  end

  defmodule UpdateChatNotificationSettings do
    @moduledoc """
    Notification settings for a chat were changed.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |
    | notification_settings | chatNotificationSettings | The new notification settings. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_notification_settings.html).
    """

    defstruct "@type": "updateChatNotificationSettings", "@extra": nil, chat_id: nil, notification_settings: nil
  end

  defmodule UpdateChatHasScheduledMessages do
    @moduledoc """
    A chat's has_scheduled_messages field has changed.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |
    | has_scheduled_messages | bool | New value of has_scheduled_messages. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_has_scheduled_messages.html).
    """

    defstruct "@type": "updateChatHasScheduledMessages", "@extra": nil, chat_id: nil, has_scheduled_messages: nil
  end

  defmodule UpdateSpeechRecognitionTrial do
    @moduledoc """
    The parameters of speech recognition without Telegram Premium subscription has changed.

    | Name | Type | Description |
    |------|------| ------------|
    | max_media_duration | number | The maximum allowed duration of media for speech recognition without Telegram Premium subscription. |
    | weekly_count | number | The total number of allowed speech recognitions per week; 0 if none. |
    | left_count | number | Number of left speech recognition attempts this week. |
    | next_reset_date | number | Point in time (Unix timestamp) when the weekly number of tries will reset; 0 if unknown. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_speech_recognition_trial.html).
    """

    defstruct "@type": "updateSpeechRecognitionTrial",
              "@extra": nil,
              max_media_duration: nil,
              weekly_count: nil,
              left_count: nil,
              next_reset_date: nil
  end

  defmodule TextEntityTypeCode do
    @moduledoc """
    Text that must be formatted as if inside a code HTML tag.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_code.html).
    """

    defstruct "@type": "textEntityTypeCode", "@extra": nil
  end

  defmodule MessageFileTypeGroup do
    @moduledoc """
    The messages were exported from a group chat.

    | Name | Type | Description |
    |------|------| ------------|
    | title | string | Title of the group chat; may be empty if unrecognized. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_file_type_group.html).
    """

    defstruct "@type": "messageFileTypeGroup", "@extra": nil, title: nil
  end

  defmodule StoryViewer do
    @moduledoc """
    Represents a viewer of a story.

    | Name | Type | Description |
    |------|------| ------------|
    | user_id | string | User identifier of the viewer. |
    | view_date | number | Approximate point in time (Unix timestamp) when the story was viewed. |
    | block_list | BlockList | Block list to which the user is added; may be null if none. |
    | chosen_reaction_type | ReactionType | Type of the reaction that was chosen by the user; may be null if none. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1story_viewer.html).
    """

    defstruct "@type": "storyViewer",
              "@extra": nil,
              user_id: nil,
              view_date: nil,
              block_list: nil,
              chosen_reaction_type: nil
  end

  defmodule PremiumFeatures do
    @moduledoc """
    Contains information about features, available to Premium users.

    | Name | Type | Description |
    |------|------| ------------|
    | features | PremiumFeature | The list of available features. |
    | limits | premiumLimit | The list of limits, increased for Premium users. |
    | payment_link | InternalLinkType | An internal link to be opened to pay for Telegram Premium if store payment isn't possible; may be null if direct payment isn't available. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_features.html).
    """

    defstruct "@type": "premiumFeatures", "@extra": nil, features: nil, limits: nil, payment_link: nil
  end

  defmodule NotificationTypeNewCall do
    @moduledoc """
    New call was received.

    | Name | Type | Description |
    |------|------| ------------|
    | call_id | number | Call identifier. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1notification_type_new_call.html).
    """

    defstruct "@type": "notificationTypeNewCall", "@extra": nil, call_id: nil
  end

  defmodule MessageSourceForumTopicHistory do
    @moduledoc """
    The message is from a forum topic history.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_source_forum_topic_history.html).
    """

    defstruct "@type": "messageSourceForumTopicHistory", "@extra": nil
  end

  defmodule UpdateMessageSendSucceeded do
    @moduledoc """
    A message has been successfully sent.

    | Name | Type | Description |
    |------|------| ------------|
    | message | message | The sent message. Usually only the message identifier, date, and content are changed, but almost all other fields can also change. |
    | old_message_id | string | The previous temporary message identifier. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_message_send_succeeded.html).
    """

    defstruct "@type": "updateMessageSendSucceeded", "@extra": nil, message: nil, old_message_id: nil
  end

  defmodule ResetPasswordResult do
    @moduledoc """
    This class is an abstract base class. Represents result of 2-step verification password reset.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_reset_password_result.html).
    """

    defstruct "@type": "ResetPasswordResult", "@extra": nil
  end

  defmodule TMeUrlType do
    @moduledoc """
    This class is an abstract base class. Describes the type of a URL linking to an internal Telegram entity.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_t_me_url_type.html).
    """

    defstruct "@type": "TMeUrlType", "@extra": nil
  end

  defmodule AutosaveSettingsScopeGroupChats do
    @moduledoc """
    Autosave settings applied to all basic group and supergroup chats without chat-specific settings.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1autosave_settings_scope_group_chats.html).
    """

    defstruct "@type": "autosaveSettingsScopeGroupChats", "@extra": nil
  end

  defmodule PushMessageContentVideoNote do
    @moduledoc """
    A video note message.

    | Name | Type | Description |
    |------|------| ------------|
    | video_note | videoNote | Message content; may be null. |
    | is_pinned | bool | True, if the message is a pinned message with the specified content. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_video_note.html).
    """

    defstruct "@type": "pushMessageContentVideoNote", "@extra": nil, video_note: nil, is_pinned: nil
  end

  defmodule TextEntityTypeMediaTimestamp do
    @moduledoc """
    A media timestamp.

    | Name | Type | Description |
    |------|------| ------------|
    | media_timestamp | number | Timestamp from which a video/audio/video note/voice note/story playing must start, in seconds. The media can be in the content or the web page preview of the current message, or in the same places in the replied message. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_media_timestamp.html).
    """

    defstruct "@type": "textEntityTypeMediaTimestamp", "@extra": nil, media_timestamp: nil
  end

  defmodule EmojiStatus do
    @moduledoc """
    Describes a custom emoji to be shown instead of the Telegram Premium badge.

    | Name | Type | Description |
    |------|------| ------------|
    | custom_emoji_id | string | Identifier of the custom emoji in stickerFormatTgs format. |
    | expiration_date | number | Point in time (Unix timestamp) when the status will expire; 0 if never. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1emoji_status.html).
    """

    defstruct "@type": "emojiStatus", "@extra": nil, custom_emoji_id: nil, expiration_date: nil
  end

  defmodule MessageSenderChat do
    @moduledoc """
    The message was sent on behalf of a chat.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Identifier of the chat that sent the message. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_sender_chat.html).
    """

    defstruct "@type": "messageSenderChat", "@extra": nil, chat_id: nil
  end

  defmodule PremiumFeaturePromotionAnimation do
    @moduledoc """
    Describes a promotion animation for a Premium feature.

    | Name | Type | Description |
    |------|------| ------------|
    | feature | PremiumFeature | Premium feature. |
    | animation | animation | Promotion animation for the feature. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_feature_promotion_animation.html).
    """

    defstruct "@type": "premiumFeaturePromotionAnimation", "@extra": nil, feature: nil, animation: nil
  end

  defmodule GroupCallParticipant do
    @moduledoc """
    Represents a group call participant.

    | Name | Type | Description |
    |------|------| ------------|
    | participant_id | MessageSender | Identifier of the group call participant. |
    | audio_source_id | number | User's audio channel synchronization source identifier. |
    | screen_sharing_audio_source_id | number | User's screen sharing audio channel synchronization source identifier. |
    | video_info | groupCallParticipantVideoInfo | Information about user's video channel; may be null if there is no active video. |
    | screen_sharing_video_info | groupCallParticipantVideoInfo | Information about user's screen sharing video channel; may be null if there is no active screen sharing video. |
    | bio | string | The participant user's bio or the participant chat's description. |
    | is_current_user | bool | True, if the participant is the current user. |
    | is_speaking | bool | True, if the participant is speaking as set by setGroupCallParticipantIsSpeaking. |
    | is_hand_raised | bool | True, if the participant hand is raised. |
    | can_be_muted_for_all_users | bool | True, if the current user can mute the participant for all other group call participants. |
    | can_be_unmuted_for_all_users | bool | True, if the current user can allow the participant to unmute themselves or unmute the participant (if the participant is the current user). |
    | can_be_muted_for_current_user | bool | True, if the current user can mute the participant only for self. |
    | can_be_unmuted_for_current_user | bool | True, if the current user can unmute the participant for self. |
    | is_muted_for_all_users | bool | True, if the participant is muted for all users. |
    | is_muted_for_current_user | bool | True, if the participant is muted for the current user. |
    | can_unmute_self | bool | True, if the participant is muted for all users, but can unmute themselves. |
    | volume_level | number | Participant's volume level; 1-20000 in hundreds of percents. |
    | order | string | User's order in the group call participant list. Orders must be compared lexicographically. The bigger is order, the higher is user in the list. If order is empty, the user must be removed from the participant list. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1group_call_participant.html).
    """

    defstruct "@type": "groupCallParticipant",
              "@extra": nil,
              participant_id: nil,
              audio_source_id: nil,
              screen_sharing_audio_source_id: nil,
              video_info: nil,
              screen_sharing_video_info: nil,
              bio: nil,
              is_current_user: nil,
              is_speaking: nil,
              is_hand_raised: nil,
              can_be_muted_for_all_users: nil,
              can_be_unmuted_for_all_users: nil,
              can_be_muted_for_current_user: nil,
              can_be_unmuted_for_current_user: nil,
              is_muted_for_all_users: nil,
              is_muted_for_current_user: nil,
              can_unmute_self: nil,
              volume_level: nil,
              order: nil
  end

  defmodule MessageExtendedMedia do
    @moduledoc """
    This class is an abstract base class. Describes a media, which is attached to an invoice.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_message_extended_media.html).
    """

    defstruct "@type": "MessageExtendedMedia", "@extra": nil
  end

  defmodule CallProblemPixelatedVideo do
    @moduledoc """
    The video was pixelated.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_problem_pixelated_video.html).
    """

    defstruct "@type": "callProblemPixelatedVideo", "@extra": nil
  end

  defmodule SessionTypeVivaldi do
    @moduledoc """
    The session is running on the Vivaldi browser.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1session_type_vivaldi.html).
    """

    defstruct "@type": "sessionTypeVivaldi", "@extra": nil
  end

  defmodule InputFile do
    @moduledoc """
    This class is an abstract base class. Points to a file.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_input_file.html).
    """

    defstruct "@type": "InputFile", "@extra": nil
  end

  defmodule UpdateOption do
    @moduledoc """
    An option changed its value.

    | Name | Type | Description |
    |------|------| ------------|
    | name | string | The option name. |
    | value | OptionValue | The new option value. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_option.html).
    """

    defstruct "@type": "updateOption", "@extra": nil, name: nil, value: nil
  end

  defmodule ChatActionChoosingSticker do
    @moduledoc """
    The user is picking a sticker to send.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_choosing_sticker.html).
    """

    defstruct "@type": "chatActionChoosingSticker", "@extra": nil
  end

  defmodule NetworkTypeOther do
    @moduledoc """
    A different network type (e.g., Ethernet network).


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1network_type_other.html).
    """

    defstruct "@type": "networkTypeOther", "@extra": nil
  end

  defmodule DeviceTokenFirebaseCloudMessaging do
    @moduledoc """
    A token for Firebase Cloud Messaging.

    | Name | Type | Description |
    |------|------| ------------|
    | token | string | Device registration token; may be empty to deregister a device. |
    | encrypt | bool | True, if push notifications must be additionally encrypted. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1device_token_firebase_cloud_messaging.html).
    """

    defstruct "@type": "deviceTokenFirebaseCloudMessaging", "@extra": nil, token: nil, encrypt: nil
  end

  defmodule StatisticalGraphAsync do
    @moduledoc """
    The graph data to be asynchronously loaded through getStatisticalGraph.

    | Name | Type | Description |
    |------|------| ------------|
    | token | string | The token to use for data loading. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1statistical_graph_async.html).
    """

    defstruct "@type": "statisticalGraphAsync", "@extra": nil, token: nil
  end

  defmodule InternalLinkTypeThemeSettings do
    @moduledoc """
    The link is a link to the theme section of the app settings.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_theme_settings.html).
    """

    defstruct "@type": "internalLinkTypeThemeSettings", "@extra": nil
  end

  defmodule TestInt do
    @moduledoc """
    A simple object containing a number; for testing only.

    | Name | Type | Description |
    |------|------| ------------|
    | value | number | Number. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1test_int.html).
    """

    defstruct "@type": "testInt", "@extra": nil, value: nil
  end

  defmodule CheckChatUsernameResultUsernameInvalid do
    @moduledoc """
    The username is invalid.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1check_chat_username_result_username_invalid.html).
    """

    defstruct "@type": "checkChatUsernameResultUsernameInvalid", "@extra": nil
  end

  defmodule UpdateChatTitle do
    @moduledoc """
    The title of a chat was changed.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |
    | title | string | The new chat title. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_title.html).
    """

    defstruct "@type": "updateChatTitle", "@extra": nil, chat_id: nil, title: nil
  end

  defmodule SearchMessagesFilterPhotoAndVideo do
    @moduledoc """
    Returns only photo and video messages.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_photo_and_video.html).
    """

    defstruct "@type": "searchMessagesFilterPhotoAndVideo", "@extra": nil
  end

  defmodule UpdateSavedNotificationSounds do
    @moduledoc """
    The list of saved notification sounds was updated. This update may not be sent until information about a notification sound was requested for the first time.

    | Name | Type | Description |
    |------|------| ------------|
    | notification_sound_ids | string | The new list of identifiers of saved notification sounds. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_saved_notification_sounds.html).
    """

    defstruct "@type": "updateSavedNotificationSounds", "@extra": nil, notification_sound_ids: nil
  end

  defmodule SecretChat do
    @moduledoc """
    Represents a secret chat.

    | Name | Type | Description |
    |------|------| ------------|
    | id | number | Secret chat identifier. |
    | user_id | string | Identifier of the chat partner. |
    | state | SecretChatState | State of the secret chat. |
    | is_outbound | bool | True, if the chat was created by the current user; false otherwise. |
    | key_hash | bytes | Hash of the currently used key for comparison with the hash of the chat partner's key. This is a string of 36 little-endian bytes, which must be split into groups of 2 bits, each denoting a pixel of one of 4 colors FFFFFF, D5E6F3, 2D5775, and 2F99C9. The pixels must be used to make a 12x12 square image filled from left to right, top to bottom. Alternatively, the first 32 bytes of the hash can be converted to the hexadecimal format and printed as 32 2-digit hex numbers. |
    | layer | number | Secret chat layer; determines features supported by the chat partner's application. Nested text entities and underline and strikethrough entities are supported if the layer >= 101, files bigger than 2000MB are supported if the layer >= 143, spoiler and custom emoji text entities are supported if the layer >= 144. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1secret_chat.html).
    """

    defstruct "@type": "secretChat",
              "@extra": nil,
              id: nil,
              user_id: nil,
              state: nil,
              is_outbound: nil,
              key_hash: nil,
              layer: nil
  end

  defmodule UpdateUserStatus do
    @moduledoc """
    The user went online or offline.

    | Name | Type | Description |
    |------|------| ------------|
    | user_id | string | User identifier. |
    | status | UserStatus | New status of the user. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_user_status.html).
    """

    defstruct "@type": "updateUserStatus", "@extra": nil, user_id: nil, status: nil
  end

  defmodule CustomRequestResult do
    @moduledoc """
    Contains the result of a custom request.

    | Name | Type | Description |
    |------|------| ------------|
    | result | string | A JSON-serialized result. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1custom_request_result.html).
    """

    defstruct "@type": "customRequestResult", "@extra": nil, result: nil
  end

  defmodule BlockListMain do
    @moduledoc """
    The main block list that disallows writing messages to the current user, receiving their status and photo, viewing of stories, and some other actions.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1block_list_main.html).
    """

    defstruct "@type": "blockListMain", "@extra": nil
  end

  defmodule ThumbnailFormatPng do
    @moduledoc """
    The thumbnail is in PNG format. It will be used only for background patterns.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1thumbnail_format_png.html).
    """

    defstruct "@type": "thumbnailFormatPng", "@extra": nil
  end

  defmodule StickerFormatTgs do
    @moduledoc """
    The sticker is an animation in TGS format.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sticker_format_tgs.html).
    """

    defstruct "@type": "stickerFormatTgs", "@extra": nil
  end

  defmodule ResetPasswordResultDeclined do
    @moduledoc """
    The password reset request was declined.

    | Name | Type | Description |
    |------|------| ------------|
    | retry_date | number | Point in time (Unix timestamp) when the password reset can be retried. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1reset_password_result_declined.html).
    """

    defstruct "@type": "resetPasswordResultDeclined", "@extra": nil, retry_date: nil
  end

  defmodule ChatLocation do
    @moduledoc """
    Represents a location to which a chat is connected.

    | Name | Type | Description |
    |------|------| ------------|
    | location | location | The location. |
    | address | string | Location address; 1-64 characters, as defined by the chat owner. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_location.html).
    """

    defstruct "@type": "chatLocation", "@extra": nil, location: nil, address: nil
  end

  defmodule InputMessageVideoNote do
    @moduledoc """
    A video note message.

    | Name | Type | Description |
    |------|------| ------------|
    | video_note | InputFile | Video note to be sent. |
    | thumbnail | inputThumbnail | Video thumbnail; pass null to skip thumbnail uploading. |
    | duration | number | Duration of the video, in seconds. |
    | length | number | Video width and height; must be positive and not greater than 640. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_video_note.html).
    """

    defstruct "@type": "inputMessageVideoNote",
              "@extra": nil,
              video_note: nil,
              thumbnail: nil,
              duration: nil,
              length: nil
  end

  defmodule InlineQueryResultSticker do
    @moduledoc """
    Represents a sticker.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Unique identifier of the query result. |
    | sticker | sticker | Sticker. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_query_result_sticker.html).
    """

    defstruct "@type": "inlineQueryResultSticker", "@extra": nil, id: nil, sticker: nil
  end

  defmodule ChatList do
    @moduledoc """
    This class is an abstract base class. Describes a list of chats.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_chat_list.html).
    """

    defstruct "@type": "ChatList", "@extra": nil
  end

  defmodule LanguagePackInfo do
    @moduledoc """
    Contains information about a language pack.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Unique language pack identifier. |
    | base_language_pack_id | string | Identifier of a base language pack; may be empty. If a string is missed in the language pack, then it must be fetched from base language pack. Unsupported in custom language packs. |
    | name | string | Language name. |
    | native_name | string | Name of the language in that language. |
    | plural_code | string | A language code to be used to apply plural forms. See https://www.unicode.org/cldr/charts/latest/supplemental/language_plural_rules.html for more information. |
    | is_official | bool | True, if the language pack is official. |
    | is_rtl | bool | True, if the language pack strings are RTL. |
    | is_beta | bool | True, if the language pack is a beta language pack. |
    | is_installed | bool | True, if the language pack is installed by the current user. |
    | total_string_count | number | Total number of non-deleted strings from the language pack. |
    | translated_string_count | number | Total number of translated strings from the language pack. |
    | local_string_count | number | Total number of non-deleted strings from the language pack available locally. |
    | translation_url | string | Link to language translation interface; empty for custom local language packs. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1language_pack_info.html).
    """

    defstruct "@type": "languagePackInfo",
              "@extra": nil,
              id: nil,
              base_language_pack_id: nil,
              name: nil,
              native_name: nil,
              plural_code: nil,
              is_official: nil,
              is_rtl: nil,
              is_beta: nil,
              is_installed: nil,
              total_string_count: nil,
              translated_string_count: nil,
              local_string_count: nil,
              translation_url: nil
  end

  defmodule PersonalDocument do
    @moduledoc """
    A personal document, containing some information about a user.

    | Name | Type | Description |
    |------|------| ------------|
    | files | datedFile | List of files containing the pages of the document. |
    | translation | datedFile | List of files containing a certified English translation of the document. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1personal_document.html).
    """

    defstruct "@type": "personalDocument", "@extra": nil, files: nil, translation: nil
  end

  defmodule AccountTtl do
    @moduledoc """
    Contains information about the period of inactivity after which the current user's account will automatically be deleted.

    | Name | Type | Description |
    |------|------| ------------|
    | days | number | Number of days of inactivity before the account will be flagged for deletion; 30-366 days. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1account_ttl.html).
    """

    defstruct "@type": "accountTtl", "@extra": nil, days: nil
  end

  defmodule StoryListMain do
    @moduledoc """
    The list of stories, shown in the main chat list and folder chat lists.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1story_list_main.html).
    """

    defstruct "@type": "storyListMain", "@extra": nil
  end

  defmodule MessageSendingStatePending do
    @moduledoc """
    The message is being sent now, but has not yet been delivered to the server.

    | Name | Type | Description |
    |------|------| ------------|
    | sending_id | number | Non-persistent message sending identifier, specified by the application. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_sending_state_pending.html).
    """

    defstruct "@type": "messageSendingStatePending", "@extra": nil, sending_id: nil
  end

  defmodule MessageVideoChatScheduled do
    @moduledoc """
    A new video chat was scheduled.

    | Name | Type | Description |
    |------|------| ------------|
    | group_call_id | number | Identifier of the video chat. The video chat can be received through the method getGroupCall. |
    | start_date | number | Point in time (Unix timestamp) when the group call is supposed to be started by an administrator. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_video_chat_scheduled.html).
    """

    defstruct "@type": "messageVideoChatScheduled", "@extra": nil, group_call_id: nil, start_date: nil
  end

  defmodule UpdateRecentStickers do
    @moduledoc """
    The list of recently used stickers was updated.

    | Name | Type | Description |
    |------|------| ------------|
    | is_attached | bool | True, if the list of stickers attached to photo or video files was updated; otherwise, the list of sent stickers is updated. |
    | sticker_ids | number | The new list of file identifiers of recently used stickers. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_recent_stickers.html).
    """

    defstruct "@type": "updateRecentStickers", "@extra": nil, is_attached: nil, sticker_ids: nil
  end

  defmodule InternalLinkTypeQrCodeAuthentication do
    @moduledoc """
    The link can be used to login the current user on another device, but it must be scanned from QR-code using in-app camera. An alert similar to "This code can be used to allow someone to log in to your Telegram account. To confirm Telegram login, please go to Settings > Devices > Scan QR and scan the code" needs to be shown.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_qr_code_authentication.html).
    """

    defstruct "@type": "internalLinkTypeQrCodeAuthentication", "@extra": nil
  end

  defmodule CallProblemNoise do
    @moduledoc """
    The user heard background noise.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_problem_noise.html).
    """

    defstruct "@type": "callProblemNoise", "@extra": nil
  end

  defmodule BotCommandScopeAllGroupChats do
    @moduledoc """
    A scope covering all group and supergroup chats.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1bot_command_scope_all_group_chats.html).
    """

    defstruct "@type": "botCommandScopeAllGroupChats", "@extra": nil
  end

  defmodule PaymentReceipt do
    @moduledoc """
    Contains information about a successful payment.

    | Name | Type | Description |
    |------|------| ------------|
    | title | string | Product title. |
    | description | formattedText | Product description. |
    | photo | photo | Product photo; may be null. |
    | date | number | Point in time (Unix timestamp) when the payment was made. |
    | seller_bot_user_id | string | User identifier of the seller bot. |
    | payment_provider_user_id | string | User identifier of the payment provider bot. |
    | invoice | invoice | Information about the invoice. |
    | order_info | orderInfo | Order information; may be null. |
    | shipping_option | shippingOption | Chosen shipping option; may be null. |
    | credentials_title | string | Title of the saved credentials chosen by the buyer. |
    | tip_amount | string | The amount of tip chosen by the buyer in the smallest units of the currency. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1payment_receipt.html).
    """

    defstruct "@type": "paymentReceipt",
              "@extra": nil,
              title: nil,
              description: nil,
              photo: nil,
              date: nil,
              seller_bot_user_id: nil,
              payment_provider_user_id: nil,
              invoice: nil,
              order_info: nil,
              shipping_option: nil,
              credentials_title: nil,
              tip_amount: nil
  end

  defmodule PhotoSize do
    @moduledoc """
    Describes an image in JPEG format.

    | Name | Type | Description |
    |------|------| ------------|
    | type | string | Image type (see https://core.telegram.org/constructor/photoSize). |
    | photo | file | Information about the image file. |
    | width | number | Image width. |
    | height | number | Image height. |
    | progressive_sizes | number | Sizes of progressive JPEG file prefixes, which can be used to preliminarily show the image; in bytes. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1photo_size.html).
    """

    defstruct "@type": "photoSize",
              "@extra": nil,
              type: nil,
              photo: nil,
              width: nil,
              height: nil,
              progressive_sizes: nil
  end

  defmodule MessageChatSetTheme do
    @moduledoc """
    A theme in the chat has been changed.

    | Name | Type | Description |
    |------|------| ------------|
    | theme_name | string | If non-empty, name of a new theme, set for the chat. Otherwise, chat theme was reset to the default one. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_chat_set_theme.html).
    """

    defstruct "@type": "messageChatSetTheme", "@extra": nil, theme_name: nil
  end

  defmodule UpdateChatOnlineMemberCount do
    @moduledoc """
    The number of online group members has changed. This update with non-zero number of online group members is sent only for currently opened chats. There is no guarantee that it is sent just after the number of online users has changed.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Identifier of the chat. |
    | online_member_count | number | New number of online members in the chat, or 0 if unknown. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_online_member_count.html).
    """

    defstruct "@type": "updateChatOnlineMemberCount", "@extra": nil, chat_id: nil, online_member_count: nil
  end

  defmodule ReportReasonIllegalDrugs do
    @moduledoc """
    The chat has illegal drugs related content.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1report_reason_illegal_drugs.html).
    """

    defstruct "@type": "reportReasonIllegalDrugs", "@extra": nil
  end

  defmodule StoryContentVideo do
    @moduledoc """
    A video story.

    | Name | Type | Description |
    |------|------| ------------|
    | video | storyVideo | The video in MPEG4 format. |
    | alternative_video | storyVideo | Alternative version of the video in MPEG4 format, encoded by x264 codec; may be null. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1story_content_video.html).
    """

    defstruct "@type": "storyContentVideo", "@extra": nil, video: nil, alternative_video: nil
  end

  defmodule UpdateChatUnreadMentionCount do
    @moduledoc """
    The chat unread_mention_count has changed.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |
    | unread_mention_count | number | The number of unread mention messages left in the chat. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_unread_mention_count.html).
    """

    defstruct "@type": "updateChatUnreadMentionCount", "@extra": nil, chat_id: nil, unread_mention_count: nil
  end

  defmodule RichTextStrikethrough do
    @moduledoc """
    A strikethrough rich text.

    | Name | Type | Description |
    |------|------| ------------|
    | text | RichText | Text. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1rich_text_strikethrough.html).
    """

    defstruct "@type": "richTextStrikethrough", "@extra": nil, text: nil
  end

  defmodule MessageExtendedMediaUnsupported do
    @moduledoc """
    The media is unsupported.

    | Name | Type | Description |
    |------|------| ------------|
    | caption | formattedText | Media caption. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_extended_media_unsupported.html).
    """

    defstruct "@type": "messageExtendedMediaUnsupported", "@extra": nil, caption: nil
  end

  defmodule UpdateFileDownload do
    @moduledoc """
    A file download was changed. This update is sent only after file download list is loaded for the first time.

    | Name | Type | Description |
    |------|------| ------------|
    | file_id | number | File identifier. |
    | complete_date | number | Point in time (Unix timestamp) when the file downloading was completed; 0 if the file downloading isn't completed. |
    | is_paused | bool | True, if downloading of the file is paused. |
    | counts | downloadedFileCounts | New number of being downloaded and recently downloaded files found. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_file_download.html).
    """

    defstruct "@type": "updateFileDownload",
              "@extra": nil,
              file_id: nil,
              complete_date: nil,
              is_paused: nil,
              counts: nil
  end

  defmodule AuthorizationStateWaitPhoneNumber do
    @moduledoc """
    TDLib needs the user's phone number to authorize. Call setAuthenticationPhoneNumber to provide the phone number, or use requestQrCodeAuthentication or checkAuthenticationBotToken for other authentication options.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authorization_state_wait_phone_number.html).
    """

    defstruct "@type": "authorizationStateWaitPhoneNumber", "@extra": nil
  end

  defmodule DeviceToken do
    @moduledoc """
    This class is an abstract base class. Represents a data needed to subscribe for push notifications through registerDevice method. To use specific push notification service, the correct application platform must be specified and a valid server authentication data must be uploaded at https://my.telegram.org.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_device_token.html).
    """

    defstruct "@type": "DeviceToken", "@extra": nil
  end

  defmodule PageBlockPhoto do
    @moduledoc """
    A photo.

    | Name | Type | Description |
    |------|------| ------------|
    | photo | photo | Photo file; may be null. |
    | caption | pageBlockCaption | Photo caption. |
    | url | string | URL that needs to be opened when the photo is clicked. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_photo.html).
    """

    defstruct "@type": "pageBlockPhoto", "@extra": nil, photo: nil, caption: nil, url: nil
  end

  defmodule ChatPermissions do
    @moduledoc """
    Describes actions that a user is allowed to take in a chat.

    | Name | Type | Description |
    |------|------| ------------|
    | can_send_basic_messages | bool | True, if the user can send text messages, contacts, giveaways, invoices, locations, and venues. |
    | can_send_audios | bool | True, if the user can send music files. |
    | can_send_documents | bool | True, if the user can send documents. |
    | can_send_photos | bool | True, if the user can send photos. |
    | can_send_videos | bool | True, if the user can send videos. |
    | can_send_video_notes | bool | True, if the user can send video notes. |
    | can_send_voice_notes | bool | True, if the user can send voice notes. |
    | can_send_polls | bool | True, if the user can send polls. |
    | can_send_other_messages | bool | True, if the user can send animations, games, stickers, and dice and use inline bots. |
    | can_add_web_page_previews | bool | True, if the user may add a web page preview to their messages. |
    | can_change_info | bool | True, if the user can change the chat title, photo, and other settings. |
    | can_invite_users | bool | True, if the user can invite new users to the chat. |
    | can_pin_messages | bool | True, if the user can pin messages. |
    | can_manage_topics | bool | True, if the user can manage topics. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_permissions.html).
    """

    defstruct "@type": "chatPermissions",
              "@extra": nil,
              can_send_basic_messages: nil,
              can_send_audios: nil,
              can_send_documents: nil,
              can_send_photos: nil,
              can_send_videos: nil,
              can_send_video_notes: nil,
              can_send_voice_notes: nil,
              can_send_polls: nil,
              can_send_other_messages: nil,
              can_add_web_page_previews: nil,
              can_change_info: nil,
              can_invite_users: nil,
              can_pin_messages: nil,
              can_manage_topics: nil
  end

  defmodule UserPrivacySettingShowStatus do
    @moduledoc """
    A privacy setting for managing whether the user's online status is visible.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_privacy_setting_show_status.html).
    """

    defstruct "@type": "userPrivacySettingShowStatus", "@extra": nil
  end

  defmodule PassportElementTypePhoneNumber do
    @moduledoc """
    A Telegram Passport element containing the user's phone number.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_type_phone_number.html).
    """

    defstruct "@type": "passportElementTypePhoneNumber", "@extra": nil
  end

  defmodule PushMessageContentPoll do
    @moduledoc """
    A message with a poll.

    | Name | Type | Description |
    |------|------| ------------|
    | question | string | Poll question. |
    | is_regular | bool | True, if the poll is regular and not in quiz mode. |
    | is_pinned | bool | True, if the message is a pinned message with the specified content. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_poll.html).
    """

    defstruct "@type": "pushMessageContentPoll", "@extra": nil, question: nil, is_regular: nil, is_pinned: nil
  end

  defmodule ChatActionCancel do
    @moduledoc """
    The user has canceled the previous action.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_cancel.html).
    """

    defstruct "@type": "chatActionCancel", "@extra": nil
  end

  defmodule MessageGameScore do
    @moduledoc """
    A new high score was achieved in a game.

    | Name | Type | Description |
    |------|------| ------------|
    | game_message_id | string | Identifier of the message with the game, can be an identifier of a deleted message. |
    | game_id | string | Identifier of the game; may be different from the games presented in the message with the game. |
    | score | number | New score. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_game_score.html).
    """

    defstruct "@type": "messageGameScore", "@extra": nil, game_message_id: nil, game_id: nil, score: nil
  end

  defmodule ChatMessageSender do
    @moduledoc """
    Represents a message sender, which can be used to send messages in a chat.

    | Name | Type | Description |
    |------|------| ------------|
    | sender | MessageSender | The message sender. |
    | needs_premium | bool | True, if Telegram Premium is needed to use the message sender. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_message_sender.html).
    """

    defstruct "@type": "chatMessageSender", "@extra": nil, sender: nil, needs_premium: nil
  end

  defmodule ChatEventPhotoChanged do
    @moduledoc """
    The chat photo was changed.

    | Name | Type | Description |
    |------|------| ------------|
    | old_photo | chatPhoto | Previous chat photo value; may be null. |
    | new_photo | chatPhoto | New chat photo value; may be null. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_photo_changed.html).
    """

    defstruct "@type": "chatEventPhotoChanged", "@extra": nil, old_photo: nil, new_photo: nil
  end

  defmodule ChatMembersFilterContacts do
    @moduledoc """
    Returns contacts of the user.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_members_filter_contacts.html).
    """

    defstruct "@type": "chatMembersFilterContacts", "@extra": nil
  end

  defmodule ChatStatisticsObjectType do
    @moduledoc """
    This class is an abstract base class. Describes type of an object, for which statistics are provided.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_chat_statistics_object_type.html).
    """

    defstruct "@type": "ChatStatisticsObjectType", "@extra": nil
  end

  defmodule PassportElementTypePassport do
    @moduledoc """
    A Telegram Passport element containing the user's passport.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_type_passport.html).
    """

    defstruct "@type": "passportElementTypePassport", "@extra": nil
  end

  defmodule UpdateNewInlineCallbackQuery do
    @moduledoc """
    A new incoming callback query from a message sent via a bot; for bots only.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Unique query identifier. |
    | sender_user_id | string | Identifier of the user who sent the query. |
    | inline_message_id | string | Identifier of the inline message from which the query originated. |
    | chat_instance | string | An identifier uniquely corresponding to the chat a message was sent to. |
    | payload | CallbackQueryPayload | Query payload. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_new_inline_callback_query.html).
    """

    defstruct "@type": "updateNewInlineCallbackQuery",
              "@extra": nil,
              id: nil,
              sender_user_id: nil,
              inline_message_id: nil,
              chat_instance: nil,
              payload: nil
  end

  defmodule PassportElementPassportRegistration do
    @moduledoc """
    A Telegram Passport element containing the user's passport registration pages.

    | Name | Type | Description |
    |------|------| ------------|
    | passport_registration | personalDocument | Passport registration pages. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_passport_registration.html).
    """

    defstruct "@type": "passportElementPassportRegistration", "@extra": nil, passport_registration: nil
  end

  defmodule FoundChatMessages do
    @moduledoc """
    Contains a list of messages found by a search in a given chat.

    | Name | Type | Description |
    |------|------| ------------|
    | total_count | number | Approximate total number of messages found; -1 if unknown. |
    | messages | message | List of messages. |
    | next_from_message_id | string | The offset for the next request. If 0, there are no more results. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1found_chat_messages.html).
    """

    defstruct "@type": "foundChatMessages", "@extra": nil, total_count: nil, messages: nil, next_from_message_id: nil
  end

  defmodule PageBlockDetails do
    @moduledoc """
    A collapsible block.

    | Name | Type | Description |
    |------|------| ------------|
    | header | RichText | Always visible heading for the block. |
    | page_blocks | PageBlock | Block contents. |
    | is_open | bool | True, if the block is open by default. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_details.html).
    """

    defstruct "@type": "pageBlockDetails", "@extra": nil, header: nil, page_blocks: nil, is_open: nil
  end

  defmodule JsonValue do
    @moduledoc """
    This class is an abstract base class. Represents a JSON value.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_json_value.html).
    """

    defstruct "@type": "JsonValue", "@extra": nil
  end

  defmodule FoundMessages do
    @moduledoc """
    Contains a list of messages found by a search.

    | Name | Type | Description |
    |------|------| ------------|
    | total_count | number | Approximate total number of messages found; -1 if unknown. |
    | messages | message | List of messages. |
    | next_offset | string | The offset for the next request. If empty, then there are no more results. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1found_messages.html).
    """

    defstruct "@type": "foundMessages", "@extra": nil, total_count: nil, messages: nil, next_offset: nil
  end

  defmodule PaymentProvider do
    @moduledoc """
    This class is an abstract base class. Contains information about a payment provider.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_payment_provider.html).
    """

    defstruct "@type": "PaymentProvider", "@extra": nil
  end

  defmodule AuthenticationCodeTypeFirebaseIos do
    @moduledoc """
    An authentication code is delivered via Firebase Authentication to the official iOS application.

    | Name | Type | Description |
    |------|------| ------------|
    | receipt | string | Receipt of successful application token validation to compare with receipt from push notification. |
    | push_timeout | number | Time after the next authentication method is supposed to be used if verification push notification isn't received, in seconds. |
    | length | number | Length of the code. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authentication_code_type_firebase_ios.html).
    """

    defstruct "@type": "authenticationCodeTypeFirebaseIos", "@extra": nil, receipt: nil, push_timeout: nil, length: nil
  end

  defmodule StoryListArchive do
    @moduledoc """
    The list of stories, shown in the Arvhive chat list.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1story_list_archive.html).
    """

    defstruct "@type": "storyListArchive", "@extra": nil
  end

  defmodule ChatEventMemberJoinedByInviteLink do
    @moduledoc """
    A new member joined the chat via an invite link.

    | Name | Type | Description |
    |------|------| ------------|
    | invite_link | chatInviteLink | Invite link used to join the chat. |
    | via_chat_folder_invite_link | bool | True, if the user has joined the chat using an invite link for a chat folder. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_member_joined_by_invite_link.html).
    """

    defstruct "@type": "chatEventMemberJoinedByInviteLink",
              "@extra": nil,
              invite_link: nil,
              via_chat_folder_invite_link: nil
  end

  defmodule PremiumStoryFeatureSaveStories do
    @moduledoc """
    The ability to save other's unprotected stories.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_story_feature_save_stories.html).
    """

    defstruct "@type": "premiumStoryFeatureSaveStories", "@extra": nil
  end

  defmodule PollOption do
    @moduledoc """
    Describes one answer option of a poll.

    | Name | Type | Description |
    |------|------| ------------|
    | text | string | Option text; 1-100 characters. |
    | voter_count | number | Number of voters for this option, available only for closed or voted polls. |
    | vote_percentage | number | The percentage of votes for this option; 0-100. |
    | is_chosen | bool | True, if the option was chosen by the user. |
    | is_being_chosen | bool | True, if the option is being chosen by a pending setPollAnswer request. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1poll_option.html).
    """

    defstruct "@type": "pollOption",
              "@extra": nil,
              text: nil,
              voter_count: nil,
              vote_percentage: nil,
              is_chosen: nil,
              is_being_chosen: nil
  end

  defmodule RichTextItalic do
    @moduledoc """
    An italicized rich text.

    | Name | Type | Description |
    |------|------| ------------|
    | text | RichText | Text. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1rich_text_italic.html).
    """

    defstruct "@type": "richTextItalic", "@extra": nil, text: nil
  end

  defmodule InputPersonalDocument do
    @moduledoc """
    A personal document to be saved to Telegram Passport.

    | Name | Type | Description |
    |------|------| ------------|
    | files | InputFile | List of files containing the pages of the document. |
    | translation | InputFile | List of files containing a certified English translation of the document. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_personal_document.html).
    """

    defstruct "@type": "inputPersonalDocument", "@extra": nil, files: nil, translation: nil
  end

  defmodule PremiumPaymentOption do
    @moduledoc """
    Describes an option for buying Telegram Premium to a user.

    | Name | Type | Description |
    |------|------| ------------|
    | currency | string | ISO 4217 currency code for Telegram Premium subscription payment. |
    | amount | string | The amount to pay, in the smallest units of the currency. |
    | discount_percentage | number | The discount associated with this option, as a percentage. |
    | month_count | number | Number of month the Telegram Premium subscription will be active. |
    | store_product_id | string | Identifier of the store product associated with the option. |
    | payment_link | InternalLinkType | An internal link to be opened for buying Telegram Premium to the user if store payment isn't possible; may be null if direct payment isn't available. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_payment_option.html).
    """

    defstruct "@type": "premiumPaymentOption",
              "@extra": nil,
              currency: nil,
              amount: nil,
              discount_percentage: nil,
              month_count: nil,
              store_product_id: nil,
              payment_link: nil
  end

  defmodule CallId do
    @moduledoc """
    Contains the call identifier.

    | Name | Type | Description |
    |------|------| ------------|
    | id | number | Call identifier. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_id.html).
    """

    defstruct "@type": "callId", "@extra": nil, id: nil
  end

  defmodule LogStreamFile do
    @moduledoc """
    The log is written to a file.

    | Name | Type | Description |
    |------|------| ------------|
    | path | string | Path to the file to where the internal TDLib log will be written. |
    | max_file_size | string | The maximum size of the file to where the internal TDLib log is written before the file will automatically be rotated, in bytes. |
    | redirect_stderr | bool | Pass true to additionally redirect stderr to the log file. Ignored on Windows. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1log_stream_file.html).
    """

    defstruct "@type": "logStreamFile", "@extra": nil, path: nil, max_file_size: nil, redirect_stderr: nil
  end

  defmodule MessageOriginHiddenUser do
    @moduledoc """
    The message was originally sent by a user, which is hidden by their privacy settings.

    | Name | Type | Description |
    |------|------| ------------|
    | sender_name | string | Name of the sender. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_origin_hidden_user.html).
    """

    defstruct "@type": "messageOriginHiddenUser", "@extra": nil, sender_name: nil
  end

  defmodule StoryPrivacySettings do
    @moduledoc """
    This class is an abstract base class. Describes privacy settings of a story.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_story_privacy_settings.html).
    """

    defstruct "@type": "StoryPrivacySettings", "@extra": nil
  end

  defmodule NotificationSettingsScope do
    @moduledoc """
    This class is an abstract base class. Describes the types of chats to which notification settings are relevant.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_notification_settings_scope.html).
    """

    defstruct "@type": "NotificationSettingsScope", "@extra": nil
  end

  defmodule InputMessageLocation do
    @moduledoc """
    A message with a location.

    | Name | Type | Description |
    |------|------| ------------|
    | location | location | Location to be sent. |
    | live_period | number | Period for which the location can be updated, in seconds; must be between 60 and 86400 for a live location and 0 otherwise. |
    | heading | number | For live locations, a direction in which the location moves, in degrees; 1-360. Pass 0 if unknown. |
    | proximity_alert_radius | number | For live locations, a maximum distance to another chat member for proximity alerts, in meters (0-100000). Pass 0 if the notification is disabled. Can't be enabled in channels and Saved Messages. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_location.html).
    """

    defstruct "@type": "inputMessageLocation",
              "@extra": nil,
              location: nil,
              live_period: nil,
              heading: nil,
              proximity_alert_radius: nil
  end

  defmodule AttachmentMenuBotColor do
    @moduledoc """
    Describes a color to highlight a bot added to attachment menu.

    | Name | Type | Description |
    |------|------| ------------|
    | light_color | number | Color in the RGB24 format for light themes. |
    | dark_color | number | Color in the RGB24 format for dark themes. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1attachment_menu_bot_color.html).
    """

    defstruct "@type": "attachmentMenuBotColor", "@extra": nil, light_color: nil, dark_color: nil
  end

  defmodule PaymentResult do
    @moduledoc """
    Contains the result of a payment request.

    | Name | Type | Description |
    |------|------| ------------|
    | success | bool | True, if the payment request was successful; otherwise, the verification_url will be non-empty. |
    | verification_url | string | URL for additional payment credentials verification. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1payment_result.html).
    """

    defstruct "@type": "paymentResult", "@extra": nil, success: nil, verification_url: nil
  end

  defmodule DeviceTokenMicrosoftPushVoIP do
    @moduledoc """
    A token for Microsoft Push Notification Service VoIP channel.

    | Name | Type | Description |
    |------|------| ------------|
    | channel_uri | string | Push notification channel URI; may be empty to deregister a device. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1device_token_microsoft_push_vo_i_p.html).
    """

    defstruct "@type": "deviceTokenMicrosoftPushVoIP", "@extra": nil, channel_uri: nil
  end

  defmodule InternalLinkTypePhoneNumberConfirmation do
    @moduledoc """
    The link can be used to confirm ownership of a phone number to prevent account deletion. Call sendPhoneNumberConfirmationCode with the given hash and phone number to process the link.

    | Name | Type | Description |
    |------|------| ------------|
    | hash | string | Hash value from the link. |
    | phone_number | string | Phone number value from the link. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_phone_number_confirmation.html).
    """

    defstruct "@type": "internalLinkTypePhoneNumberConfirmation", "@extra": nil, hash: nil, phone_number: nil
  end

  defmodule MessageFileTypePrivate do
    @moduledoc """
    The messages were exported from a private chat.

    | Name | Type | Description |
    |------|------| ------------|
    | name | string | Name of the other party; may be empty if unrecognized. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_file_type_private.html).
    """

    defstruct "@type": "messageFileTypePrivate", "@extra": nil, name: nil
  end

  defmodule StickerFormatWebm do
    @moduledoc """
    The sticker is a video in WEBM format.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sticker_format_webm.html).
    """

    defstruct "@type": "stickerFormatWebm", "@extra": nil
  end

  defmodule CanSendStoryResult do
    @moduledoc """
    This class is an abstract base class. Represents result of checking whether the current user can send a story in the specific chat.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_can_send_story_result.html).
    """

    defstruct "@type": "CanSendStoryResult", "@extra": nil
  end

  defmodule BotWriteAccessAllowReasonAcceptedRequest do
    @moduledoc """
    The user accepted bot's request to send messages with allowBotToSendMessages.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1bot_write_access_allow_reason_accepted_request.html).
    """

    defstruct "@type": "botWriteAccessAllowReasonAcceptedRequest", "@extra": nil
  end

  defmodule AnimatedEmoji do
    @moduledoc """
    Describes an animated or custom representation of an emoji.

    | Name | Type | Description |
    |------|------| ------------|
    | sticker | sticker | Sticker for the emoji; may be null if yet unknown for a custom emoji. If the sticker is a custom emoji, it can have arbitrary format different from stickerFormatTgs. |
    | sticker_width | number | Expected width of the sticker, which can be used if the sticker is null. |
    | sticker_height | number | Expected height of the sticker, which can be used if the sticker is null. |
    | fitzpatrick_type | number | Emoji modifier fitzpatrick type; 0-6; 0 if none. |
    | sound | file | File containing the sound to be played when the sticker is clicked; may be null. The sound is encoded with the Opus codec, and stored inside an OGG container. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1animated_emoji.html).
    """

    defstruct "@type": "animatedEmoji",
              "@extra": nil,
              sticker: nil,
              sticker_width: nil,
              sticker_height: nil,
              fitzpatrick_type: nil,
              sound: nil
  end

  defmodule PremiumGiveawayParticipantStatus do
    @moduledoc """
    This class is an abstract base class. Contains information about status of a user in a Telegram Premium giveaway.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_premium_giveaway_participant_status.html).
    """

    defstruct "@type": "PremiumGiveawayParticipantStatus", "@extra": nil
  end

  defmodule CallServerTypeTelegramReflector do
    @moduledoc """
    A Telegram call reflector.

    | Name | Type | Description |
    |------|------| ------------|
    | peer_tag | bytes | A peer tag to be used with the reflector. |
    | is_tcp | bool | True, if the server uses TCP instead of UDP. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_server_type_telegram_reflector.html).
    """

    defstruct "@type": "callServerTypeTelegramReflector", "@extra": nil, peer_tag: nil, is_tcp: nil
  end

  defmodule InternalLinkTypeInvoice do
    @moduledoc """
    The link is a link to an invoice. Call getPaymentForm with the given invoice name to process the link.

    | Name | Type | Description |
    |------|------| ------------|
    | invoice_name | string | Name of the invoice. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_invoice.html).
    """

    defstruct "@type": "internalLinkTypeInvoice", "@extra": nil, invoice_name: nil
  end

  defmodule PremiumLimitTypeCreatedPublicChatCount do
    @moduledoc """
    The maximum number of created public chats.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_limit_type_created_public_chat_count.html).
    """

    defstruct "@type": "premiumLimitTypeCreatedPublicChatCount", "@extra": nil
  end

  defmodule InputInlineQueryResultContact do
    @moduledoc """
    Represents a user contact.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Unique identifier of the query result. |
    | contact | contact | User contact. |
    | thumbnail_url | string | URL of the result thumbnail, if it exists. |
    | thumbnail_width | number | Thumbnail width, if known. |
    | thumbnail_height | number | Thumbnail height, if known. |
    | reply_markup | ReplyMarkup | The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null. |
    | input_message_content | InputMessageContent | The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_inline_query_result_contact.html).
    """

    defstruct "@type": "inputInlineQueryResultContact",
              "@extra": nil,
              id: nil,
              contact: nil,
              thumbnail_url: nil,
              thumbnail_width: nil,
              thumbnail_height: nil,
              reply_markup: nil,
              input_message_content: nil
  end

  defmodule FileTypeVoiceNote do
    @moduledoc """
    The file is a voice note.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_voice_note.html).
    """

    defstruct "@type": "fileTypeVoiceNote", "@extra": nil
  end

  defmodule NetworkTypeMobileRoaming do
    @moduledoc """
    A mobile roaming network.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1network_type_mobile_roaming.html).
    """

    defstruct "@type": "networkTypeMobileRoaming", "@extra": nil
  end

  defmodule ChatAvailableReactionsAll do
    @moduledoc """
    All reactions are available in the chat.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_available_reactions_all.html).
    """

    defstruct "@type": "chatAvailableReactionsAll", "@extra": nil
  end

  defmodule GameHighScore do
    @moduledoc """
    Contains one row of the game high score table.

    | Name | Type | Description |
    |------|------| ------------|
    | position | number | Position in the high score table. |
    | user_id | string | User identifier. |
    | score | number | User score. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1game_high_score.html).
    """

    defstruct "@type": "gameHighScore", "@extra": nil, position: nil, user_id: nil, score: nil
  end

  defmodule PremiumGiveawayParticipantStatusParticipating do
    @moduledoc """
    The user participates in the giveaway.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_giveaway_participant_status_participating.html).
    """

    defstruct "@type": "premiumGiveawayParticipantStatusParticipating", "@extra": nil
  end

  defmodule CanSendStoryResultOk do
    @moduledoc """
    A story can be sent.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1can_send_story_result_ok.html).
    """

    defstruct "@type": "canSendStoryResultOk", "@extra": nil
  end

  defmodule UpdateChatMessageSender do
    @moduledoc """
    The message sender that is selected to send messages in a chat has changed.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |
    | message_sender_id | MessageSender | New value of message_sender_id; may be null if the user can't change message sender. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_message_sender.html).
    """

    defstruct "@type": "updateChatMessageSender", "@extra": nil, chat_id: nil, message_sender_id: nil
  end

  defmodule ReactionType do
    @moduledoc """
    This class is an abstract base class. Describes type of message reaction.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_reaction_type.html).
    """

    defstruct "@type": "ReactionType", "@extra": nil
  end

  defmodule ChatInviteLinkMembers do
    @moduledoc """
    Contains a list of chat members joined a chat via an invite link.

    | Name | Type | Description |
    |------|------| ------------|
    | total_count | number | Approximate total number of chat members found. |
    | members | chatInviteLinkMember | List of chat members, joined a chat via an invite link. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_invite_link_members.html).
    """

    defstruct "@type": "chatInviteLinkMembers", "@extra": nil, total_count: nil, members: nil
  end

  defmodule InputPassportElement do
    @moduledoc """
    This class is an abstract base class. Contains information about a Telegram Passport element to be saved.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_input_passport_element.html).
    """

    defstruct "@type": "InputPassportElement", "@extra": nil
  end

  defmodule PassportElementTypeTemporaryRegistration do
    @moduledoc """
    A Telegram Passport element containing the user's temporary registration.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_type_temporary_registration.html).
    """

    defstruct "@type": "passportElementTypeTemporaryRegistration", "@extra": nil
  end

  defmodule InputMessageVenue do
    @moduledoc """
    A message with information about a venue.

    | Name | Type | Description |
    |------|------| ------------|
    | venue | venue | Venue to send. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_venue.html).
    """

    defstruct "@type": "inputMessageVenue", "@extra": nil, venue: nil
  end

  defmodule MessageGame do
    @moduledoc """
    A message with a game.

    | Name | Type | Description |
    |------|------| ------------|
    | game | game | The game description. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_game.html).
    """

    defstruct "@type": "messageGame", "@extra": nil, game: nil
  end

  defmodule ProxyType do
    @moduledoc """
    This class is an abstract base class. Describes the type of a proxy server.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_proxy_type.html).
    """

    defstruct "@type": "ProxyType", "@extra": nil
  end

  defmodule PremiumFeatureVoiceRecognition do
    @moduledoc """
    The ability to convert voice notes to text.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_feature_voice_recognition.html).
    """

    defstruct "@type": "premiumFeatureVoiceRecognition", "@extra": nil
  end

  defmodule ChatActionBarAddContact do
    @moduledoc """
    The chat is a private or secret chat and the other user can be added to the contact list using the method addContact.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_bar_add_contact.html).
    """

    defstruct "@type": "chatActionBarAddContact", "@extra": nil
  end

  defmodule PageBlockList do
    @moduledoc """
    A list of data blocks.

    | Name | Type | Description |
    |------|------| ------------|
    | items | pageBlockListItem | The items of the list. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_list.html).
    """

    defstruct "@type": "pageBlockList", "@extra": nil, items: nil
  end

  defmodule ChatMemberStatus do
    @moduledoc """
    This class is an abstract base class. Provides information about the status of a member in a chat.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_chat_member_status.html).
    """

    defstruct "@type": "ChatMemberStatus", "@extra": nil
  end

  defmodule MessageSponsor do
    @moduledoc """
    Information about the sponsor of a message.

    | Name | Type | Description |
    |------|------| ------------|
    | type | MessageSponsorType | Type of the sponsor. |
    | photo | chatPhotoInfo | Photo of the sponsor; may be null if must not be shown. |
    | info | string | Additional optional information about the sponsor to be shown along with the message. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_sponsor.html).
    """

    defstruct "@type": "messageSponsor", "@extra": nil, type: nil, photo: nil, info: nil
  end

  defmodule UpdateFile do
    @moduledoc """
    Information about a file was updated.

    | Name | Type | Description |
    |------|------| ------------|
    | file | file | New data about the file. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_file.html).
    """

    defstruct "@type": "updateFile", "@extra": nil, file: nil
  end

  defmodule ForumTopic do
    @moduledoc """
    Describes a forum topic.

    | Name | Type | Description |
    |------|------| ------------|
    | info | forumTopicInfo | Basic information about the topic. |
    | last_message | message | Last message in the topic; may be null if unknown. |
    | is_pinned | bool | True, if the topic is pinned in the topic list. |
    | unread_count | number | Number of unread messages in the topic. |
    | last_read_inbox_message_id | string | Identifier of the last read incoming message. |
    | last_read_outbox_message_id | string | Identifier of the last read outgoing message. |
    | unread_mention_count | number | Number of unread messages with a mention/reply in the topic. |
    | unread_reaction_count | number | Number of messages with unread reactions in the topic. |
    | notification_settings | chatNotificationSettings | Notification settings for the topic. |
    | draft_message | draftMessage | A draft of a message in the topic; may be null if none. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1forum_topic.html).
    """

    defstruct "@type": "forumTopic",
              "@extra": nil,
              info: nil,
              last_message: nil,
              is_pinned: nil,
              unread_count: nil,
              last_read_inbox_message_id: nil,
              last_read_outbox_message_id: nil,
              unread_mention_count: nil,
              unread_reaction_count: nil,
              notification_settings: nil,
              draft_message: nil
  end

  defmodule PremiumStoryFeatureLinksAndFormatting do
    @moduledoc """
    The ability to use links and formatting in story caption.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_story_feature_links_and_formatting.html).
    """

    defstruct "@type": "premiumStoryFeatureLinksAndFormatting", "@extra": nil
  end

  defmodule SessionTypeUbuntu do
    @moduledoc """
    The session is running on an Ubuntu device.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1session_type_ubuntu.html).
    """

    defstruct "@type": "sessionTypeUbuntu", "@extra": nil
  end

  defmodule UpdateNewChat do
    @moduledoc """
    A new chat has been loaded/created. This update is guaranteed to come before the chat identifier is returned to the application. The chat field changes will be reported through separate updates.

    | Name | Type | Description |
    |------|------| ------------|
    | chat | chat | The chat. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_new_chat.html).
    """

    defstruct "@type": "updateNewChat", "@extra": nil, chat: nil
  end

  defmodule InputStoryAreaType do
    @moduledoc """
    This class is an abstract base class. Describes type of a clickable rectangle area on a story media to be added.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_input_story_area_type.html).
    """

    defstruct "@type": "InputStoryAreaType", "@extra": nil
  end

  defmodule UpdateChatBoost do
    @moduledoc """
    A chat boost has changed; for bots only.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |
    | boost | chatBoost | New information about the boost. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_boost.html).
    """

    defstruct "@type": "updateChatBoost", "@extra": nil, chat_id: nil, boost: nil
  end

  defmodule StoryFullId do
    @moduledoc """
    Contains identifier of a story along with identifier of its sender.

    | Name | Type | Description |
    |------|------| ------------|
    | sender_chat_id | string | Identifier of the chat that posted the story. |
    | story_id | number | Unique story identifier among stories of the given sender. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1story_full_id.html).
    """

    defstruct "@type": "storyFullId", "@extra": nil, sender_chat_id: nil, story_id: nil
  end

  defmodule AuthenticationCodeTypeMissedCall do
    @moduledoc """
    An authentication code is delivered by an immediately canceled call to the specified phone number. The last digits of the phone number that calls are the code that must be entered manually by the user.

    | Name | Type | Description |
    |------|------| ------------|
    | phone_number_prefix | string | Prefix of the phone number from which the call will be made. |
    | length | number | Number of digits in the code, excluding the prefix. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authentication_code_type_missed_call.html).
    """

    defstruct "@type": "authenticationCodeTypeMissedCall", "@extra": nil, phone_number_prefix: nil, length: nil
  end

  defmodule TopChatCategoryCalls do
    @moduledoc """
    A category containing frequently used chats used for calls.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1top_chat_category_calls.html).
    """

    defstruct "@type": "topChatCategoryCalls", "@extra": nil
  end

  defmodule PublicChatTypeHasUsername do
    @moduledoc """
    The chat is public, because it has an active username.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1public_chat_type_has_username.html).
    """

    defstruct "@type": "publicChatTypeHasUsername", "@extra": nil
  end

  defmodule DeviceTokenBlackBerryPush do
    @moduledoc """
    A token for BlackBerry Push Service.

    | Name | Type | Description |
    |------|------| ------------|
    | token | string | Token; may be empty to deregister a device. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1device_token_black_berry_push.html).
    """

    defstruct "@type": "deviceTokenBlackBerryPush", "@extra": nil, token: nil
  end

  defmodule InputMessageVideo do
    @moduledoc """
    A video message.

    | Name | Type | Description |
    |------|------| ------------|
    | video | InputFile | Video to be sent. |
    | thumbnail | inputThumbnail | Video thumbnail; pass null to skip thumbnail uploading. |
    | added_sticker_file_ids | number | File identifiers of the stickers added to the video, if applicable. |
    | duration | number | Duration of the video, in seconds. |
    | width | number | Video width. |
    | height | number | Video height. |
    | supports_streaming | bool | True, if the video is supposed to be streamed. |
    | caption | formattedText | Video caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters. |
    | self_destruct_type | MessageSelfDestructType | Video self-destruct type; pass null if none; private chats only. |
    | has_spoiler | bool | True, if the video preview must be covered by a spoiler animation; not supported in secret chats. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_video.html).
    """

    defstruct "@type": "inputMessageVideo",
              "@extra": nil,
              video: nil,
              thumbnail: nil,
              added_sticker_file_ids: nil,
              duration: nil,
              width: nil,
              height: nil,
              supports_streaming: nil,
              caption: nil,
              self_destruct_type: nil,
              has_spoiler: nil
  end

  defmodule VectorPathCommand do
    @moduledoc """
    This class is an abstract base class. Represents a vector path command.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_vector_path_command.html).
    """

    defstruct "@type": "VectorPathCommand", "@extra": nil
  end

  defmodule SupergroupFullInfo do
    @moduledoc """
    Contains full information about a supergroup or channel.

    | Name | Type | Description |
    |------|------| ------------|
    | photo | chatPhoto | Chat photo; may be null if empty or unknown. If non-null, then it is the same photo as in chat.photo. |
    | description | string | Supergroup or channel description. |
    | member_count | number | Number of members in the supergroup or channel; 0 if unknown. |
    | administrator_count | number | Number of privileged users in the supergroup or channel; 0 if unknown. |
    | restricted_count | number | Number of restricted users in the supergroup; 0 if unknown. |
    | banned_count | number | Number of users banned from chat; 0 if unknown. |
    | linked_chat_id | string | Chat identifier of a discussion group for the channel, or a channel, for which the supergroup is the designated discussion group; 0 if none or unknown. |
    | slow_mode_delay | number | Delay between consecutive sent messages for non-administrator supergroup members, in seconds. |
    | slow_mode_delay_expires_in | double | Time left before next message can be sent in the supergroup, in seconds. An updateSupergroupFullInfo update is not triggered when value of this field changes, but both new and old values are non-zero. |
    | can_get_members | bool | True, if members of the chat can be retrieved via getSupergroupMembers or searchChatMembers. |
    | has_hidden_members | bool | True, if non-administrators can receive only administrators and bots using getSupergroupMembers or searchChatMembers. |
    | can_hide_members | bool | True, if non-administrators and non-bots can be hidden in responses to getSupergroupMembers and searchChatMembers for non-administrators. |
    | can_set_sticker_set | bool | True, if the supergroup sticker set can be changed. |
    | can_set_location | bool | True, if the supergroup location can be changed. |
    | can_get_statistics | bool | True, if the supergroup or channel statistics are available. |
    | can_toggle_aggressive_anti_spam | bool | True, if aggressive anti-spam checks can be enabled or disabled in the supergroup. |
    | is_all_history_available | bool | True, if new chat members will have access to old messages. In public, discussion, of forum groups and all channels, old messages are always available, so this option affects only private non-forum supergroups without a linked chat. The value of this field is only available to chat administrators. |
    | has_aggressive_anti_spam_enabled | bool | True, if aggressive anti-spam checks are enabled in the supergroup. The value of this field is only available to chat administrators. |
    | has_pinned_stories | bool | True, if the channel has pinned stories. |
    | sticker_set_id | string | Identifier of the supergroup sticker set; 0 if none. |
    | location | chatLocation | Location to which the supergroup is connected; may be null if none. |
    | invite_link | chatInviteLink | Primary invite link for the chat; may be null. For chat administrators with can_invite_users right only. |
    | bot_commands | botCommands | List of commands of bots in the group. |
    | upgraded_from_basic_group_id | string | Identifier of the basic group from which supergroup was upgraded; 0 if none. |
    | upgraded_from_max_message_id | string | Identifier of the last message in the basic group from which supergroup was upgraded; 0 if none. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1supergroup_full_info.html).
    """

    defstruct "@type": "supergroupFullInfo",
              "@extra": nil,
              photo: nil,
              description: nil,
              member_count: nil,
              administrator_count: nil,
              restricted_count: nil,
              banned_count: nil,
              linked_chat_id: nil,
              slow_mode_delay: nil,
              slow_mode_delay_expires_in: nil,
              can_get_members: nil,
              has_hidden_members: nil,
              can_hide_members: nil,
              can_set_sticker_set: nil,
              can_set_location: nil,
              can_get_statistics: nil,
              can_toggle_aggressive_anti_spam: nil,
              is_all_history_available: nil,
              has_aggressive_anti_spam_enabled: nil,
              has_pinned_stories: nil,
              sticker_set_id: nil,
              location: nil,
              invite_link: nil,
              bot_commands: nil,
              upgraded_from_basic_group_id: nil,
              upgraded_from_max_message_id: nil
  end

  defmodule MessageChatJoinByRequest do
    @moduledoc """
    A new member was accepted to the chat by an administrator.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_chat_join_by_request.html).
    """

    defstruct "@type": "messageChatJoinByRequest", "@extra": nil
  end

  defmodule UpdateNewShippingQuery do
    @moduledoc """
    A new incoming shipping query; for bots only. Only for invoices with flexible price.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Unique query identifier. |
    | sender_user_id | string | Identifier of the user who sent the query. |
    | invoice_payload | string | Invoice payload. |
    | shipping_address | address | User shipping address. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_new_shipping_query.html).
    """

    defstruct "@type": "updateNewShippingQuery",
              "@extra": nil,
              id: nil,
              sender_user_id: nil,
              invoice_payload: nil,
              shipping_address: nil
  end

  defmodule FirebaseAuthenticationSettings do
    @moduledoc """
    This class is an abstract base class. Contains settings for Firebase Authentication in the official applications.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_firebase_authentication_settings.html).
    """

    defstruct "@type": "FirebaseAuthenticationSettings", "@extra": nil
  end

  defmodule MessageForwardInfo do
    @moduledoc """
    Contains information about a forwarded message.

    | Name | Type | Description |
    |------|------| ------------|
    | origin | MessageOrigin | Origin of the forwarded message. |
    | date | number | Point in time (Unix timestamp) when the message was originally sent. |
    | public_service_announcement_type | string | The type of a public service announcement for the forwarded message. |
    | from_chat_id | string | For messages forwarded to the chat with the current user (Saved Messages), to the Replies bot chat, or to the channel's discussion group, the identifier of the chat from which the message was forwarded last time; 0 if unknown. |
    | from_message_id | string | For messages forwarded to the chat with the current user (Saved Messages), to the Replies bot chat, or to the channel's discussion group, the identifier of the original message from which the new message was forwarded last time; 0 if unknown. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_forward_info.html).
    """

    defstruct "@type": "messageForwardInfo",
              "@extra": nil,
              origin: nil,
              date: nil,
              public_service_announcement_type: nil,
              from_chat_id: nil,
              from_message_id: nil
  end

  defmodule MessageViewer do
    @moduledoc """
    Represents a viewer of a message.

    | Name | Type | Description |
    |------|------| ------------|
    | user_id | string | User identifier of the viewer. |
    | view_date | number | Approximate point in time (Unix timestamp) when the message was viewed. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_viewer.html).
    """

    defstruct "@type": "messageViewer", "@extra": nil, user_id: nil, view_date: nil
  end

  defmodule MaskPointChin do
    @moduledoc """
    The mask is placed relatively to the chin.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1mask_point_chin.html).
    """

    defstruct "@type": "maskPointChin", "@extra": nil
  end

  defmodule UpdateUsersNearby do
    @moduledoc """
    The list of users nearby has changed. The update is guaranteed to be sent only 60 seconds after a successful searchChatsNearby request.

    | Name | Type | Description |
    |------|------| ------------|
    | users_nearby | chatNearby | The new list of users nearby. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_users_nearby.html).
    """

    defstruct "@type": "updateUsersNearby", "@extra": nil, users_nearby: nil
  end

  defmodule PassportElementTypePassportRegistration do
    @moduledoc """
    A Telegram Passport element containing the registration page of the user's passport.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_type_passport_registration.html).
    """

    defstruct "@type": "passportElementTypePassportRegistration", "@extra": nil
  end

  defmodule TestVectorInt do
    @moduledoc """
    A simple object containing a vector of numbers; for testing only.

    | Name | Type | Description |
    |------|------| ------------|
    | value | number | Vector of numbers. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1test_vector_int.html).
    """

    defstruct "@type": "testVectorInt", "@extra": nil, value: nil
  end

  defmodule SuggestedActionViewChecksHint do
    @moduledoc """
    Suggests the user to view a hint about the meaning of one and two check marks on sent messages.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1suggested_action_view_checks_hint.html).
    """

    defstruct "@type": "suggestedActionViewChecksHint", "@extra": nil
  end

  defmodule ChatBoostLinkInfo do
    @moduledoc """
    Contains information about a link to boost a chat.

    | Name | Type | Description |
    |------|------| ------------|
    | is_public | bool | True, if the link will work for non-members of the chat. |
    | chat_id | string | Identifier of the chat to which the link points; 0 if the chat isn't found. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_boost_link_info.html).
    """

    defstruct "@type": "chatBoostLinkInfo", "@extra": nil, is_public: nil, chat_id: nil
  end

  defmodule VideoChat do
    @moduledoc """
    Describes a video chat.

    | Name | Type | Description |
    |------|------| ------------|
    | group_call_id | number | Group call identifier of an active video chat; 0 if none. Full information about the video chat can be received through the method getGroupCall. |
    | has_participants | bool | True, if the video chat has participants. |
    | default_participant_id | MessageSender | Default group call participant identifier to join the video chat; may be null. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1video_chat.html).
    """

    defstruct "@type": "videoChat",
              "@extra": nil,
              group_call_id: nil,
              has_participants: nil,
              default_participant_id: nil
  end

  defmodule MessagePosition do
    @moduledoc """
    Contains information about a message in a specific position.

    | Name | Type | Description |
    |------|------| ------------|
    | position | number | 0-based message position in the full list of suitable messages. |
    | message_id | string | Message identifier. |
    | date | number | Point in time (Unix timestamp) when the message was sent. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_position.html).
    """

    defstruct "@type": "messagePosition", "@extra": nil, position: nil, message_id: nil, date: nil
  end

  defmodule BotCommandScopeDefault do
    @moduledoc """
    A scope covering all users.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1bot_command_scope_default.html).
    """

    defstruct "@type": "botCommandScopeDefault", "@extra": nil
  end

  defmodule PremiumLimitTypeFavoriteStickerCount do
    @moduledoc """
    The maximum number of favorite stickers.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_limit_type_favorite_sticker_count.html).
    """

    defstruct "@type": "premiumLimitTypeFavoriteStickerCount", "@extra": nil
  end

  defmodule MessageInteractionInfo do
    @moduledoc """
    Contains information about interactions with a message.

    | Name | Type | Description |
    |------|------| ------------|
    | view_count | number | Number of times the message was viewed. |
    | forward_count | number | Number of times the message was forwarded. |
    | reply_info | messageReplyInfo | Information about direct or indirect replies to the message; may be null. Currently, available only in channels with a discussion supergroup and discussion supergroups for messages, which are not replies itself. |
    | reactions | messageReaction | The list of reactions added to the message. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_interaction_info.html).
    """

    defstruct "@type": "messageInteractionInfo",
              "@extra": nil,
              view_count: nil,
              forward_count: nil,
              reply_info: nil,
              reactions: nil
  end

  defmodule InternalLinkTypeRestorePurchases do
    @moduledoc """
    The link forces restore of App Store purchases when opened. For official iOS application only.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_restore_purchases.html).
    """

    defstruct "@type": "internalLinkTypeRestorePurchases", "@extra": nil
  end

  defmodule ChatActionBarInviteMembers do
    @moduledoc """
    The chat is a recently created group chat to which new members can be invited.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_bar_invite_members.html).
    """

    defstruct "@type": "chatActionBarInviteMembers", "@extra": nil
  end

  defmodule InlineQueryResultAnimation do
    @moduledoc """
    Represents an animation file.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Unique identifier of the query result. |
    | animation | animation | Animation file. |
    | title | string | Animation title. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_query_result_animation.html).
    """

    defstruct "@type": "inlineQueryResultAnimation", "@extra": nil, id: nil, animation: nil, title: nil
  end

  defmodule InternalLinkTypeProxy do
    @moduledoc """
    The link is a link to a proxy. Call addProxy with the given parameters to process the link and add the proxy.

    | Name | Type | Description |
    |------|------| ------------|
    | server | string | Proxy server domain or IP address. |
    | port | number | Proxy server port. |
    | type | ProxyType | Type of the proxy. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_proxy.html).
    """

    defstruct "@type": "internalLinkTypeProxy", "@extra": nil, server: nil, port: nil, type: nil
  end

  defmodule UserTypeDeleted do
    @moduledoc """
    A deleted user or deleted bot. No information on the user besides the user identifier is available. It is not possible to perform any active actions on this type of user.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_type_deleted.html).
    """

    defstruct "@type": "userTypeDeleted", "@extra": nil
  end

  defmodule UpdateSupergroup do
    @moduledoc """
    Some data of a supergroup or a channel has changed. This update is guaranteed to come before the supergroup identifier is returned to the application.

    | Name | Type | Description |
    |------|------| ------------|
    | supergroup | supergroup | New data about the supergroup. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_supergroup.html).
    """

    defstruct "@type": "updateSupergroup", "@extra": nil, supergroup: nil
  end

  defmodule PremiumLimitTypeWeeklySentStoryCount do
    @moduledoc """
    The maximum number of stories sent per week.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_limit_type_weekly_sent_story_count.html).
    """

    defstruct "@type": "premiumLimitTypeWeeklySentStoryCount", "@extra": nil
  end

  defmodule ChatFolder do
    @moduledoc """
    Represents a folder for user chats.

    | Name | Type | Description |
    |------|------| ------------|
    | title | string | The title of the folder; 1-12 characters without line feeds. |
    | icon | chatFolderIcon | The chosen icon for the chat folder; may be null. If null, use getChatFolderDefaultIconName to get default icon name for the folder. |
    | is_shareable | bool | True, if at least one link has been created for the folder. |
    | pinned_chat_ids | string | The chat identifiers of pinned chats in the folder. There can be up to getOption("chat_folder_chosen_chat_count_max") pinned and always included non-secret chats and the same number of secret chats, but the limit can be increased with Telegram Premium. |
    | included_chat_ids | string | The chat identifiers of always included chats in the folder. There can be up to getOption("chat_folder_chosen_chat_count_max") pinned and always included non-secret chats and the same number of secret chats, but the limit can be increased with Telegram Premium. |
    | excluded_chat_ids | string | The chat identifiers of always excluded chats in the folder. There can be up to getOption("chat_folder_chosen_chat_count_max") always excluded non-secret chats and the same number of secret chats, but the limit can be increased with Telegram Premium. |
    | exclude_muted | bool | True, if muted chats need to be excluded. |
    | exclude_read | bool | True, if read chats need to be excluded. |
    | exclude_archived | bool | True, if archived chats need to be excluded. |
    | include_contacts | bool | True, if contacts need to be included. |
    | include_non_contacts | bool | True, if non-contact users need to be included. |
    | include_bots | bool | True, if bots need to be included. |
    | include_groups | bool | True, if basic groups and supergroups need to be included. |
    | include_channels | bool | True, if channels need to be included. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_folder.html).
    """

    defstruct "@type": "chatFolder",
              "@extra": nil,
              title: nil,
              icon: nil,
              is_shareable: nil,
              pinned_chat_ids: nil,
              included_chat_ids: nil,
              excluded_chat_ids: nil,
              exclude_muted: nil,
              exclude_read: nil,
              exclude_archived: nil,
              include_contacts: nil,
              include_non_contacts: nil,
              include_bots: nil,
              include_groups: nil,
              include_channels: nil
  end

  defmodule UpdateAttachmentMenuBots do
    @moduledoc """
    The list of bots added to attachment or side menu has changed.

    | Name | Type | Description |
    |------|------| ------------|
    | bots | attachmentMenuBot | The new list of bots. The bots must not be shown on scheduled messages screen. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_attachment_menu_bots.html).
    """

    defstruct "@type": "updateAttachmentMenuBots", "@extra": nil, bots: nil
  end

  defmodule CanSendStoryResultMonthlyLimitExceeded do
    @moduledoc """
    The monthly limit for the number of posted stories exceeded. The user needs to buy Telegram Premium or wait specified time.

    | Name | Type | Description |
    |------|------| ------------|
    | retry_after | number | Time left before the user can send the next story. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1can_send_story_result_monthly_limit_exceeded.html).
    """

    defstruct "@type": "canSendStoryResultMonthlyLimitExceeded", "@extra": nil, retry_after: nil
  end

  defmodule ChatBoostSlots do
    @moduledoc """
    Contains a list of chat boost slots.

    | Name | Type | Description |
    |------|------| ------------|
    | slots | chatBoostSlot | List of boost slots. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_boost_slots.html).
    """

    defstruct "@type": "chatBoostSlots", "@extra": nil, slots: nil
  end

  defmodule PaymentProviderStripe do
    @moduledoc """
    Stripe payment provider.

    | Name | Type | Description |
    |------|------| ------------|
    | publishable_key | string | Stripe API publishable key. |
    | need_country | bool | True, if the user country must be provided. |
    | need_postal_code | bool | True, if the user ZIP/postal code must be provided. |
    | need_cardholder_name | bool | True, if the cardholder name must be provided. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1payment_provider_stripe.html).
    """

    defstruct "@type": "paymentProviderStripe",
              "@extra": nil,
              publishable_key: nil,
              need_country: nil,
              need_postal_code: nil,
              need_cardholder_name: nil
  end

  defmodule CallStateError do
    @moduledoc """
    The call has ended with an error.

    | Name | Type | Description |
    |------|------| ------------|
    | error | error | Error. An error with the code 4005000 will be returned if an outgoing call is missed because of an expired timeout. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_state_error.html).
    """

    defstruct "@type": "callStateError", "@extra": nil, error: nil
  end

  defmodule ChatNearby do
    @moduledoc """
    Describes a chat located nearby.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |
    | distance | number | Distance to the chat location, in meters. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_nearby.html).
    """

    defstruct "@type": "chatNearby", "@extra": nil, chat_id: nil, distance: nil
  end

  defmodule PushMessageContentPhoto do
    @moduledoc """
    A photo message.

    | Name | Type | Description |
    |------|------| ------------|
    | photo | photo | Message content; may be null. |
    | caption | string | Photo caption. |
    | is_secret | bool | True, if the photo is secret. |
    | is_pinned | bool | True, if the message is a pinned message with the specified content. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_photo.html).
    """

    defstruct "@type": "pushMessageContentPhoto",
              "@extra": nil,
              photo: nil,
              caption: nil,
              is_secret: nil,
              is_pinned: nil
  end

  defmodule UpdateChatFolders do
    @moduledoc """
    The list of chat folders or a chat folder has changed.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_folders | chatFolderInfo | The new list of chat folders. |
    | main_chat_list_position | number | Position of the main chat list among chat folders, 0-based. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_folders.html).
    """

    defstruct "@type": "updateChatFolders", "@extra": nil, chat_folders: nil, main_chat_list_position: nil
  end

  defmodule ReportReasonPersonalDetails do
    @moduledoc """
    The chat contains messages with personal details.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1report_reason_personal_details.html).
    """

    defstruct "@type": "reportReasonPersonalDetails", "@extra": nil
  end

  defmodule PhoneNumberInfo do
    @moduledoc """
    Contains information about a phone number.

    | Name | Type | Description |
    |------|------| ------------|
    | country | countryInfo | Information about the country to which the phone number belongs; may be null. |
    | country_calling_code | string | The part of the phone number denoting country calling code or its part. |
    | formatted_phone_number | string | The phone number without country calling code formatted accordingly to local rules. Expected digits are returned as '-', but even more digits might be entered by the user. |
    | is_anonymous | bool | True, if the phone number was bought on Fragment and isn't tied to a SIM card. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1phone_number_info.html).
    """

    defstruct "@type": "phoneNumberInfo",
              "@extra": nil,
              country: nil,
              country_calling_code: nil,
              formatted_phone_number: nil,
              is_anonymous: nil
  end

  defmodule ChatEventLinkedChatChanged do
    @moduledoc """
    The linked chat of a supergroup was changed.

    | Name | Type | Description |
    |------|------| ------------|
    | old_linked_chat_id | string | Previous supergroup linked chat identifier. |
    | new_linked_chat_id | string | New supergroup linked chat identifier. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_linked_chat_changed.html).
    """

    defstruct "@type": "chatEventLinkedChatChanged", "@extra": nil, old_linked_chat_id: nil, new_linked_chat_id: nil
  end

  defmodule ChatActionUploadingVoiceNote do
    @moduledoc """
    The user is uploading a voice note.

    | Name | Type | Description |
    |------|------| ------------|
    | progress | number | Upload progress, as a percentage. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_uploading_voice_note.html).
    """

    defstruct "@type": "chatActionUploadingVoiceNote", "@extra": nil, progress: nil
  end

  defmodule PageBlockHorizontalAlignmentRight do
    @moduledoc """
    The content must be right-aligned.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_horizontal_alignment_right.html).
    """

    defstruct "@type": "pageBlockHorizontalAlignmentRight", "@extra": nil
  end

  defmodule SearchMessagesFilterAnimation do
    @moduledoc """
    Returns only animation messages.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_animation.html).
    """

    defstruct "@type": "searchMessagesFilterAnimation", "@extra": nil
  end

  defmodule Invoice do
    @moduledoc """
    Product invoice.

    | Name | Type | Description |
    |------|------| ------------|
    | currency | string | ISO 4217 currency code. |
    | price_parts | labeledPricePart | A list of objects used to calculate the total price of the product. |
    | max_tip_amount | string | The maximum allowed amount of tip in the smallest units of the currency. |
    | suggested_tip_amounts | string | Suggested amounts of tip in the smallest units of the currency. |
    | recurring_payment_terms_of_service_url | string | An HTTP URL with terms of service for recurring payments. If non-empty, the invoice payment will result in recurring payments and the user must accept the terms of service before allowed to pay. |
    | terms_of_service_url | string | An HTTP URL with terms of service for non-recurring payments. If non-empty, then the user must accept the terms of service before allowed to pay. |
    | is_test | bool | True, if the payment is a test payment. |
    | need_name | bool | True, if the user's name is needed for payment. |
    | need_phone_number | bool | True, if the user's phone number is needed for payment. |
    | need_email_address | bool | True, if the user's email address is needed for payment. |
    | need_shipping_address | bool | True, if the user's shipping address is needed for payment. |
    | send_phone_number_to_provider | bool | True, if the user's phone number will be sent to the provider. |
    | send_email_address_to_provider | bool | True, if the user's email address will be sent to the provider. |
    | is_flexible | bool | True, if the total price depends on the shipping method. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1invoice.html).
    """

    defstruct "@type": "invoice",
              "@extra": nil,
              currency: nil,
              price_parts: nil,
              max_tip_amount: nil,
              suggested_tip_amounts: nil,
              recurring_payment_terms_of_service_url: nil,
              terms_of_service_url: nil,
              is_test: nil,
              need_name: nil,
              need_phone_number: nil,
              need_email_address: nil,
              need_shipping_address: nil,
              send_phone_number_to_provider: nil,
              send_email_address_to_provider: nil,
              is_flexible: nil
  end

  defmodule MessageSourceScreenshot do
    @moduledoc """
    The message was screenshotted; the source must be used only if the message content was visible during the screenshot.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_source_screenshot.html).
    """

    defstruct "@type": "messageSourceScreenshot", "@extra": nil
  end

  defmodule PageBlockSubheader do
    @moduledoc """
    A subheader.

    | Name | Type | Description |
    |------|------| ------------|
    | subheader | RichText | Subheader. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_subheader.html).
    """

    defstruct "@type": "pageBlockSubheader", "@extra": nil, subheader: nil
  end

  defmodule MessageSponsorTypePrivateChannel do
    @moduledoc """
    The sponsor is a private channel chat.

    | Name | Type | Description |
    |------|------| ------------|
    | title | string | Title of the chat. |
    | invite_link | string | Invite link for the channel. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_sponsor_type_private_channel.html).
    """

    defstruct "@type": "messageSponsorTypePrivateChannel", "@extra": nil, title: nil, invite_link: nil
  end

  defmodule UserPrivacySettingAllowFindingByPhoneNumber do
    @moduledoc """
    A privacy setting for managing whether the user can be found by their phone number. Checked only if the phone number is not known to the other user. Can be set only to "Allow contacts" or "Allow all".


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_privacy_setting_allow_finding_by_phone_number.html).
    """

    defstruct "@type": "userPrivacySettingAllowFindingByPhoneNumber", "@extra": nil
  end

  defmodule PushMessageContentPremiumGiftCode do
    @moduledoc """
    A message with a Telegram Premium gift code created for the user.

    | Name | Type | Description |
    |------|------| ------------|
    | month_count | number | Number of month the Telegram Premium subscription will be active after code activation. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_premium_gift_code.html).
    """

    defstruct "@type": "pushMessageContentPremiumGiftCode", "@extra": nil, month_count: nil
  end

  defmodule PremiumFeatureAdvancedChatManagement do
    @moduledoc """
    Ability to change position of the main chat list, archive and mute all new chats from non-contacts, and completely disable notifications about the user's contacts joined Telegram.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_feature_advanced_chat_management.html).
    """

    defstruct "@type": "premiumFeatureAdvancedChatManagement", "@extra": nil
  end

  defmodule TrendingStickerSets do
    @moduledoc """
    Represents a list of trending sticker sets.

    | Name | Type | Description |
    |------|------| ------------|
    | total_count | number | Approximate total number of trending sticker sets. |
    | sets | stickerSetInfo | List of trending sticker sets. |
    | is_premium | bool | True, if the list contains sticker sets with premium stickers. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1trending_sticker_sets.html).
    """

    defstruct "@type": "trendingStickerSets", "@extra": nil, total_count: nil, sets: nil, is_premium: nil
  end

  defmodule UpdateAccentColors do
    @moduledoc """
    The list of supported accent colors has changed.

    | Name | Type | Description |
    |------|------| ------------|
    | colors | accentColor | Information about supported colors; colors with identifiers 0 (red), 1 (orange), 2 (purple/violet), 3 (green), 4 (cyan), 5 (blue), 6 (pink) must always be supported and aren't included in the list. The exact colors for the accent colors with identifiers 0-6 must be taken from the app theme. |
    | available_accent_color_ids | number | The list of accent color identifiers, which can be set through setAccentColor and setChatAccentColor. The colors must be shown in the specififed order. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_accent_colors.html).
    """

    defstruct "@type": "updateAccentColors", "@extra": nil, colors: nil, available_accent_color_ids: nil
  end

  defmodule UpdateChatTheme do
    @moduledoc """
    The chat theme was changed.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |
    | theme_name | string | The new name of the chat theme; may be empty if theme was reset to default. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_theme.html).
    """

    defstruct "@type": "updateChatTheme", "@extra": nil, chat_id: nil, theme_name: nil
  end

  defmodule BotWriteAccessAllowReasonConnectedWebsite do
    @moduledoc """
    The user connected a website by logging in using Telegram Login Widget on it.

    | Name | Type | Description |
    |------|------| ------------|
    | domain_name | string | Domain name of the connected website. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1bot_write_access_allow_reason_connected_website.html).
    """

    defstruct "@type": "botWriteAccessAllowReasonConnectedWebsite", "@extra": nil, domain_name: nil
  end

  defmodule ThumbnailFormatJpeg do
    @moduledoc """
    The thumbnail is in JPEG format.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1thumbnail_format_jpeg.html).
    """

    defstruct "@type": "thumbnailFormatJpeg", "@extra": nil
  end

  defmodule CallbackQueryPayload do
    @moduledoc """
    This class is an abstract base class. Represents a payload of a callback query.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_callback_query_payload.html).
    """

    defstruct "@type": "CallbackQueryPayload", "@extra": nil
  end

  defmodule CanSendStoryResultActiveStoryLimitExceeded do
    @moduledoc """
    The limit for the number of active stories exceeded. The user can buy Telegram Premium, delete an active story, or wait for the oldest story to expire.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1can_send_story_result_active_story_limit_exceeded.html).
    """

    defstruct "@type": "canSendStoryResultActiveStoryLimitExceeded", "@extra": nil
  end

  defmodule AttachmentMenuBot do
    @moduledoc """
    Represents a bot, which can be added to attachment or side menu.

    | Name | Type | Description |
    |------|------| ------------|
    | bot_user_id | string | User identifier of the bot. |
    | supports_self_chat | bool | True, if the bot supports opening from attachment menu in the chat with the bot. |
    | supports_user_chats | bool | True, if the bot supports opening from attachment menu in private chats with ordinary users. |
    | supports_bot_chats | bool | True, if the bot supports opening from attachment menu in private chats with other bots. |
    | supports_group_chats | bool | True, if the bot supports opening from attachment menu in basic group and supergroup chats. |
    | supports_channel_chats | bool | True, if the bot supports opening from attachment menu in channel chats. |
    | request_write_access | bool | True, if the user must be asked for the permission to send messages to the bot. |
    | is_added | bool | True, if the bot was explicitly added by the user. If the bot isn't added, then on the first bot launch toggleBotIsAddedToAttachmentMenu must be called and the bot must be added or removed. |
    | show_in_attachment_menu | bool | True, if the bot must be shown in the attachment menu. |
    | show_in_side_menu | bool | True, if the bot must be shown in the side menu. |
    | show_disclaimer_in_side_menu | bool | True, if a disclaimer, why the bot is shown in the side menu, is needed. |
    | name | string | Name for the bot in attachment menu. |
    | name_color | attachmentMenuBotColor | Color to highlight selected name of the bot if appropriate; may be null. |
    | default_icon | file | Default icon for the bot in SVG format; may be null. |
    | ios_static_icon | file | Icon for the bot in SVG format for the official iOS app; may be null. |
    | ios_animated_icon | file | Icon for the bot in TGS format for the official iOS app; may be null. |
    | ios_side_menu_icon | file | Icon for the bot in PNG format for the official iOS app side menu; may be null. |
    | android_icon | file | Icon for the bot in TGS format for the official Android app; may be null. |
    | android_side_menu_icon | file | Icon for the bot in SVG format for the official Android app side menu; may be null. |
    | macos_icon | file | Icon for the bot in TGS format for the official native macOS app; may be null. |
    | macos_side_menu_icon | file | Icon for the bot in PNG format for the official macOS app side menu; may be null. |
    | icon_color | attachmentMenuBotColor | Color to highlight selected icon of the bot if appropriate; may be null. |
    | web_app_placeholder | file | Default placeholder for opened Web Apps in SVG format; may be null. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1attachment_menu_bot.html).
    """

    defstruct "@type": "attachmentMenuBot",
              "@extra": nil,
              bot_user_id: nil,
              supports_self_chat: nil,
              supports_user_chats: nil,
              supports_bot_chats: nil,
              supports_group_chats: nil,
              supports_channel_chats: nil,
              request_write_access: nil,
              is_added: nil,
              show_in_attachment_menu: nil,
              show_in_side_menu: nil,
              show_disclaimer_in_side_menu: nil,
              name: nil,
              name_color: nil,
              default_icon: nil,
              ios_static_icon: nil,
              ios_animated_icon: nil,
              ios_side_menu_icon: nil,
              android_icon: nil,
              android_side_menu_icon: nil,
              macos_icon: nil,
              macos_side_menu_icon: nil,
              icon_color: nil,
              web_app_placeholder: nil
  end

  defmodule PageBlockListItem do
    @moduledoc """
    Describes an item of a list page block.

    | Name | Type | Description |
    |------|------| ------------|
    | label | string | Item label. |
    | page_blocks | PageBlock | Item blocks. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_list_item.html).
    """

    defstruct "@type": "pageBlockListItem", "@extra": nil, label: nil, page_blocks: nil
  end

  defmodule UserSupportInfo do
    @moduledoc """
    Contains custom information about the user.

    | Name | Type | Description |
    |------|------| ------------|
    | message | formattedText | Information message. |
    | author | string | Information author. |
    | date | number | Information change date. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_support_info.html).
    """

    defstruct "@type": "userSupportInfo", "@extra": nil, message: nil, author: nil, date: nil
  end

  defmodule ChatMemberStatusRestricted do
    @moduledoc """
    The user is under certain restrictions in the chat. Not supported in basic groups and channels.

    | Name | Type | Description |
    |------|------| ------------|
    | is_member | bool | True, if the user is a member of the chat. |
    | restricted_until_date | number | Point in time (Unix timestamp) when restrictions will be lifted from the user; 0 if never. If the user is restricted for more than 366 days or for less than 30 seconds from the current time, the user is considered to be restricted forever. |
    | permissions | chatPermissions | User permissions in the chat. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_member_status_restricted.html).
    """

    defstruct "@type": "chatMemberStatusRestricted",
              "@extra": nil,
              is_member: nil,
              restricted_until_date: nil,
              permissions: nil
  end

  defmodule StorePaymentPurposePremiumGiveaway do
    @moduledoc """
    The user creating a Telegram Premium giveaway for subscribers of channel chats; requires can_post_messages rights in the channels.

    | Name | Type | Description |
    |------|------| ------------|
    | parameters | premiumGiveawayParameters | Giveaway parameters. |
    | currency | string | ISO 4217 currency code of the payment currency. |
    | amount | string | Paid amount, in the smallest units of the currency. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1store_payment_purpose_premium_giveaway.html).
    """

    defstruct "@type": "storePaymentPurposePremiumGiveaway", "@extra": nil, parameters: nil, currency: nil, amount: nil
  end

  defmodule UpdateStickerSet do
    @moduledoc """
    A sticker set has changed.

    | Name | Type | Description |
    |------|------| ------------|
    | sticker_set | stickerSet | The sticker set. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_sticker_set.html).
    """

    defstruct "@type": "updateStickerSet", "@extra": nil, sticker_set: nil
  end

  defmodule FileTypeUnknown do
    @moduledoc """
    The file type is not yet known.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_unknown.html).
    """

    defstruct "@type": "fileTypeUnknown", "@extra": nil
  end

  defmodule ScopeAutosaveSettings do
    @moduledoc """
    Contains autosave settings for an autosave settings scope.

    | Name | Type | Description |
    |------|------| ------------|
    | autosave_photos | bool | True, if photo autosave is enabled. |
    | autosave_videos | bool | True, if video autosave is enabled. |
    | max_video_file_size | string | The maximum size of a video file to be autosaved, in bytes; 512 KB - 4000 MB. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1scope_autosave_settings.html).
    """

    defstruct "@type": "scopeAutosaveSettings",
              "@extra": nil,
              autosave_photos: nil,
              autosave_videos: nil,
              max_video_file_size: nil
  end

  defmodule PageBlockHorizontalAlignmentLeft do
    @moduledoc """
    The content must be left-aligned.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_horizontal_alignment_left.html).
    """

    defstruct "@type": "pageBlockHorizontalAlignmentLeft", "@extra": nil
  end

  defmodule UpdateStoryDeleted do
    @moduledoc """
    A story became inaccessible.

    | Name | Type | Description |
    |------|------| ------------|
    | story_sender_chat_id | string | Identifier of the chat that posted the story. |
    | story_id | number | Story identifier. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_story_deleted.html).
    """

    defstruct "@type": "updateStoryDeleted", "@extra": nil, story_sender_chat_id: nil, story_id: nil
  end

  defmodule InputInlineQueryResultPhoto do
    @moduledoc """
    Represents link to a JPEG image.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Unique identifier of the query result. |
    | title | string | Title of the result, if known. |
    | description | string | A short description of the result, if known. |
    | thumbnail_url | string | URL of the photo thumbnail, if it exists. |
    | photo_url | string | The URL of the JPEG photo (photo size must not exceed 5MB). |
    | photo_width | number | Width of the photo. |
    | photo_height | number | Height of the photo. |
    | reply_markup | ReplyMarkup | The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null. |
    | input_message_content | InputMessageContent | The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessagePhoto, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_inline_query_result_photo.html).
    """

    defstruct "@type": "inputInlineQueryResultPhoto",
              "@extra": nil,
              id: nil,
              title: nil,
              description: nil,
              thumbnail_url: nil,
              photo_url: nil,
              photo_width: nil,
              photo_height: nil,
              reply_markup: nil,
              input_message_content: nil
  end

  defmodule PushMessageContentInvoice do
    @moduledoc """
    A message with an invoice from a bot.

    | Name | Type | Description |
    |------|------| ------------|
    | price | string | Product price. |
    | is_pinned | bool | True, if the message is a pinned message with the specified content. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_invoice.html).
    """

    defstruct "@type": "pushMessageContentInvoice", "@extra": nil, price: nil, is_pinned: nil
  end

  defmodule ReplyMarkupRemoveKeyboard do
    @moduledoc """
    Instructs application to remove the keyboard once this message has been received. This kind of keyboard can't be received in an incoming message; instead, updateChatReplyMarkup with message_id == 0 will be sent.

    | Name | Type | Description |
    |------|------| ------------|
    | is_personal | bool | True, if the keyboard is removed only for the mentioned users or the target user of a reply. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1reply_markup_remove_keyboard.html).
    """

    defstruct "@type": "replyMarkupRemoveKeyboard", "@extra": nil, is_personal: nil
  end

  defmodule MessageSourceNotification do
    @moduledoc """
    The message is from a notification.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_source_notification.html).
    """

    defstruct "@type": "messageSourceNotification", "@extra": nil
  end

  defmodule AuthenticationCodeTypeCall do
    @moduledoc """
    An authentication code is delivered via a phone call to the specified phone number.

    | Name | Type | Description |
    |------|------| ------------|
    | length | number | Length of the code. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authentication_code_type_call.html).
    """

    defstruct "@type": "authenticationCodeTypeCall", "@extra": nil, length: nil
  end

  defmodule UpdateFileRemovedFromDownloads do
    @moduledoc """
    A file was removed from the file download list. This update is sent only after file download list is loaded for the first time.

    | Name | Type | Description |
    |------|------| ------------|
    | file_id | number | File identifier. |
    | counts | downloadedFileCounts | New number of being downloaded and recently downloaded files found. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_file_removed_from_downloads.html).
    """

    defstruct "@type": "updateFileRemovedFromDownloads", "@extra": nil, file_id: nil, counts: nil
  end

  defmodule MessageSendingState do
    @moduledoc """
    This class is an abstract base class. Contains information about the sending state of the message.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_message_sending_state.html).
    """

    defstruct "@type": "MessageSendingState", "@extra": nil
  end

  defmodule ChatPhotoStickerTypeRegularOrMask do
    @moduledoc """
    Information about the sticker, which was used to create the chat photo.

    | Name | Type | Description |
    |------|------| ------------|
    | sticker_set_id | string | Sticker set identifier. |
    | sticker_id | string | Identifier of the sticker in the set. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_photo_sticker_type_regular_or_mask.html).
    """

    defstruct "@type": "chatPhotoStickerTypeRegularOrMask", "@extra": nil, sticker_set_id: nil, sticker_id: nil
  end

  defmodule PassportElementTypeDriverLicense do
    @moduledoc """
    A Telegram Passport element containing the user's driver license.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_type_driver_license.html).
    """

    defstruct "@type": "passportElementTypeDriverLicense", "@extra": nil
  end

  defmodule PremiumLimitType do
    @moduledoc """
    This class is an abstract base class. Describes type of a limit, increased for Premium users.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_premium_limit_type.html).
    """

    defstruct "@type": "PremiumLimitType", "@extra": nil
  end

  defmodule InlineKeyboardButtonTypeSwitchInline do
    @moduledoc """
    A button that forces an inline query to the bot to be inserted in the input field.

    | Name | Type | Description |
    |------|------| ------------|
    | query | string | Inline query to be sent to the bot. |
    | target_chat | TargetChat | Target chat from which to send the inline query. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_keyboard_button_type_switch_inline.html).
    """

    defstruct "@type": "inlineKeyboardButtonTypeSwitchInline", "@extra": nil, query: nil, target_chat: nil
  end

  defmodule FileTypePhotoStory do
    @moduledoc """
    The file is a photo published as a story.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_photo_story.html).
    """

    defstruct "@type": "fileTypePhotoStory", "@extra": nil
  end

  defmodule DraftMessage do
    @moduledoc """
    Contains information about a message draft.

    | Name | Type | Description |
    |------|------| ------------|
    | reply_to | InputMessageReplyTo | Information about the message to be replied; must be of the type inputMessageReplyToMessage; may be null if none. |
    | date | number | Point in time (Unix timestamp) when the draft was created. |
    | input_message_text | InputMessageContent | Content of the message draft; must be of the type inputMessageText. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1draft_message.html).
    """

    defstruct "@type": "draftMessage", "@extra": nil, reply_to: nil, date: nil, input_message_text: nil
  end

  defmodule UpdateFileAddedToDownloads do
    @moduledoc """
    A file was added to the file download list. This update is sent only after file download list is loaded for the first time.

    | Name | Type | Description |
    |------|------| ------------|
    | file_download | fileDownload | The added file download. |
    | counts | downloadedFileCounts | New number of being downloaded and recently downloaded files found. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_file_added_to_downloads.html).
    """

    defstruct "@type": "updateFileAddedToDownloads", "@extra": nil, file_download: nil, counts: nil
  end

  defmodule GroupCallVideoQuality do
    @moduledoc """
    This class is an abstract base class. Describes the quality of a group call video.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_group_call_video_quality.html).
    """

    defstruct "@type": "GroupCallVideoQuality", "@extra": nil
  end

  defmodule UpdateForumTopicInfo do
    @moduledoc """
    Basic information about a topic in a forum chat was changed.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |
    | info | forumTopicInfo | New information about the topic. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_forum_topic_info.html).
    """

    defstruct "@type": "updateForumTopicInfo", "@extra": nil, chat_id: nil, info: nil
  end

  defmodule ThumbnailFormatTgs do
    @moduledoc """
    The thumbnail is in TGS format. It will be used only for TGS sticker sets.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1thumbnail_format_tgs.html).
    """

    defstruct "@type": "thumbnailFormatTgs", "@extra": nil
  end

  defmodule ChatAvailableReactionsSome do
    @moduledoc """
    Only specific reactions are available in the chat.

    | Name | Type | Description |
    |------|------| ------------|
    | reactions | ReactionType | The list of reactions. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_available_reactions_some.html).
    """

    defstruct "@type": "chatAvailableReactionsSome", "@extra": nil, reactions: nil
  end

  defmodule InputPassportElementUtilityBill do
    @moduledoc """
    A Telegram Passport element to be saved containing the user's utility bill.

    | Name | Type | Description |
    |------|------| ------------|
    | utility_bill | inputPersonalDocument | The utility bill to be saved. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_passport_element_utility_bill.html).
    """

    defstruct "@type": "inputPassportElementUtilityBill", "@extra": nil, utility_bill: nil
  end

  defmodule Backgrounds do
    @moduledoc """
    Contains a list of backgrounds.

    | Name | Type | Description |
    |------|------| ------------|
    | backgrounds | background | A list of backgrounds. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1backgrounds.html).
    """

    defstruct "@type": "backgrounds", "@extra": nil, backgrounds: nil
  end

  defmodule PassportElementTypeUtilityBill do
    @moduledoc """
    A Telegram Passport element containing the user's utility bill.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_type_utility_bill.html).
    """

    defstruct "@type": "passportElementTypeUtilityBill", "@extra": nil
  end

  defmodule PremiumFeatureChatBoost do
    @moduledoc """
    The ability to boost chats.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_feature_chat_boost.html).
    """

    defstruct "@type": "premiumFeatureChatBoost", "@extra": nil
  end

  defmodule ChatPhotoSticker do
    @moduledoc """
    Information about the sticker, which was used to create the chat photo. The sticker is shown at the center of the photo and occupies at most 67% of it.

    | Name | Type | Description |
    |------|------| ------------|
    | type | ChatPhotoStickerType | Type of the sticker. |
    | background_fill | BackgroundFill | The fill to be used as background for the sticker; rotation angle in backgroundFillGradient isn't supported. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_photo_sticker.html).
    """

    defstruct "@type": "chatPhotoSticker", "@extra": nil, type: nil, background_fill: nil
  end

  defmodule UpdateChatReadOutbox do
    @moduledoc """
    Outgoing messages were read.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |
    | last_read_outbox_message_id | string | Identifier of last read outgoing message. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_read_outbox.html).
    """

    defstruct "@type": "updateChatReadOutbox", "@extra": nil, chat_id: nil, last_read_outbox_message_id: nil
  end

  defmodule Background do
    @moduledoc """
    Describes a chat background.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Unique background identifier. |
    | is_default | bool | True, if this is one of default backgrounds. |
    | is_dark | bool | True, if the background is dark and is recommended to be used with dark theme. |
    | name | string | Unique background name. |
    | document | document | Document with the background; may be null. Null only for filled backgrounds. |
    | type | BackgroundType | Type of the background. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1background.html).
    """

    defstruct "@type": "background",
              "@extra": nil,
              id: nil,
              is_default: nil,
              is_dark: nil,
              name: nil,
              document: nil,
              type: nil
  end

  defmodule PrepaidPremiumGiveaway do
    @moduledoc """
    Describes a prepaid Telegram Premium giveaway.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Unique identifier of the prepaid giveaway. |
    | winner_count | number | Number of users which will receive Telegram Premium subscription gift codes. |
    | month_count | number | Number of month the Telegram Premium subscription will be active after code activation. |
    | payment_date | number | Point in time (Unix timestamp) when the giveaway was paid. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1prepaid_premium_giveaway.html).
    """

    defstruct "@type": "prepaidPremiumGiveaway",
              "@extra": nil,
              id: nil,
              winner_count: nil,
              month_count: nil,
              payment_date: nil
  end

  defmodule UpdateMessageContentOpened do
    @moduledoc """
    The message content was opened. Updates voice note messages to "listened", video note messages to "viewed" and starts the self-destruct timer.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |
    | message_id | string | Message identifier. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_message_content_opened.html).
    """

    defstruct "@type": "updateMessageContentOpened", "@extra": nil, chat_id: nil, message_id: nil
  end

  defmodule BackgroundType do
    @moduledoc """
    This class is an abstract base class. Describes the type of a background.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_background_type.html).
    """

    defstruct "@type": "BackgroundType", "@extra": nil
  end

  defmodule PageBlockAudio do
    @moduledoc """
    An audio file.

    | Name | Type | Description |
    |------|------| ------------|
    | audio | audio | Audio file; may be null. |
    | caption | pageBlockCaption | Audio file caption. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_audio.html).
    """

    defstruct "@type": "pageBlockAudio", "@extra": nil, audio: nil, caption: nil
  end

  defmodule InputBackgroundLocal do
    @moduledoc """
    A background from a local file.

    | Name | Type | Description |
    |------|------| ------------|
    | background | InputFile | Background file to use. Only inputFileLocal and inputFileGenerated are supported. The file must be in JPEG format for wallpapers and in PNG format for patterns. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_background_local.html).
    """

    defstruct "@type": "inputBackgroundLocal", "@extra": nil, background: nil
  end

  defmodule InternalLinkTypePublicChat do
    @moduledoc """
    The link is a link to a chat by its username. Call searchPublicChat with the given chat username to process the link.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_username | string | Username of the chat. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_public_chat.html).
    """

    defstruct "@type": "internalLinkTypePublicChat", "@extra": nil, chat_username: nil
  end

  defmodule TextEntityTypeUrl do
    @moduledoc """
    An HTTP URL.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_url.html).
    """

    defstruct "@type": "textEntityTypeUrl", "@extra": nil
  end

  defmodule StoryInfo do
    @moduledoc """
    Contains basic information about a story.

    | Name | Type | Description |
    |------|------| ------------|
    | story_id | number | Unique story identifier among stories of the given sender. |
    | date | number | Point in time (Unix timestamp) when the story was published. |
    | is_for_close_friends | bool | True, if the story is available only to close friends. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1story_info.html).
    """

    defstruct "@type": "storyInfo", "@extra": nil, story_id: nil, date: nil, is_for_close_friends: nil
  end

  defmodule CallProblem do
    @moduledoc """
    This class is an abstract base class. Describes the exact type of a problem with a call.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_call_problem.html).
    """

    defstruct "@type": "CallProblem", "@extra": nil
  end

  defmodule AuthorizationStateWaitOtherDeviceConfirmation do
    @moduledoc """
    The user needs to confirm authorization on another logged in device by scanning a QR code with the provided link.

    | Name | Type | Description |
    |------|------| ------------|
    | link | string | A tg:// URL for the QR code. The link will be updated frequently. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authorization_state_wait_other_device_confirmation.html).
    """

    defstruct "@type": "authorizationStateWaitOtherDeviceConfirmation", "@extra": nil, link: nil
  end

  defmodule FileTypeNone do
    @moduledoc """
    The data is not a file.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_none.html).
    """

    defstruct "@type": "fileTypeNone", "@extra": nil
  end

  defmodule ChatEventPermissionsChanged do
    @moduledoc """
    The chat permissions were changed.

    | Name | Type | Description |
    |------|------| ------------|
    | old_permissions | chatPermissions | Previous chat permissions. |
    | new_permissions | chatPermissions | New chat permissions. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_permissions_changed.html).
    """

    defstruct "@type": "chatEventPermissionsChanged", "@extra": nil, old_permissions: nil, new_permissions: nil
  end

  defmodule CallStateHangingUp do
    @moduledoc """
    The call is hanging up after discardCall has been called.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_state_hanging_up.html).
    """

    defstruct "@type": "callStateHangingUp", "@extra": nil
  end

  defmodule TestVectorIntObject do
    @moduledoc """
    A simple object containing a vector of objects that hold a number; for testing only.

    | Name | Type | Description |
    |------|------| ------------|
    | value | testInt | Vector of objects. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1test_vector_int_object.html).
    """

    defstruct "@type": "testVectorIntObject", "@extra": nil, value: nil
  end

  defmodule ChatMemberStatusCreator do
    @moduledoc """
    The user is the owner of the chat and has all the administrator privileges.

    | Name | Type | Description |
    |------|------| ------------|
    | custom_title | string | A custom title of the owner; 0-16 characters without emojis; applicable to supergroups only. |
    | is_anonymous | bool | True, if the creator isn't shown in the chat member list and sends messages anonymously; applicable to supergroups only. |
    | is_member | bool | True, if the user is a member of the chat. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_member_status_creator.html).
    """

    defstruct "@type": "chatMemberStatusCreator", "@extra": nil, custom_title: nil, is_anonymous: nil, is_member: nil
  end

  defmodule InputInlineQueryResultArticle do
    @moduledoc """
    Represents a link to an article or web page.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Unique identifier of the query result. |
    | url | string | URL of the result, if it exists. |
    | hide_url | bool | True, if the URL must be not shown. |
    | title | string | Title of the result. |
    | description | string | A short description of the result. |
    | thumbnail_url | string | URL of the result thumbnail, if it exists. |
    | thumbnail_width | number | Thumbnail width, if known. |
    | thumbnail_height | number | Thumbnail height, if known. |
    | reply_markup | ReplyMarkup | The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null. |
    | input_message_content | InputMessageContent | The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_inline_query_result_article.html).
    """

    defstruct "@type": "inputInlineQueryResultArticle",
              "@extra": nil,
              id: nil,
              url: nil,
              hide_url: nil,
              title: nil,
              description: nil,
              thumbnail_url: nil,
              thumbnail_width: nil,
              thumbnail_height: nil,
              reply_markup: nil,
              input_message_content: nil
  end

  defmodule InternalLinkTypeBotStartInGroup do
    @moduledoc """
    The link is a link to a Telegram bot, which is supposed to be added to a group chat. Call searchPublicChat with the given bot username, check that the user is a bot and can be added to groups, ask the current user to select a basic group or a supergroup chat to add the bot to, taking into account that bots can be added to a public supergroup only by administrators of the supergroup. If administrator rights are provided by the link, call getChatMember to receive the current bot rights in the chat and if the bot already is an administrator, check that the current user can edit its administrator rights, combine received rights with the requested administrator rights, show confirmation box to the user, and call setChatMemberStatus with the chosen chat and confirmed administrator rights. Before call to setChatMemberStatus it may be required to upgrade the chosen basic group chat to a supergroup chat. Then, if start_parameter isn't empty, call sendBotStartMessage with the given start parameter and the chosen chat; otherwise, just send /start message with bot's username added to the chat.

    | Name | Type | Description |
    |------|------| ------------|
    | bot_username | string | Username of the bot. |
    | start_parameter | string | The parameter to be passed to sendBotStartMessage. |
    | administrator_rights | chatAdministratorRights | Expected administrator rights for the bot; may be null. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_bot_start_in_group.html).
    """

    defstruct "@type": "internalLinkTypeBotStartInGroup",
              "@extra": nil,
              bot_username: nil,
              start_parameter: nil,
              administrator_rights: nil
  end

  defmodule UpdateChatPhoto do
    @moduledoc """
    A chat photo was changed.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |
    | photo | chatPhotoInfo | The new chat photo; may be null. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_photo.html).
    """

    defstruct "@type": "updateChatPhoto", "@extra": nil, chat_id: nil, photo: nil
  end

  defmodule UserPrivacySettingRuleRestrictChatMembers do
    @moduledoc """
    A rule to restrict all members of specified basic groups and supergroups from doing something.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_ids | string | The chat identifiers, total number of chats in all rules must not exceed 20. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_privacy_setting_rule_restrict_chat_members.html).
    """

    defstruct "@type": "userPrivacySettingRuleRestrictChatMembers", "@extra": nil, chat_ids: nil
  end

  defmodule ChatPhotoInfo do
    @moduledoc """
    Contains basic information about the photo of a chat.

    | Name | Type | Description |
    |------|------| ------------|
    | small | file | A small (160x160) chat photo variant in JPEG format. The file can be downloaded only before the photo is changed. |
    | big | file | A big (640x640) chat photo variant in JPEG format. The file can be downloaded only before the photo is changed. |
    | minithumbnail | minithumbnail | Chat photo minithumbnail; may be null. |
    | has_animation | bool | True, if the photo has animated variant. |
    | is_personal | bool | True, if the photo is visible only for the current user. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_photo_info.html).
    """

    defstruct "@type": "chatPhotoInfo",
              "@extra": nil,
              small: nil,
              big: nil,
              minithumbnail: nil,
              has_animation: nil,
              is_personal: nil
  end

  defmodule ThumbnailFormatMpeg4 do
    @moduledoc """
    The thumbnail is in MPEG4 format. It will be used only for some animations and videos.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1thumbnail_format_mpeg4.html).
    """

    defstruct "@type": "thumbnailFormatMpeg4", "@extra": nil
  end

  defmodule UserStatusLastMonth do
    @moduledoc """
    The user is offline, but was online last month.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_status_last_month.html).
    """

    defstruct "@type": "userStatusLastMonth", "@extra": nil
  end

  defmodule InlineKeyboardButton do
    @moduledoc """
    Represents a single button in an inline keyboard.

    | Name | Type | Description |
    |------|------| ------------|
    | text | string | Text of the button. |
    | type | InlineKeyboardButtonType | Type of the button. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_keyboard_button.html).
    """

    defstruct "@type": "inlineKeyboardButton", "@extra": nil, text: nil, type: nil
  end

  defmodule ChatEventIsAllHistoryAvailableToggled do
    @moduledoc """
    The is_all_history_available setting of a supergroup was toggled.

    | Name | Type | Description |
    |------|------| ------------|
    | is_all_history_available | bool | New value of is_all_history_available. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_is_all_history_available_toggled.html).
    """

    defstruct "@type": "chatEventIsAllHistoryAvailableToggled", "@extra": nil, is_all_history_available: nil
  end

  defmodule StickerFullTypeRegular do
    @moduledoc """
    The sticker is a regular sticker.

    | Name | Type | Description |
    |------|------| ------------|
    | premium_animation | file | Premium animation of the sticker; may be null. If present, only Telegram Premium users can use the sticker. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sticker_full_type_regular.html).
    """

    defstruct "@type": "stickerFullTypeRegular", "@extra": nil, premium_animation: nil
  end

  defmodule InternalLinkTypePrivacyAndSecuritySettings do
    @moduledoc """
    The link is a link to the privacy and security section of the app settings.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_privacy_and_security_settings.html).
    """

    defstruct "@type": "internalLinkTypePrivacyAndSecuritySettings", "@extra": nil
  end

  defmodule PassportElementDriverLicense do
    @moduledoc """
    A Telegram Passport element containing the user's driver license.

    | Name | Type | Description |
    |------|------| ------------|
    | driver_license | identityDocument | Driver license. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_driver_license.html).
    """

    defstruct "@type": "passportElementDriverLicense", "@extra": nil, driver_license: nil
  end

  defmodule FileTypeSecret do
    @moduledoc """
    The file was sent to a secret chat (the file type is not known to the server).


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_secret.html).
    """

    defstruct "@type": "fileTypeSecret", "@extra": nil
  end

  defmodule NotificationSettingsScopeGroupChats do
    @moduledoc """
    Notification settings applied to all basic group and supergroup chats when the corresponding chat setting has a default value.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1notification_settings_scope_group_chats.html).
    """

    defstruct "@type": "notificationSettingsScopeGroupChats", "@extra": nil
  end

  defmodule TextEntityTypeMentionName do
    @moduledoc """
    A text shows instead of a raw mention of the user (e.g., when the user has no username).

    | Name | Type | Description |
    |------|------| ------------|
    | user_id | string | Identifier of the mentioned user. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_mention_name.html).
    """

    defstruct "@type": "textEntityTypeMentionName", "@extra": nil, user_id: nil
  end

  defmodule RichTextMarked do
    @moduledoc """
    A marked rich text.

    | Name | Type | Description |
    |------|------| ------------|
    | text | RichText | Text. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1rich_text_marked.html).
    """

    defstruct "@type": "richTextMarked", "@extra": nil, text: nil
  end

  defmodule CanTransferOwnershipResultSessionTooFresh do
    @moduledoc """
    The session was created recently, user needs to wait.

    | Name | Type | Description |
    |------|------| ------------|
    | retry_after | number | Time left before the session can be used to transfer ownership of a chat, in seconds. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1can_transfer_ownership_result_session_too_fresh.html).
    """

    defstruct "@type": "canTransferOwnershipResultSessionTooFresh", "@extra": nil, retry_after: nil
  end

  defmodule InputChatPhotoPrevious do
    @moduledoc """
    A previously used profile photo of the current user.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_photo_id | string | Identifier of the current user's profile photo to reuse. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_chat_photo_previous.html).
    """

    defstruct "@type": "inputChatPhotoPrevious", "@extra": nil, chat_photo_id: nil
  end

  defmodule GroupCallVideoSourceGroup do
    @moduledoc """
    Describes a group of video synchronization source identifiers.

    | Name | Type | Description |
    |------|------| ------------|
    | semantics | string | The semantics of sources, one of "SIM" or "FID". |
    | source_ids | number | The list of synchronization source identifiers. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1group_call_video_source_group.html).
    """

    defstruct "@type": "groupCallVideoSourceGroup", "@extra": nil, semantics: nil, source_ids: nil
  end

  defmodule UpdateStory do
    @moduledoc """
    A story was changed.

    | Name | Type | Description |
    |------|------| ------------|
    | story | story | The new information about the story. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_story.html).
    """

    defstruct "@type": "updateStory", "@extra": nil, story: nil
  end

  defmodule PremiumSource do
    @moduledoc """
    This class is an abstract base class. Describes a source from which the Premium features screen is opened.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_premium_source.html).
    """

    defstruct "@type": "PremiumSource", "@extra": nil
  end

  defmodule PremiumLimitTypeStorySuggestedReactionAreaCount do
    @moduledoc """
    The maximum number of suggested reaction areas on a story.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_limit_type_story_suggested_reaction_area_count.html).
    """

    defstruct "@type": "premiumLimitTypeStorySuggestedReactionAreaCount", "@extra": nil
  end

  defmodule ChatStatisticsAdministratorActionsInfo do
    @moduledoc """
    Contains statistics about administrator actions done by a user.

    | Name | Type | Description |
    |------|------| ------------|
    | user_id | string | Administrator user identifier. |
    | deleted_message_count | number | Number of messages deleted by the administrator. |
    | banned_user_count | number | Number of users banned by the administrator. |
    | restricted_user_count | number | Number of users restricted by the administrator. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_statistics_administrator_actions_info.html).
    """

    defstruct "@type": "chatStatisticsAdministratorActionsInfo",
              "@extra": nil,
              user_id: nil,
              deleted_message_count: nil,
              banned_user_count: nil,
              restricted_user_count: nil
  end

  defmodule UpdateNewInlineQuery do
    @moduledoc """
    A new incoming inline query; for bots only.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Unique query identifier. |
    | sender_user_id | string | Identifier of the user who sent the query. |
    | user_location | location | User location; may be null. |
    | chat_type | ChatType | The type of the chat from which the query originated; may be null if unknown. |
    | query | string | Text of the query. |
    | offset | string | Offset of the first entry to return. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_new_inline_query.html).
    """

    defstruct "@type": "updateNewInlineQuery",
              "@extra": nil,
              id: nil,
              sender_user_id: nil,
              user_location: nil,
              chat_type: nil,
              query: nil,
              offset: nil
  end

  defmodule DeviceTokenUbuntuPush do
    @moduledoc """
    A token for Ubuntu Push Client service.

    | Name | Type | Description |
    |------|------| ------------|
    | token | string | Token; may be empty to deregister a device. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1device_token_ubuntu_push.html).
    """

    defstruct "@type": "deviceTokenUbuntuPush", "@extra": nil, token: nil
  end

  defmodule UserPrivacySettingRuleAllowContacts do
    @moduledoc """
    A rule to allow all contacts of the user to do something.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_privacy_setting_rule_allow_contacts.html).
    """

    defstruct "@type": "userPrivacySettingRuleAllowContacts", "@extra": nil
  end

  defmodule LanguagePackString do
    @moduledoc """
    Represents one language pack string.

    | Name | Type | Description |
    |------|------| ------------|
    | key | string | String key. |
    | value | LanguagePackStringValue | String value; pass null if the string needs to be taken from the built-in English language pack. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1language_pack_string.html).
    """

    defstruct "@type": "languagePackString", "@extra": nil, key: nil, value: nil
  end

  defmodule MessageVenue do
    @moduledoc """
    A message with information about a venue.

    | Name | Type | Description |
    |------|------| ------------|
    | venue | venue | The venue description. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_venue.html).
    """

    defstruct "@type": "messageVenue", "@extra": nil, venue: nil
  end

  defmodule EmojiCategoryType do
    @moduledoc """
    This class is an abstract base class. Describes type of an emoji category.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_emoji_category_type.html).
    """

    defstruct "@type": "EmojiCategoryType", "@extra": nil
  end

  defmodule InternalLinkTypePassportDataRequest do
    @moduledoc """
    The link contains a request of Telegram passport data. Call getPassportAuthorizationForm with the given parameters to process the link if the link was received from outside of the application; otherwise, ignore it.

    | Name | Type | Description |
    |------|------| ------------|
    | bot_user_id | string | User identifier of the service's bot. |
    | scope | string | Telegram Passport element types requested by the service. |
    | public_key | string | Service's public key. |
    | nonce | string | Unique request identifier provided by the service. |
    | callback_url | string | An HTTP URL to open once the request is finished, canceled, or failed with the parameters tg_passport=success, tg_passport=cancel, or tg_passport=error&error=... respectively. If empty, then onActivityResult method must be used to return response on Android, or the link tgbot{bot_user_id}://passport/success or tgbot{bot_user_id}://passport/cancel must be opened otherwise. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_passport_data_request.html).
    """

    defstruct "@type": "internalLinkTypePassportDataRequest",
              "@extra": nil,
              bot_user_id: nil,
              scope: nil,
              public_key: nil,
              nonce: nil,
              callback_url: nil
  end

  defmodule StoryAreaPosition do
    @moduledoc """
    Describes position of a clickable rectangle area on a story media.

    | Name | Type | Description |
    |------|------| ------------|
    | x_percentage | double | The abscissa of the rectangle's center, as a percentage of the media width. |
    | y_percentage | double | The ordinate of the rectangle's center, as a percentage of the media height. |
    | width_percentage | double | The width of the rectangle, as a percentage of the media width. |
    | height_percentage | double | The height of the rectangle, as a percentage of the media height. |
    | rotation_angle | double | Clockwise rotation angle of the rectangle, in degrees; 0-360. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1story_area_position.html).
    """

    defstruct "@type": "storyAreaPosition",
              "@extra": nil,
              x_percentage: nil,
              y_percentage: nil,
              width_percentage: nil,
              height_percentage: nil,
              rotation_angle: nil
  end

  defmodule PushMessageContentMediaAlbum do
    @moduledoc """
    A media album.

    | Name | Type | Description |
    |------|------| ------------|
    | total_count | number | Number of messages in the album. |
    | has_photos | bool | True, if the album has at least one photo. |
    | has_videos | bool | True, if the album has at least one video file. |
    | has_audios | bool | True, if the album has at least one audio file. |
    | has_documents | bool | True, if the album has at least one document. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_media_album.html).
    """

    defstruct "@type": "pushMessageContentMediaAlbum",
              "@extra": nil,
              total_count: nil,
              has_photos: nil,
              has_videos: nil,
              has_audios: nil,
              has_documents: nil
  end

  defmodule PassportElementTypeAddress do
    @moduledoc """
    A Telegram Passport element containing the user's address.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_type_address.html).
    """

    defstruct "@type": "passportElementTypeAddress", "@extra": nil
  end

  defmodule InputMessageForwarded do
    @moduledoc """
    A forwarded message.

    | Name | Type | Description |
    |------|------| ------------|
    | from_chat_id | string | Identifier for the chat this forwarded message came from. |
    | message_id | string | Identifier of the message to forward. A message can be forwarded only if message.can_be_forwarded. |
    | in_game_share | bool | True, if a game message is being shared from a launched game; applies only to game messages. |
    | copy_options | messageCopyOptions | Options to be used to copy content of the message without reference to the original sender; pass null to forward the message as usual. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_forwarded.html).
    """

    defstruct "@type": "inputMessageForwarded",
              "@extra": nil,
              from_chat_id: nil,
              message_id: nil,
              in_game_share: nil,
              copy_options: nil
  end

  defmodule CallServerType do
    @moduledoc """
    This class is an abstract base class. Describes the type of a call server.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_call_server_type.html).
    """

    defstruct "@type": "CallServerType", "@extra": nil
  end

  defmodule WebPageInstantView do
    @moduledoc """
    Describes an instant view page for a web page.

    | Name | Type | Description |
    |------|------| ------------|
    | page_blocks | PageBlock | Content of the web page. |
    | view_count | number | Number of the instant view views; 0 if unknown. |
    | version | number | Version of the instant view; currently, can be 1 or 2. |
    | is_rtl | bool | True, if the instant view must be shown from right to left. |
    | is_full | bool | True, if the instant view contains the full page. A network request might be needed to get the full web page instant view. |
    | feedback_link | InternalLinkType | An internal link to be opened to leave feedback about the instant view. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1web_page_instant_view.html).
    """

    defstruct "@type": "webPageInstantView",
              "@extra": nil,
              page_blocks: nil,
              view_count: nil,
              version: nil,
              is_rtl: nil,
              is_full: nil,
              feedback_link: nil
  end

  defmodule Point do
    @moduledoc """
    A point on a Cartesian plane.

    | Name | Type | Description |
    |------|------| ------------|
    | x | double | The point's first coordinate. |
    | y | double | The point's second coordinate. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1point.html).
    """

    defstruct "@type": "point", "@extra": nil, x: nil, y: nil
  end

  defmodule InputFileId do
    @moduledoc """
    A file defined by its unique identifier.

    | Name | Type | Description |
    |------|------| ------------|
    | id | number | Unique file identifier. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_file_id.html).
    """

    defstruct "@type": "inputFileId", "@extra": nil, id: nil
  end

  defmodule ReplyMarkupInlineKeyboard do
    @moduledoc """
    Contains an inline keyboard layout.

    | Name | Type | Description |
    |------|------| ------------|
    | rows | inlineKeyboardButton | A list of rows of inline keyboard buttons. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1reply_markup_inline_keyboard.html).
    """

    defstruct "@type": "replyMarkupInlineKeyboard", "@extra": nil, rows: nil
  end

  defmodule ChatEventMemberJoinedByRequest do
    @moduledoc """
    A new member was accepted to the chat by an administrator.

    | Name | Type | Description |
    |------|------| ------------|
    | approver_user_id | string | User identifier of the chat administrator, approved user join request. |
    | invite_link | chatInviteLink | Invite link used to join the chat; may be null. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_member_joined_by_request.html).
    """

    defstruct "@type": "chatEventMemberJoinedByRequest", "@extra": nil, approver_user_id: nil, invite_link: nil
  end

  defmodule TargetChat do
    @moduledoc """
    This class is an abstract base class. Describes the target chat to be opened.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_target_chat.html).
    """

    defstruct "@type": "TargetChat", "@extra": nil
  end

  defmodule InputMessageReplyTo do
    @moduledoc """
    This class is an abstract base class. Contains information about the message or the story to be replied.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_input_message_reply_to.html).
    """

    defstruct "@type": "InputMessageReplyTo", "@extra": nil
  end

  defmodule MessageSenders do
    @moduledoc """
    Represents a list of message senders.

    | Name | Type | Description |
    |------|------| ------------|
    | total_count | number | Approximate total number of messages senders found. |
    | senders | MessageSender | List of message senders. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_senders.html).
    """

    defstruct "@type": "messageSenders", "@extra": nil, total_count: nil, senders: nil
  end

  defmodule CanSendStoryResultPremiumNeeded do
    @moduledoc """
    The user must subscribe to Telegram Premium to be able to post stories.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1can_send_story_result_premium_needed.html).
    """

    defstruct "@type": "canSendStoryResultPremiumNeeded", "@extra": nil
  end

  defmodule UserPrivacySettingShowBio do
    @moduledoc """
    A privacy setting for managing whether the user's bio is visible.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_privacy_setting_show_bio.html).
    """

    defstruct "@type": "userPrivacySettingShowBio", "@extra": nil
  end

  defmodule UserPrivacySettingRuleAllowChatMembers do
    @moduledoc """
    A rule to allow all members of certain specified basic groups and supergroups to doing something.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_ids | string | The chat identifiers, total number of chats in all rules must not exceed 20. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_privacy_setting_rule_allow_chat_members.html).
    """

    defstruct "@type": "userPrivacySettingRuleAllowChatMembers", "@extra": nil, chat_ids: nil
  end

  defmodule SearchMessagesFilterVoiceNote do
    @moduledoc """
    Returns only voice note messages.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_voice_note.html).
    """

    defstruct "@type": "searchMessagesFilterVoiceNote", "@extra": nil
  end

  defmodule UnconfirmedSession do
    @moduledoc """
    Contains information about an unconfirmed session.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Session identifier. |
    | log_in_date | number | Point in time (Unix timestamp) when the user has logged in. |
    | device_model | string | Model of the device that was used for the session creation, as provided by the application. |
    | location | string | A human-readable description of the location from which the session was created, based on the IP address. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1unconfirmed_session.html).
    """

    defstruct "@type": "unconfirmedSession", "@extra": nil, id: nil, log_in_date: nil, device_model: nil, location: nil
  end

  defmodule PremiumSourceFeature do
    @moduledoc """
    A user tried to use a Premium feature.

    | Name | Type | Description |
    |------|------| ------------|
    | feature | PremiumFeature | The used feature. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_source_feature.html).
    """

    defstruct "@type": "premiumSourceFeature", "@extra": nil, feature: nil
  end

  defmodule Countries do
    @moduledoc """
    Contains information about countries.

    | Name | Type | Description |
    |------|------| ------------|
    | countries | countryInfo | The list of countries. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1countries.html).
    """

    defstruct "@type": "countries", "@extra": nil, countries: nil
  end

  defmodule MessageInvoice do
    @moduledoc """
    A message with an invoice from a bot. Use getInternalLink with internalLinkTypeBotStart to share the invoice.

    | Name | Type | Description |
    |------|------| ------------|
    | title | string | Product title. |
    | description | formattedText | Product description. |
    | photo | photo | Product photo; may be null. |
    | currency | string | Currency for the product price. |
    | total_amount | string | Product total price in the smallest units of the currency. |
    | start_parameter | string | Unique invoice bot start_parameter to be passed to getInternalLink. |
    | is_test | bool | True, if the invoice is a test invoice. |
    | need_shipping_address | bool | True, if the shipping address must be specified. |
    | receipt_message_id | string | The identifier of the message with the receipt, after the product has been purchased. |
    | extended_media | MessageExtendedMedia | Extended media attached to the invoice; may be null. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_invoice.html).
    """

    defstruct "@type": "messageInvoice",
              "@extra": nil,
              title: nil,
              description: nil,
              photo: nil,
              currency: nil,
              total_amount: nil,
              start_parameter: nil,
              is_test: nil,
              need_shipping_address: nil,
              receipt_message_id: nil,
              extended_media: nil
  end

  defmodule JsonValueObject do
    @moduledoc """
    Represents a JSON object.

    | Name | Type | Description |
    |------|------| ------------|
    | members | jsonObjectMember | The list of object members. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1json_value_object.html).
    """

    defstruct "@type": "jsonValueObject", "@extra": nil, members: nil
  end

  defmodule PremiumLimitTypeMonthlySentStoryCount do
    @moduledoc """
    The maximum number of stories sent per month.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_limit_type_monthly_sent_story_count.html).
    """

    defstruct "@type": "premiumLimitTypeMonthlySentStoryCount", "@extra": nil
  end

  defmodule UserStatusLastWeek do
    @moduledoc """
    The user is offline, but was online last week.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_status_last_week.html).
    """

    defstruct "@type": "userStatusLastWeek", "@extra": nil
  end

  defmodule KeyboardButtonTypeRequestPhoneNumber do
    @moduledoc """
    A button that sends the user's phone number when pressed; available only in private chats.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1keyboard_button_type_request_phone_number.html).
    """

    defstruct "@type": "keyboardButtonTypeRequestPhoneNumber", "@extra": nil
  end

  defmodule MessageVoiceNote do
    @moduledoc """
    A voice note message.

    | Name | Type | Description |
    |------|------| ------------|
    | voice_note | voiceNote | The voice note description. |
    | caption | formattedText | Voice note caption. |
    | is_listened | bool | True, if at least one of the recipients has listened to the voice note. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_voice_note.html).
    """

    defstruct "@type": "messageVoiceNote", "@extra": nil, voice_note: nil, caption: nil, is_listened: nil
  end

  defmodule SecretChatStatePending do
    @moduledoc """
    The secret chat is not yet created; waiting for the other user to get online.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1secret_chat_state_pending.html).
    """

    defstruct "@type": "secretChatStatePending", "@extra": nil
  end

  defmodule PushMessageContentLocation do
    @moduledoc """
    A message with a location.

    | Name | Type | Description |
    |------|------| ------------|
    | is_live | bool | True, if the location is live. |
    | is_pinned | bool | True, if the message is a pinned message with the specified content. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_location.html).
    """

    defstruct "@type": "pushMessageContentLocation", "@extra": nil, is_live: nil, is_pinned: nil
  end

  defmodule ChatEventInviteLinkDeleted do
    @moduledoc """
    A revoked chat invite link was deleted.

    | Name | Type | Description |
    |------|------| ------------|
    | invite_link | chatInviteLink | The invite link. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_invite_link_deleted.html).
    """

    defstruct "@type": "chatEventInviteLinkDeleted", "@extra": nil, invite_link: nil
  end

  defmodule ChatEvent do
    @moduledoc """
    Represents a chat event.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Chat event identifier. |
    | date | number | Point in time (Unix timestamp) when the event happened. |
    | member_id | MessageSender | Identifier of the user or chat who performed the action. |
    | action | ChatEventAction | The action. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event.html).
    """

    defstruct "@type": "chatEvent", "@extra": nil, id: nil, date: nil, member_id: nil, action: nil
  end

  defmodule ChatEventVideoChatCreated do
    @moduledoc """
    A video chat was created.

    | Name | Type | Description |
    |------|------| ------------|
    | group_call_id | number | Identifier of the video chat. The video chat can be received through the method getGroupCall. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_video_chat_created.html).
    """

    defstruct "@type": "chatEventVideoChatCreated", "@extra": nil, group_call_id: nil
  end

  defmodule ChatListFolder do
    @moduledoc """
    A list of chats added to a chat folder.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_folder_id | number | Chat folder identifier. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_list_folder.html).
    """

    defstruct "@type": "chatListFolder", "@extra": nil, chat_folder_id: nil
  end

  defmodule GroupCall do
    @moduledoc """
    Describes a group call.

    | Name | Type | Description |
    |------|------| ------------|
    | id | number | Group call identifier. |
    | title | string | Group call title. |
    | scheduled_start_date | number | Point in time (Unix timestamp) when the group call is supposed to be started by an administrator; 0 if it is already active or was ended. |
    | enabled_start_notification | bool | True, if the group call is scheduled and the current user will receive a notification when the group call starts. |
    | is_active | bool | True, if the call is active. |
    | is_rtmp_stream | bool | True, if the chat is an RTMP stream instead of an ordinary video chat. |
    | is_joined | bool | True, if the call is joined. |
    | need_rejoin | bool | True, if user was kicked from the call because of network loss and the call needs to be rejoined. |
    | can_be_managed | bool | True, if the current user can manage the group call. |
    | participant_count | number | Number of participants in the group call. |
    | has_hidden_listeners | bool | True, if group call participants, which are muted, aren't returned in participant list. |
    | loaded_all_participants | bool | True, if all group call participants are loaded. |
    | recent_speakers | groupCallRecentSpeaker | At most 3 recently speaking users in the group call. |
    | is_my_video_enabled | bool | True, if the current user's video is enabled. |
    | is_my_video_paused | bool | True, if the current user's video is paused. |
    | can_enable_video | bool | True, if the current user can broadcast video or share screen. |
    | mute_new_participants | bool | True, if only group call administrators can unmute new participants. |
    | can_toggle_mute_new_participants | bool | True, if the current user can enable or disable mute_new_participants setting. |
    | record_duration | number | Duration of the ongoing group call recording, in seconds; 0 if none. An updateGroupCall update is not triggered when value of this field changes, but the same recording goes on. |
    | is_video_recorded | bool | True, if a video file is being recorded for the call. |
    | duration | number | Call duration, in seconds; for ended calls only. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1group_call.html).
    """

    defstruct "@type": "groupCall",
              "@extra": nil,
              id: nil,
              title: nil,
              scheduled_start_date: nil,
              enabled_start_notification: nil,
              is_active: nil,
              is_rtmp_stream: nil,
              is_joined: nil,
              need_rejoin: nil,
              can_be_managed: nil,
              participant_count: nil,
              has_hidden_listeners: nil,
              loaded_all_participants: nil,
              recent_speakers: nil,
              is_my_video_enabled: nil,
              is_my_video_paused: nil,
              can_enable_video: nil,
              mute_new_participants: nil,
              can_toggle_mute_new_participants: nil,
              record_duration: nil,
              is_video_recorded: nil,
              duration: nil
  end

  defmodule ChatEventHasProtectedContentToggled do
    @moduledoc """
    The has_protected_content setting of a channel was toggled.

    | Name | Type | Description |
    |------|------| ------------|
    | has_protected_content | bool | New value of has_protected_content. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_has_protected_content_toggled.html).
    """

    defstruct "@type": "chatEventHasProtectedContentToggled", "@extra": nil, has_protected_content: nil
  end

  defmodule MessagePremiumGiftCode do
    @moduledoc """
    A Telegram Premium gift code was created for the user.

    | Name | Type | Description |
    |------|------| ------------|
    | creator_id | MessageSender | Identifier of a chat or a user that created the gift code. |
    | is_from_giveaway | bool | True, if the gift code was created for a giveaway. |
    | is_unclaimed | bool | True, if the winner for the corresponding Telegram Premium subscription wasn't chosen. |
    | month_count | number | Number of month the Telegram Premium subscription will be active after code activation. |
    | sticker | sticker | A sticker to be shown in the message; may be null if unknown. |
    | code | string | The gift code. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_premium_gift_code.html).
    """

    defstruct "@type": "messagePremiumGiftCode",
              "@extra": nil,
              creator_id: nil,
              is_from_giveaway: nil,
              is_unclaimed: nil,
              month_count: nil,
              sticker: nil,
              code: nil
  end

  defmodule InputFileRemote do
    @moduledoc """
    A file defined by its remote identifier. The remote identifier is guaranteed to be usable only if the corresponding file is still accessible to the user and known to TDLib. For example, if the file is from a message, then the message must be not deleted and accessible to the user. If the file database is disabled, then the corresponding object with the file must be preloaded by the application.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Remote file identifier. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_file_remote.html).
    """

    defstruct "@type": "inputFileRemote", "@extra": nil, id: nil
  end

  defmodule InternalLinkTypeLanguageSettings do
    @moduledoc """
    The link is a link to the language section of the app settings.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_language_settings.html).
    """

    defstruct "@type": "internalLinkTypeLanguageSettings", "@extra": nil
  end

  defmodule SearchMessagesFilterAudio do
    @moduledoc """
    Returns only audio messages.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_audio.html).
    """

    defstruct "@type": "searchMessagesFilterAudio", "@extra": nil
  end

  defmodule PushMessageContentAudio do
    @moduledoc """
    An audio message.

    | Name | Type | Description |
    |------|------| ------------|
    | audio | audio | Message content; may be null. |
    | is_pinned | bool | True, if the message is a pinned message with the specified content. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_audio.html).
    """

    defstruct "@type": "pushMessageContentAudio", "@extra": nil, audio: nil, is_pinned: nil
  end

  defmodule PassportElementUtilityBill do
    @moduledoc """
    A Telegram Passport element containing the user's utility bill.

    | Name | Type | Description |
    |------|------| ------------|
    | utility_bill | personalDocument | Utility bill. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_utility_bill.html).
    """

    defstruct "@type": "passportElementUtilityBill", "@extra": nil, utility_bill: nil
  end

  defmodule PushMessageContentContact do
    @moduledoc """
    A message with a user contact.

    | Name | Type | Description |
    |------|------| ------------|
    | name | string | Contact's name. |
    | is_pinned | bool | True, if the message is a pinned message with the specified content. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_contact.html).
    """

    defstruct "@type": "pushMessageContentContact", "@extra": nil, name: nil, is_pinned: nil
  end

  defmodule PassportRequiredElement do
    @moduledoc """
    Contains a description of the required Telegram Passport element that was requested by a service.

    | Name | Type | Description |
    |------|------| ------------|
    | suitable_elements | passportSuitableElement | List of Telegram Passport elements any of which is enough to provide. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_required_element.html).
    """

    defstruct "@type": "passportRequiredElement", "@extra": nil, suitable_elements: nil
  end

  defmodule SearchMessagesFilterPhoto do
    @moduledoc """
    Returns only photo messages.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_photo.html).
    """

    defstruct "@type": "searchMessagesFilterPhoto", "@extra": nil
  end

  defmodule UpdateWebAppMessageSent do
    @moduledoc """
    A message was sent by an opened Web App, so the Web App needs to be closed.

    | Name | Type | Description |
    |------|------| ------------|
    | web_app_launch_id | string | Identifier of Web App launch. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_web_app_message_sent.html).
    """

    defstruct "@type": "updateWebAppMessageSent", "@extra": nil, web_app_launch_id: nil
  end

  defmodule UpdateDiceEmojis do
    @moduledoc """
    The list of supported dice emojis has changed.

    | Name | Type | Description |
    |------|------| ------------|
    | emojis | string | The new list of supported dice emojis. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_dice_emojis.html).
    """

    defstruct "@type": "updateDiceEmojis", "@extra": nil, emojis: nil
  end

  defmodule PremiumLimit do
    @moduledoc """
    Contains information about a limit, increased for Premium users.

    | Name | Type | Description |
    |------|------| ------------|
    | type | PremiumLimitType | The type of the limit. |
    | default_value | number | Default value of the limit. |
    | premium_value | number | Value of the limit for Premium users. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_limit.html).
    """

    defstruct "@type": "premiumLimit", "@extra": nil, type: nil, default_value: nil, premium_value: nil
  end

  defmodule InternalLinkTypeLanguagePack do
    @moduledoc """
    The link is a link to a language pack. Call getLanguagePackInfo with the given language pack identifier to process the link.

    | Name | Type | Description |
    |------|------| ------------|
    | language_pack_id | string | Language pack identifier. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_language_pack.html).
    """

    defstruct "@type": "internalLinkTypeLanguagePack", "@extra": nil, language_pack_id: nil
  end

  defmodule MessagePremiumGiveawayCreated do
    @moduledoc """
    A Telegram Premium giveaway was created for the chat.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_premium_giveaway_created.html).
    """

    defstruct "@type": "messagePremiumGiveawayCreated", "@extra": nil
  end

  defmodule InlineQueryResults do
    @moduledoc """
    Represents the results of the inline query. Use sendInlineQueryResultMessage to send the result of the query.

    | Name | Type | Description |
    |------|------| ------------|
    | inline_query_id | string | Unique identifier of the inline query. |
    | button | inlineQueryResultsButton | Button to be shown above inline query results; may be null. |
    | results | InlineQueryResult | Results of the query. |
    | next_offset | string | The offset for the next request. If empty, then there are no more results. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_query_results.html).
    """

    defstruct "@type": "inlineQueryResults",
              "@extra": nil,
              inline_query_id: nil,
              button: nil,
              results: nil,
              next_offset: nil
  end

  defmodule PremiumFeatureIncreasedLimits do
    @moduledoc """
    Increased limits.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_feature_increased_limits.html).
    """

    defstruct "@type": "premiumFeatureIncreasedLimits", "@extra": nil
  end

  defmodule InternalLinkTypeEditProfileSettings do
    @moduledoc """
    The link is a link to the edit profile section of the app settings.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_edit_profile_settings.html).
    """

    defstruct "@type": "internalLinkTypeEditProfileSettings", "@extra": nil
  end

  defmodule PageBlockEmbeddedPost do
    @moduledoc """
    An embedded post.

    | Name | Type | Description |
    |------|------| ------------|
    | url | string | Web page URL. |
    | author | string | Post author. |
    | author_photo | photo | Post author photo; may be null. |
    | date | number | Point in time (Unix timestamp) when the post was created; 0 if unknown. |
    | page_blocks | PageBlock | Post content. |
    | caption | pageBlockCaption | Post caption. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_embedded_post.html).
    """

    defstruct "@type": "pageBlockEmbeddedPost",
              "@extra": nil,
              url: nil,
              author: nil,
              author_photo: nil,
              date: nil,
              page_blocks: nil,
              caption: nil
  end

  defmodule KeyboardButtonTypeWebApp do
    @moduledoc """
    A button that opens a Web App by calling getWebAppUrl.

    | Name | Type | Description |
    |------|------| ------------|
    | url | string | An HTTP URL to pass to getWebAppUrl. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1keyboard_button_type_web_app.html).
    """

    defstruct "@type": "keyboardButtonTypeWebApp", "@extra": nil, url: nil
  end

  defmodule PassportElementIdentityCard do
    @moduledoc """
    A Telegram Passport element containing the user's identity card.

    | Name | Type | Description |
    |------|------| ------------|
    | identity_card | identityDocument | Identity card. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_identity_card.html).
    """

    defstruct "@type": "passportElementIdentityCard", "@extra": nil, identity_card: nil
  end

  defmodule ReportReasonSpam do
    @moduledoc """
    The chat contains spam messages.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1report_reason_spam.html).
    """

    defstruct "@type": "reportReasonSpam", "@extra": nil
  end

  defmodule InputPassportElementPassportRegistration do
    @moduledoc """
    A Telegram Passport element to be saved containing the user's passport registration.

    | Name | Type | Description |
    |------|------| ------------|
    | passport_registration | inputPersonalDocument | The passport registration page to be saved. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_passport_element_passport_registration.html).
    """

    defstruct "@type": "inputPassportElementPassportRegistration", "@extra": nil, passport_registration: nil
  end

  defmodule SessionType do
    @moduledoc """
    This class is an abstract base class. Represents the type of a session.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_session_type.html).
    """

    defstruct "@type": "SessionType", "@extra": nil
  end

  defmodule InlineKeyboardButtonTypeCallbackGame do
    @moduledoc """
    A button with a game that sends a callback query to a bot. This button must be in the first column and row of the keyboard and can be attached only to a message with content of the type messageGame.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_keyboard_button_type_callback_game.html).
    """

    defstruct "@type": "inlineKeyboardButtonTypeCallbackGame", "@extra": nil
  end

  defmodule SuggestedActionSetPassword do
    @moduledoc """
    Suggests the user to set a 2-step verification password to be able to log in again.

    | Name | Type | Description |
    |------|------| ------------|
    | authorization_delay | number | The number of days to pass between consecutive authorizations if the user declines to set password; if 0, then the user is advised to set the password for security reasons. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1suggested_action_set_password.html).
    """

    defstruct "@type": "suggestedActionSetPassword", "@extra": nil, authorization_delay: nil
  end

  defmodule TextEntityTypeEmailAddress do
    @moduledoc """
    An email address.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_email_address.html).
    """

    defstruct "@type": "textEntityTypeEmailAddress", "@extra": nil
  end

  defmodule MessageSender do
    @moduledoc """
    This class is an abstract base class. Contains information about the sender of a message.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_message_sender.html).
    """

    defstruct "@type": "MessageSender", "@extra": nil
  end

  defmodule EmojiCategory do
    @moduledoc """
    Contains a list of similar emoji to search for in getStickers and searchStickers.

    | Name | Type | Description |
    |------|------| ------------|
    | name | string | Name of the category. |
    | icon | sticker | Custom emoji sticker, which represents icon of the category. |
    | emojis | string | List of emojis in the category. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1emoji_category.html).
    """

    defstruct "@type": "emojiCategory", "@extra": nil, name: nil, icon: nil, emojis: nil
  end

  defmodule InputPassportElementError do
    @moduledoc """
    Contains the description of an error in a Telegram Passport element; for bots only.

    | Name | Type | Description |
    |------|------| ------------|
    | type | PassportElementType | Type of Telegram Passport element that has the error. |
    | message | string | Error message. |
    | source | InputPassportElementErrorSource | Error source. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_passport_element_error.html).
    """

    defstruct "@type": "inputPassportElementError", "@extra": nil, type: nil, message: nil, source: nil
  end

  defmodule ChatMembersFilterRestricted do
    @moduledoc """
    Returns users under certain restrictions in the chat; can be used only by administrators in a supergroup.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_members_filter_restricted.html).
    """

    defstruct "@type": "chatMembersFilterRestricted", "@extra": nil
  end

  defmodule InputMessageSticker do
    @moduledoc """
    A sticker message.

    | Name | Type | Description |
    |------|------| ------------|
    | sticker | InputFile | Sticker to be sent. |
    | thumbnail | inputThumbnail | Sticker thumbnail; pass null to skip thumbnail uploading. |
    | width | number | Sticker width. |
    | height | number | Sticker height. |
    | emoji | string | Emoji used to choose the sticker. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_sticker.html).
    """

    defstruct "@type": "inputMessageSticker",
              "@extra": nil,
              sticker: nil,
              thumbnail: nil,
              width: nil,
              height: nil,
              emoji: nil
  end

  defmodule InputMessageStory do
    @moduledoc """
    A message with a forwarded story. Stories can't be sent to secret chats. A story can be forwarded only if story.can_be_forwarded.

    | Name | Type | Description |
    |------|------| ------------|
    | story_sender_chat_id | string | Identifier of the chat that posted the story. |
    | story_id | number | Story identifier. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_story.html).
    """

    defstruct "@type": "inputMessageStory", "@extra": nil, story_sender_chat_id: nil, story_id: nil
  end

  defmodule InputMessageContact do
    @moduledoc """
    A message containing a user contact.

    | Name | Type | Description |
    |------|------| ------------|
    | contact | contact | Contact to send. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_contact.html).
    """

    defstruct "@type": "inputMessageContact", "@extra": nil, contact: nil
  end

  defmodule LoginUrlInfoOpen do
    @moduledoc """
    An HTTP URL needs to be open.

    | Name | Type | Description |
    |------|------| ------------|
    | url | string | The URL to open. |
    | skip_confirmation | bool | True, if there is no need to show an ordinary open URL confirmation. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1login_url_info_open.html).
    """

    defstruct "@type": "loginUrlInfoOpen", "@extra": nil, url: nil, skip_confirmation: nil
  end

  defmodule JsonValueArray do
    @moduledoc """
    Represents a JSON array.

    | Name | Type | Description |
    |------|------| ------------|
    | values | JsonValue | The list of array elements. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1json_value_array.html).
    """

    defstruct "@type": "jsonValueArray", "@extra": nil, values: nil
  end

  defmodule PushMessageContentChatJoinByRequest do
    @moduledoc """
    A new member was accepted to the chat by an administrator.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_chat_join_by_request.html).
    """

    defstruct "@type": "pushMessageContentChatJoinByRequest", "@extra": nil
  end

  defmodule UpdateChatBackgroundCustomEmoji do
    @moduledoc """
    A chat's custom emoji for reply background has changed.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |
    | background_custom_emoji_id | string | The new identifier of a custom emoji to be shown on the reply header background; 0 if none. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_background_custom_emoji.html).
    """

    defstruct "@type": "updateChatBackgroundCustomEmoji", "@extra": nil, chat_id: nil, background_custom_emoji_id: nil
  end

  defmodule TMeUrlTypeStickerSet do
    @moduledoc """
    A URL linking to a sticker set.

    | Name | Type | Description |
    |------|------| ------------|
    | sticker_set_id | string | Identifier of the sticker set. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1t_me_url_type_sticker_set.html).
    """

    defstruct "@type": "tMeUrlTypeStickerSet", "@extra": nil, sticker_set_id: nil
  end

  defmodule Count do
    @moduledoc """
    Contains a counter.

    | Name | Type | Description |
    |------|------| ------------|
    | count | number | Count. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1count.html).
    """

    defstruct "@type": "count", "@extra": nil, count: nil
  end

  defmodule UpdateChatBackground do
    @moduledoc """
    The chat background was changed.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |
    | background | chatBackground | The new chat background; may be null if background was reset to default. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_background.html).
    """

    defstruct "@type": "updateChatBackground", "@extra": nil, chat_id: nil, background: nil
  end

  defmodule VectorPathCommandLine do
    @moduledoc """
    A straight line to a given point.

    | Name | Type | Description |
    |------|------| ------------|
    | end_point | point | The end point of the straight line. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1vector_path_command_line.html).
    """

    defstruct "@type": "vectorPathCommandLine", "@extra": nil, end_point: nil
  end

  defmodule MessagePhoto do
    @moduledoc """
    A photo message.

    | Name | Type | Description |
    |------|------| ------------|
    | photo | photo | The photo. |
    | caption | formattedText | Photo caption. |
    | has_spoiler | bool | True, if the photo preview must be covered by a spoiler animation. |
    | is_secret | bool | True, if the photo must be blurred and must be shown only while tapped. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_photo.html).
    """

    defstruct "@type": "messagePhoto", "@extra": nil, photo: nil, caption: nil, has_spoiler: nil, is_secret: nil
  end

  defmodule PageBlockVerticalAlignmentMiddle do
    @moduledoc """
    The content must be middle-aligned.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_vertical_alignment_middle.html).
    """

    defstruct "@type": "pageBlockVerticalAlignmentMiddle", "@extra": nil
  end

  defmodule PassportElementAddress do
    @moduledoc """
    A Telegram Passport element containing the user's address.

    | Name | Type | Description |
    |------|------| ------------|
    | address | address | Address. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_address.html).
    """

    defstruct "@type": "passportElementAddress", "@extra": nil, address: nil
  end

  defmodule ImportedContacts do
    @moduledoc """
    Represents the result of an importContacts request.

    | Name | Type | Description |
    |------|------| ------------|
    | user_ids | string | User identifiers of the imported contacts in the same order as they were specified in the request; 0 if the contact is not yet a registered user. |
    | importer_count | number | The number of users that imported the corresponding contact; 0 for already registered users or if unavailable. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1imported_contacts.html).
    """

    defstruct "@type": "importedContacts", "@extra": nil, user_ids: nil, importer_count: nil
  end

  defmodule SearchMessagesFilterVoiceAndVideoNote do
    @moduledoc """
    Returns only voice and video note messages.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_voice_and_video_note.html).
    """

    defstruct "@type": "searchMessagesFilterVoiceAndVideoNote", "@extra": nil
  end

  defmodule SupergroupMembersFilter do
    @moduledoc """
    This class is an abstract base class. Specifies the kind of chat members to return in getSupergroupMembers.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_supergroup_members_filter.html).
    """

    defstruct "@type": "SupergroupMembersFilter", "@extra": nil
  end

  defmodule InputInlineQueryResultSticker do
    @moduledoc """
    Represents a link to a WEBP, TGS, or WEBM sticker.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Unique identifier of the query result. |
    | thumbnail_url | string | URL of the sticker thumbnail, if it exists. |
    | sticker_url | string | The URL of the WEBP, TGS, or WEBM sticker (sticker file size must not exceed 5MB). |
    | sticker_width | number | Width of the sticker. |
    | sticker_height | number | Height of the sticker. |
    | reply_markup | ReplyMarkup | The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null. |
    | input_message_content | InputMessageContent | The content of the message to be sent. Must be one of the following types: inputMessageText, inputMessageSticker, inputMessageInvoice, inputMessageLocation, inputMessageVenue or inputMessageContact. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_inline_query_result_sticker.html).
    """

    defstruct "@type": "inputInlineQueryResultSticker",
              "@extra": nil,
              id: nil,
              thumbnail_url: nil,
              sticker_url: nil,
              sticker_width: nil,
              sticker_height: nil,
              reply_markup: nil,
              input_message_content: nil
  end

  defmodule ShippingOption do
    @moduledoc """
    One shipping option.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Shipping option identifier. |
    | title | string | Option title. |
    | price_parts | labeledPricePart | A list of objects used to calculate the total shipping costs. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1shipping_option.html).
    """

    defstruct "@type": "shippingOption", "@extra": nil, id: nil, title: nil, price_parts: nil
  end

  defmodule NotificationType do
    @moduledoc """
    This class is an abstract base class. Contains detailed information about a notification.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_notification_type.html).
    """

    defstruct "@type": "NotificationType", "@extra": nil
  end

  defmodule StickerFormat do
    @moduledoc """
    This class is an abstract base class. Describes format of a sticker.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_sticker_format.html).
    """

    defstruct "@type": "StickerFormat", "@extra": nil
  end

  defmodule StatisticalGraphError do
    @moduledoc """
    An error message to be shown to the user instead of the graph.

    | Name | Type | Description |
    |------|------| ------------|
    | error_message | string | The error message. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1statistical_graph_error.html).
    """

    defstruct "@type": "statisticalGraphError", "@extra": nil, error_message: nil
  end

  defmodule CheckStickerSetNameResultNameOccupied do
    @moduledoc """
    The name is occupied.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1check_sticker_set_name_result_name_occupied.html).
    """

    defstruct "@type": "checkStickerSetNameResultNameOccupied", "@extra": nil
  end

  defmodule FileTypeSticker do
    @moduledoc """
    The file is a sticker.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_sticker.html).
    """

    defstruct "@type": "fileTypeSticker", "@extra": nil
  end

  defmodule ThemeParameters do
    @moduledoc """
    Contains parameters of the application theme.

    | Name | Type | Description |
    |------|------| ------------|
    | background_color | number | A color of the background in the RGB24 format. |
    | secondary_background_color | number | A secondary color for the background in the RGB24 format. |
    | header_background_color | number | A color of the header background in the RGB24 format. |
    | section_background_color | number | A color of the section background in the RGB24 format. |
    | text_color | number | A color of text in the RGB24 format. |
    | accent_text_color | number | An accent color of the text in the RGB24 format. |
    | section_header_text_color | number | A color of text on the section headers in the RGB24 format. |
    | subtitle_text_color | number | A color of the subtitle text in the RGB24 format. |
    | destructive_text_color | number | A color of the text for destructive actions in the RGB24 format. |
    | hint_color | number | A color of hints in the RGB24 format. |
    | link_color | number | A color of links in the RGB24 format. |
    | button_color | number | A color of the buttons in the RGB24 format. |
    | button_text_color | number | A color of text on the buttons in the RGB24 format. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1theme_parameters.html).
    """

    defstruct "@type": "themeParameters",
              "@extra": nil,
              background_color: nil,
              secondary_background_color: nil,
              header_background_color: nil,
              section_background_color: nil,
              text_color: nil,
              accent_text_color: nil,
              section_header_text_color: nil,
              subtitle_text_color: nil,
              destructive_text_color: nil,
              hint_color: nil,
              link_color: nil,
              button_color: nil,
              button_text_color: nil
  end

  defmodule UpdateConnectionState do
    @moduledoc """
    The connection state has changed. This update must be used only to show a human-readable description of the connection state.

    | Name | Type | Description |
    |------|------| ------------|
    | state | ConnectionState | The new connection state. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_connection_state.html).
    """

    defstruct "@type": "updateConnectionState", "@extra": nil, state: nil
  end

  defmodule MessageAudio do
    @moduledoc """
    An audio message.

    | Name | Type | Description |
    |------|------| ------------|
    | audio | audio | The audio description. |
    | caption | formattedText | Audio caption. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_audio.html).
    """

    defstruct "@type": "messageAudio", "@extra": nil, audio: nil, caption: nil
  end

  defmodule StickerTypeMask do
    @moduledoc """
    The sticker is a mask in WEBP format to be placed on photos or videos.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sticker_type_mask.html).
    """

    defstruct "@type": "stickerTypeMask", "@extra": nil
  end

  defmodule BackgroundFillFreeformGradient do
    @moduledoc """
    Describes a freeform gradient fill of a background.

    | Name | Type | Description |
    |------|------| ------------|
    | colors | number | A list of 3 or 4 colors of the freeform gradients in the RGB24 format. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1background_fill_freeform_gradient.html).
    """

    defstruct "@type": "backgroundFillFreeformGradient", "@extra": nil, colors: nil
  end

  defmodule ThumbnailFormatWebp do
    @moduledoc """
    The thumbnail is in WEBP format. It will be used only for some stickers.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1thumbnail_format_webp.html).
    """

    defstruct "@type": "thumbnailFormatWebp", "@extra": nil
  end

  defmodule ChatMembers do
    @moduledoc """
    Contains a list of chat members.

    | Name | Type | Description |
    |------|------| ------------|
    | total_count | number | Approximate total number of chat members found. |
    | members | chatMember | A list of chat members. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_members.html).
    """

    defstruct "@type": "chatMembers", "@extra": nil, total_count: nil, members: nil
  end

  defmodule InputInvoiceMessage do
    @moduledoc """
    An invoice from a message of the type messageInvoice.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier of the message. |
    | message_id | string | Message identifier. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_invoice_message.html).
    """

    defstruct "@type": "inputInvoiceMessage", "@extra": nil, chat_id: nil, message_id: nil
  end

  defmodule FoundWebApp do
    @moduledoc """
    Contains information about a Web App found by its short name.

    | Name | Type | Description |
    |------|------| ------------|
    | web_app | webApp | The Web App. |
    | request_write_access | bool | True, if the user must be asked for the permission to the bot to send them messages. |
    | skip_confirmation | bool | True, if there is no need to show an ordinary open URL confirmation before opening the Web App. The field must be ignored and confirmation must be shown anyway if the Web App link was hidden. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1found_web_app.html).
    """

    defstruct "@type": "foundWebApp", "@extra": nil, web_app: nil, request_write_access: nil, skip_confirmation: nil
  end

  defmodule ChatInviteLink do
    @moduledoc """
    Contains a chat invite link.

    | Name | Type | Description |
    |------|------| ------------|
    | invite_link | string | Chat invite link. |
    | name | string | Name of the link. |
    | creator_user_id | string | User identifier of an administrator created the link. |
    | date | number | Point in time (Unix timestamp) when the link was created. |
    | edit_date | number | Point in time (Unix timestamp) when the link was last edited; 0 if never or unknown. |
    | expiration_date | number | Point in time (Unix timestamp) when the link will expire; 0 if never. |
    | member_limit | number | The maximum number of members, which can join the chat using the link simultaneously; 0 if not limited. Always 0 if the link requires approval. |
    | member_count | number | Number of chat members, which joined the chat using the link. |
    | pending_join_request_count | number | Number of pending join requests created using this link. |
    | creates_join_request | bool | True, if the link only creates join request. If true, total number of joining members will be unlimited. |
    | is_primary | bool | True, if the link is primary. Primary invite link can't have name, expiration date, or usage limit. There is exactly one primary invite link for each administrator with can_invite_users right at a given time. |
    | is_revoked | bool | True, if the link was revoked. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_invite_link.html).
    """

    defstruct "@type": "chatInviteLink",
              "@extra": nil,
              invite_link: nil,
              name: nil,
              creator_user_id: nil,
              date: nil,
              edit_date: nil,
              expiration_date: nil,
              member_limit: nil,
              member_count: nil,
              pending_join_request_count: nil,
              creates_join_request: nil,
              is_primary: nil,
              is_revoked: nil
  end

  defmodule ForumTopicIcon do
    @moduledoc """
    Describes a forum topic icon.

    | Name | Type | Description |
    |------|------| ------------|
    | color | number | Color of the topic icon in RGB format. |
    | custom_emoji_id | string | Unique identifier of the custom emoji shown on the topic icon; 0 if none. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1forum_topic_icon.html).
    """

    defstruct "@type": "forumTopicIcon", "@extra": nil, color: nil, custom_emoji_id: nil
  end

  defmodule OptionValueBoolean do
    @moduledoc """
    Represents a boolean option.

    | Name | Type | Description |
    |------|------| ------------|
    | value | bool | The value of the option. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1option_value_boolean.html).
    """

    defstruct "@type": "optionValueBoolean", "@extra": nil, value: nil
  end

  defmodule PassportElementErrorSourceReverseSide do
    @moduledoc """
    The reverse side of the document contains an error. The error will be considered resolved when the file with the reverse side changes.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_error_source_reverse_side.html).
    """

    defstruct "@type": "passportElementErrorSourceReverseSide", "@extra": nil
  end

  defmodule ChatAdministrator do
    @moduledoc """
    Contains information about a chat administrator.

    | Name | Type | Description |
    |------|------| ------------|
    | user_id | string | User identifier of the administrator. |
    | custom_title | string | Custom title of the administrator. |
    | is_owner | bool | True, if the user is the owner of the chat. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_administrator.html).
    """

    defstruct "@type": "chatAdministrator", "@extra": nil, user_id: nil, custom_title: nil, is_owner: nil
  end

  defmodule InputPassportElementPassport do
    @moduledoc """
    A Telegram Passport element to be saved containing the user's passport.

    | Name | Type | Description |
    |------|------| ------------|
    | passport | inputIdentityDocument | The passport to be saved. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_passport_element_passport.html).
    """

    defstruct "@type": "inputPassportElementPassport", "@extra": nil, passport: nil
  end

  defmodule LabeledPricePart do
    @moduledoc """
    Portion of the price of a product (e.g., "delivery cost", "tax amount").

    | Name | Type | Description |
    |------|------| ------------|
    | label | string | Label for this portion of the product price. |
    | amount | string | Currency amount in the smallest units of the currency. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1labeled_price_part.html).
    """

    defstruct "@type": "labeledPricePart", "@extra": nil, label: nil, amount: nil
  end

  defmodule UserTypeBot do
    @moduledoc """
    A bot (see https://core.telegram.org/bots).

    | Name | Type | Description |
    |------|------| ------------|
    | can_be_edited | bool | True, if the bot is owned by the current user and can be edited using the methods toggleBotUsernameIsActive, reorderBotActiveUsernames, setBotProfilePhoto, setBotName, setBotInfoDescription, and setBotInfoShortDescription. |
    | can_join_groups | bool | True, if the bot can be invited to basic group and supergroup chats. |
    | can_read_all_group_messages | bool | True, if the bot can read all messages in basic group or supergroup chats and not just those addressed to the bot. In private and channel chats a bot can always read all messages. |
    | is_inline | bool | True, if the bot supports inline queries. |
    | inline_query_placeholder | string | Placeholder for inline queries (displayed on the application input field). |
    | need_location | bool | True, if the location of the user is expected to be sent with every inline query to this bot. |
    | can_be_added_to_attachment_menu | bool | True, if the bot can be added to attachment or side menu. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_type_bot.html).
    """

    defstruct "@type": "userTypeBot",
              "@extra": nil,
              can_be_edited: nil,
              can_join_groups: nil,
              can_read_all_group_messages: nil,
              is_inline: nil,
              inline_query_placeholder: nil,
              need_location: nil,
              can_be_added_to_attachment_menu: nil
  end

  defmodule UpdateDeleteMessages do
    @moduledoc """
    Some messages were deleted.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |
    | message_ids | string | Identifiers of the deleted messages. |
    | is_permanent | bool | True, if the messages are permanently deleted by a user (as opposed to just becoming inaccessible). |
    | from_cache | bool | True, if the messages are deleted only from the cache and can possibly be retrieved again in the future. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_delete_messages.html).
    """

    defstruct "@type": "updateDeleteMessages",
              "@extra": nil,
              chat_id: nil,
              message_ids: nil,
              is_permanent: nil,
              from_cache: nil
  end

  defmodule ChatActionRecordingVideo do
    @moduledoc """
    The user is recording a video.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_recording_video.html).
    """

    defstruct "@type": "chatActionRecordingVideo", "@extra": nil
  end

  defmodule ConnectionState do
    @moduledoc """
    This class is an abstract base class. Describes the current state of the connection to Telegram servers.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_connection_state.html).
    """

    defstruct "@type": "ConnectionState", "@extra": nil
  end

  defmodule MessageContent do
    @moduledoc """
    This class is an abstract base class. Contains the content of a message.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_message_content.html).
    """

    defstruct "@type": "MessageContent", "@extra": nil
  end

  defmodule CallProblemSilentRemote do
    @moduledoc """
    The other side couldn't hear the user.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_problem_silent_remote.html).
    """

    defstruct "@type": "callProblemSilentRemote", "@extra": nil
  end

  defmodule PassportElements do
    @moduledoc """
    Contains information about saved Telegram Passport elements.

    | Name | Type | Description |
    |------|------| ------------|
    | elements | PassportElement | Telegram Passport elements. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_elements.html).
    """

    defstruct "@type": "passportElements", "@extra": nil, elements: nil
  end

  defmodule TMeUrlTypeSupergroup do
    @moduledoc """
    A URL linking to a public supergroup or channel.

    | Name | Type | Description |
    |------|------| ------------|
    | supergroup_id | string | Identifier of the supergroup or channel. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1t_me_url_type_supergroup.html).
    """

    defstruct "@type": "tMeUrlTypeSupergroup", "@extra": nil, supergroup_id: nil
  end

  defmodule TextEntityTypePhoneNumber do
    @moduledoc """
    A phone number.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_phone_number.html).
    """

    defstruct "@type": "textEntityTypePhoneNumber", "@extra": nil
  end

  defmodule RemoteFile do
    @moduledoc """
    Represents a remote file.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Remote file identifier; may be empty. Can be used by the current user across application restarts or even from other devices. Uniquely identifies a file, but a file can have a lot of different valid identifiers. If the identifier starts with "http://" or "https://", it represents the HTTP URL of the file. TDLib is currently unable to download files if only their URL is known. If downloadFile/addFileToDownloads is called on such a file or if it is sent to a secret chat, TDLib starts a file generation process by sending updateFileGenerationStart to the application with the HTTP URL in the original_path and "#url#" as the conversion string. Application must generate the file by downloading it to the specified location. |
    | unique_id | string | Unique file identifier; may be empty if unknown. The unique file identifier which is the same for the same file even for different users and is persistent over time. |
    | is_uploading_active | bool | True, if the file is currently being uploaded (or a remote copy is being generated by some other means). |
    | is_uploading_completed | bool | True, if a remote copy is fully available. |
    | uploaded_size | string | Size of the remote available part of the file, in bytes; 0 if unknown. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1remote_file.html).
    """

    defstruct "@type": "remoteFile",
              "@extra": nil,
              id: nil,
              unique_id: nil,
              is_uploading_active: nil,
              is_uploading_completed: nil,
              uploaded_size: nil
  end

  defmodule PassportElementErrorSourceTranslationFiles do
    @moduledoc """
    The translation of the document contains an error. The error will be considered resolved when the list of translation files changes.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_error_source_translation_files.html).
    """

    defstruct "@type": "passportElementErrorSourceTranslationFiles", "@extra": nil
  end

  defmodule UpdateInstalledStickerSets do
    @moduledoc """
    The list of installed sticker sets was updated.

    | Name | Type | Description |
    |------|------| ------------|
    | sticker_type | StickerType | Type of the affected stickers. |
    | sticker_set_ids | string | The new list of installed ordinary sticker sets. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_installed_sticker_sets.html).
    """

    defstruct "@type": "updateInstalledStickerSets", "@extra": nil, sticker_type: nil, sticker_set_ids: nil
  end

  defmodule ChatMessageSenders do
    @moduledoc """
    Represents a list of message senders, which can be used to send messages in a chat.

    | Name | Type | Description |
    |------|------| ------------|
    | senders | chatMessageSender | List of available message senders. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_message_senders.html).
    """

    defstruct "@type": "chatMessageSenders", "@extra": nil, senders: nil
  end

  defmodule AuthorizationStateWaitEmailAddress do
    @moduledoc """
    TDLib needs the user's email address to authorize. Call setAuthenticationEmailAddress to provide the email address, or directly call checkAuthenticationEmailCode with Apple ID/Google ID token if allowed.

    | Name | Type | Description |
    |------|------| ------------|
    | allow_apple_id | bool | True, if authorization through Apple ID is allowed. |
    | allow_google_id | bool | True, if authorization through Google ID is allowed. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authorization_state_wait_email_address.html).
    """

    defstruct "@type": "authorizationStateWaitEmailAddress", "@extra": nil, allow_apple_id: nil, allow_google_id: nil
  end

  defmodule ChatEvents do
    @moduledoc """
    Contains a list of chat events.

    | Name | Type | Description |
    |------|------| ------------|
    | events | chatEvent | List of events. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_events.html).
    """

    defstruct "@type": "chatEvents", "@extra": nil, events: nil
  end

  defmodule PushReceiverId do
    @moduledoc """
    Contains a globally unique push receiver identifier, which can be used to identify which account has received a push notification.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | The globally unique identifier of push notification subscription. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_receiver_id.html).
    """

    defstruct "@type": "pushReceiverId", "@extra": nil, id: nil
  end

  defmodule ChatStatistics do
    @moduledoc """
    This class is an abstract base class. Contains a detailed statistics about a chat.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_chat_statistics.html).
    """

    defstruct "@type": "ChatStatistics", "@extra": nil
  end

  defmodule ChatBoostLink do
    @moduledoc """
    Contains an HTTPS link to boost a chat.

    | Name | Type | Description |
    |------|------| ------------|
    | link | string | The link. |
    | is_public | bool | True, if the link will work for non-members of the chat. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_boost_link.html).
    """

    defstruct "@type": "chatBoostLink", "@extra": nil, link: nil, is_public: nil
  end

  defmodule InputIdentityDocument do
    @moduledoc """
    An identity document to be saved to Telegram Passport.

    | Name | Type | Description |
    |------|------| ------------|
    | number | string | Document number; 1-24 characters. |
    | expiration_date | date | Document expiration date; pass null if not applicable. |
    | front_side | InputFile | Front side of the document. |
    | reverse_side | InputFile | Reverse side of the document; only for driver license and identity card; pass null otherwise. |
    | selfie | InputFile | Selfie with the document; pass null if unavailable. |
    | translation | InputFile | List of files containing a certified English translation of the document. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_identity_document.html).
    """

    defstruct "@type": "inputIdentityDocument",
              "@extra": nil,
              number: nil,
              expiration_date: nil,
              front_side: nil,
              reverse_side: nil,
              selfie: nil,
              translation: nil
  end

  defmodule UserPrivacySettingRuleRestrictAll do
    @moduledoc """
    A rule to restrict all users from doing something.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_privacy_setting_rule_restrict_all.html).
    """

    defstruct "@type": "userPrivacySettingRuleRestrictAll", "@extra": nil
  end

  defmodule InputCredentialsSaved do
    @moduledoc """
    Applies if a user chooses some previously saved payment credentials. To use their previously saved credentials, the user must have a valid temporary password.

    | Name | Type | Description |
    |------|------| ------------|
    | saved_credentials_id | string | Identifier of the saved credentials. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_credentials_saved.html).
    """

    defstruct "@type": "inputCredentialsSaved", "@extra": nil, saved_credentials_id: nil
  end

  defmodule ChatEventStickerSetChanged do
    @moduledoc """
    The supergroup sticker set was changed.

    | Name | Type | Description |
    |------|------| ------------|
    | old_sticker_set_id | string | Previous identifier of the chat sticker set; 0 if none. |
    | new_sticker_set_id | string | New identifier of the chat sticker set; 0 if none. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_sticker_set_changed.html).
    """

    defstruct "@type": "chatEventStickerSetChanged", "@extra": nil, old_sticker_set_id: nil, new_sticker_set_id: nil
  end

  defmodule LogStreamDefault do
    @moduledoc """
    The log is written to stderr or an OS specific log.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1log_stream_default.html).
    """

    defstruct "@type": "logStreamDefault", "@extra": nil
  end

  defmodule MessageSource do
    @moduledoc """
    This class is an abstract base class. Describes source of a message.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_message_source.html).
    """

    defstruct "@type": "MessageSource", "@extra": nil
  end

  defmodule JsonValueNumber do
    @moduledoc """
    Represents a numeric JSON value.

    | Name | Type | Description |
    |------|------| ------------|
    | value | double | The value. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1json_value_number.html).
    """

    defstruct "@type": "jsonValueNumber", "@extra": nil, value: nil
  end

  defmodule ChatEventVideoChatParticipantIsMutedToggled do
    @moduledoc """
    A video chat participant was muted or unmuted.

    | Name | Type | Description |
    |------|------| ------------|
    | participant_id | MessageSender | Identifier of the affected group call participant. |
    | is_muted | bool | New value of is_muted. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_video_chat_participant_is_muted_toggled.html).
    """

    defstruct "@type": "chatEventVideoChatParticipantIsMutedToggled", "@extra": nil, participant_id: nil, is_muted: nil
  end

  defmodule OptionValueEmpty do
    @moduledoc """
    Represents an unknown option or an option which has a default value.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1option_value_empty.html).
    """

    defstruct "@type": "optionValueEmpty", "@extra": nil
  end

  defmodule CheckChatUsernameResult do
    @moduledoc """
    This class is an abstract base class. Represents result of checking whether a username can be set for a chat.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_check_chat_username_result.html).
    """

    defstruct "@type": "CheckChatUsernameResult", "@extra": nil
  end

  defmodule InlineQueryResult do
    @moduledoc """
    This class is an abstract base class. Represents a single result of an inline query.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_inline_query_result.html).
    """

    defstruct "@type": "InlineQueryResult", "@extra": nil
  end

  defmodule NotificationSettingsScopeChannelChats do
    @moduledoc """
    Notification settings applied to all channel chats when the corresponding chat setting has a default value.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1notification_settings_scope_channel_chats.html).
    """

    defstruct "@type": "notificationSettingsScopeChannelChats", "@extra": nil
  end

  defmodule ChatActionBarReportUnrelatedLocation do
    @moduledoc """
    The chat is a location-based supergroup, which can be reported as having unrelated location using the method reportChat with the reason reportReasonUnrelatedLocation.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_bar_report_unrelated_location.html).
    """

    defstruct "@type": "chatActionBarReportUnrelatedLocation", "@extra": nil
  end

  defmodule SearchMessagesFilterVideo do
    @moduledoc """
    Returns only video messages.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_video.html).
    """

    defstruct "@type": "searchMessagesFilterVideo", "@extra": nil
  end

  defmodule ChatLists do
    @moduledoc """
    Contains a list of chat lists.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_lists | ChatList | List of chat lists. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_lists.html).
    """

    defstruct "@type": "chatLists", "@extra": nil, chat_lists: nil
  end

  defmodule InputTextQuote do
    @moduledoc """
    Describes manually chosen quote from another message.

    | Name | Type | Description |
    |------|------| ------------|
    | text | formattedText | Text of the quote; 0-getOption("message_reply_quote_length_max") characters. Only Bold, Italic, Underline, Strikethrough, Spoiler, and CustomEmoji entities are allowed to be kept and must be kept in the quote. |
    | position | number | Quote position in the original message in UTF-16 code units. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_text_quote.html).
    """

    defstruct "@type": "inputTextQuote", "@extra": nil, text: nil, position: nil
  end

  defmodule InputStoryAreaTypeLocation do
    @moduledoc """
    An area pointing to a location.

    | Name | Type | Description |
    |------|------| ------------|
    | location | location | The location. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_story_area_type_location.html).
    """

    defstruct "@type": "inputStoryAreaTypeLocation", "@extra": nil, location: nil
  end

  defmodule DeviceTokenMicrosoftPush do
    @moduledoc """
    A token for Microsoft Push Notification Service.

    | Name | Type | Description |
    |------|------| ------------|
    | channel_uri | string | Push notification channel URI; may be empty to deregister a device. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1device_token_microsoft_push.html).
    """

    defstruct "@type": "deviceTokenMicrosoftPush", "@extra": nil, channel_uri: nil
  end

  defmodule TermsOfService do
    @moduledoc """
    Contains Telegram terms of service.

    | Name | Type | Description |
    |------|------| ------------|
    | text | formattedText | Text of the terms of service. |
    | min_user_age | number | The minimum age of a user to be able to accept the terms; 0 if age isn't restricted. |
    | show_popup | bool | True, if a blocking popup with terms of service must be shown to the user. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1terms_of_service.html).
    """

    defstruct "@type": "termsOfService", "@extra": nil, text: nil, min_user_age: nil, show_popup: nil
  end

  defmodule ChatMemberStatusBanned do
    @moduledoc """
    The user or the chat was banned (and hence is not a member of the chat). Implies the user can't return to the chat, view messages, or be used as a participant identifier to join a video chat of the chat.

    | Name | Type | Description |
    |------|------| ------------|
    | banned_until_date | number | Point in time (Unix timestamp) when the user will be unbanned; 0 if never. If the user is banned for more than 366 days or for less than 30 seconds from the current time, the user is considered to be banned forever. Always 0 in basic groups. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_member_status_banned.html).
    """

    defstruct "@type": "chatMemberStatusBanned", "@extra": nil, banned_until_date: nil
  end

  defmodule BotCommandScope do
    @moduledoc """
    This class is an abstract base class. Represents the scope to which bot commands are relevant.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_bot_command_scope.html).
    """

    defstruct "@type": "BotCommandScope", "@extra": nil
  end

  defmodule EmojiCategoryTypeEmojiStatus do
    @moduledoc """
    The category must be used for emoji status selection.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1emoji_category_type_emoji_status.html).
    """

    defstruct "@type": "emojiCategoryTypeEmojiStatus", "@extra": nil
  end

  defmodule SessionTypeAndroid do
    @moduledoc """
    The session is running on an Android device.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1session_type_android.html).
    """

    defstruct "@type": "sessionTypeAndroid", "@extra": nil
  end

  defmodule InlineQueryResultContact do
    @moduledoc """
    Represents a user contact.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Unique identifier of the query result. |
    | contact | contact | A user contact. |
    | thumbnail | thumbnail | Result thumbnail in JPEG format; may be null. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_query_result_contact.html).
    """

    defstruct "@type": "inlineQueryResultContact", "@extra": nil, id: nil, contact: nil, thumbnail: nil
  end

  defmodule InputStoryContentVideo do
    @moduledoc """
    A video story.

    | Name | Type | Description |
    |------|------| ------------|
    | video | InputFile | Video to be sent. The video size must be 720x1280. The video must be streamable and stored in MPEG4 format, after encoding with x265 codec and key frames added each second. |
    | added_sticker_file_ids | number | File identifiers of the stickers added to the video, if applicable. |
    | duration | double | Precise duration of the video, in seconds; 0-60. |
    | is_animation | bool | True, if the video has no sound. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_story_content_video.html).
    """

    defstruct "@type": "inputStoryContentVideo",
              "@extra": nil,
              video: nil,
              added_sticker_file_ids: nil,
              duration: nil,
              is_animation: nil
  end

  defmodule File do
    @moduledoc """
    Represents a file.

    | Name | Type | Description |
    |------|------| ------------|
    | id | number | Unique file identifier. |
    | size | string | File size, in bytes; 0 if unknown. |
    | expected_size | string | Approximate file size in bytes in case the exact file size is unknown. Can be used to show download/upload progress. |
    | local | localFile | Information about the local copy of the file. |
    | remote | remoteFile | Information about the remote copy of the file. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file.html).
    """

    defstruct "@type": "file", "@extra": nil, id: nil, size: nil, expected_size: nil, local: nil, remote: nil
  end

  defmodule UpdateMessageLiveLocationViewed do
    @moduledoc """
    A message with a live location was viewed. When the update is received, the application is supposed to update the live location.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Identifier of the chat with the live location message. |
    | message_id | string | Identifier of the message with live location. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_message_live_location_viewed.html).
    """

    defstruct "@type": "updateMessageLiveLocationViewed", "@extra": nil, chat_id: nil, message_id: nil
  end

  defmodule UpdateUser do
    @moduledoc """
    Some data of a user has changed. This update is guaranteed to come before the user identifier is returned to the application.

    | Name | Type | Description |
    |------|------| ------------|
    | user | user | New data about the user. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_user.html).
    """

    defstruct "@type": "updateUser", "@extra": nil, user: nil
  end

  defmodule StoryContentUnsupported do
    @moduledoc """
    A story content that is not supported in the current TDLib version.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1story_content_unsupported.html).
    """

    defstruct "@type": "storyContentUnsupported", "@extra": nil
  end

  defmodule MessageLinkInfo do
    @moduledoc """
    Contains information about a link to a message or a forum topic in a chat.

    | Name | Type | Description |
    |------|------| ------------|
    | is_public | bool | True, if the link is a public link for a message or a forum topic in a chat. |
    | chat_id | string | If found, identifier of the chat to which the link points, 0 otherwise. |
    | message_thread_id | string | If found, identifier of the message thread in which to open the message, or a forum topic to open if the message is missing. |
    | message | message | If found, the linked message; may be null. |
    | media_timestamp | number | Timestamp from which the video/audio/video note/voice note/story playing must start, in seconds; 0 if not specified. The media can be in the message content or in its web page preview. |
    | for_album | bool | True, if the whole media album to which the message belongs is linked. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_link_info.html).
    """

    defstruct "@type": "messageLinkInfo",
              "@extra": nil,
              is_public: nil,
              chat_id: nil,
              message_thread_id: nil,
              message: nil,
              media_timestamp: nil,
              for_album: nil
  end

  defmodule SearchMessagesFilterChatPhoto do
    @moduledoc """
    Returns only messages containing chat photos.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_chat_photo.html).
    """

    defstruct "@type": "searchMessagesFilterChatPhoto", "@extra": nil
  end

  defmodule EmojiCategoryTypeDefault do
    @moduledoc """
    The category must be used by default.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1emoji_category_type_default.html).
    """

    defstruct "@type": "emojiCategoryTypeDefault", "@extra": nil
  end

  defmodule InputInvoiceName do
    @moduledoc """
    An invoice from a link of the type internalLinkTypeInvoice.

    | Name | Type | Description |
    |------|------| ------------|
    | name | string | Name of the invoice. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_invoice_name.html).
    """

    defstruct "@type": "inputInvoiceName", "@extra": nil, name: nil
  end

  defmodule InputFileGenerated do
    @moduledoc """
    A file generated by the application.

    | Name | Type | Description |
    |------|------| ------------|
    | original_path | string | Local path to a file from which the file is generated; may be empty if there is no such file. |
    | conversion | string | String specifying the conversion applied to the original file; must be persistent across application restarts. Conversions beginning with '#' are reserved for internal TDLib usage. |
    | expected_size | string | Expected size of the generated file, in bytes; 0 if unknown. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_file_generated.html).
    """

    defstruct "@type": "inputFileGenerated", "@extra": nil, original_path: nil, conversion: nil, expected_size: nil
  end

  defmodule AvailableReaction do
    @moduledoc """
    Represents an available reaction.

    | Name | Type | Description |
    |------|------| ------------|
    | type | ReactionType | Type of the reaction. |
    | needs_premium | bool | True, if Telegram Premium is needed to send the reaction. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1available_reaction.html).
    """

    defstruct "@type": "availableReaction", "@extra": nil, type: nil, needs_premium: nil
  end

  defmodule FileTypeWallpaper do
    @moduledoc """
    The file is a wallpaper or a background pattern.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_wallpaper.html).
    """

    defstruct "@type": "fileTypeWallpaper", "@extra": nil
  end

  defmodule RecommendedChatFolder do
    @moduledoc """
    Describes a recommended chat folder.

    | Name | Type | Description |
    |------|------| ------------|
    | folder | chatFolder | The chat folder. |
    | description | string | Chat folder description. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1recommended_chat_folder.html).
    """

    defstruct "@type": "recommendedChatFolder", "@extra": nil, folder: nil, description: nil
  end

  defmodule CallbackQueryAnswer do
    @moduledoc """
    Contains a bot's answer to a callback query.

    | Name | Type | Description |
    |------|------| ------------|
    | text | string | Text of the answer. |
    | show_alert | bool | True, if an alert must be shown to the user instead of a toast notification. |
    | url | string | URL to be opened. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1callback_query_answer.html).
    """

    defstruct "@type": "callbackQueryAnswer", "@extra": nil, text: nil, show_alert: nil, url: nil
  end

  defmodule GroupCallStreams do
    @moduledoc """
    Represents a list of group call streams.

    | Name | Type | Description |
    |------|------| ------------|
    | streams | groupCallStream | A list of group call streams. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1group_call_streams.html).
    """

    defstruct "@type": "groupCallStreams", "@extra": nil, streams: nil
  end

  defmodule LoginUrlInfoRequestConfirmation do
    @moduledoc """
    An authorization confirmation dialog needs to be shown to the user.

    | Name | Type | Description |
    |------|------| ------------|
    | url | string | An HTTP URL to be opened. |
    | domain | string | A domain of the URL. |
    | bot_user_id | string | User identifier of a bot linked with the website. |
    | request_write_access | bool | True, if the user must be asked for the permission to the bot to send them messages. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1login_url_info_request_confirmation.html).
    """

    defstruct "@type": "loginUrlInfoRequestConfirmation",
              "@extra": nil,
              url: nil,
              domain: nil,
              bot_user_id: nil,
              request_write_access: nil
  end

  defmodule MessageReplyToMessage do
    @moduledoc """
    Describes a message replied by a given message.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | The identifier of the chat to which the message belongs; may be 0 if the replied message is in unknown chat. |
    | message_id | string | The identifier of the message; may be 0 if the replied message is in unknown chat. |
    | quote | textQuote | Chosen quote from the replied message; may be null if none. |
    | origin | MessageOrigin | Information about origin of the message if the message was from another chat or topic; may be null for messages from the same chat. |
    | origin_send_date | number | Point in time (Unix timestamp) when the message was sent if the message was from another chat or topic; 0 for messages from the same chat. |
    | content | MessageContent | Media content of the message if the message was from another chat or topic; may be null for messages from the same chat and messages without media. Can be only one of the following types: messageAnimation, messageAudio, messageContact, messageDice, messageDocument, messageGame, messageInvoice, messageLocation, messagePhoto, messagePoll, messagePremiumGiveaway, messageSticker, messageStory, messageText (for link preview), messageVenue, messageVideo, messageVideoNote, or messageVoiceNote. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_reply_to_message.html).
    """

    defstruct "@type": "messageReplyToMessage",
              "@extra": nil,
              chat_id: nil,
              message_id: nil,
              quote: nil,
              origin: nil,
              origin_send_date: nil,
              content: nil
  end

  defmodule UpdateChatAccentColor do
    @moduledoc """
    A chat accent color has changed.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |
    | accent_color_id | number | The new chat accent color identifier. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_accent_color.html).
    """

    defstruct "@type": "updateChatAccentColor", "@extra": nil, chat_id: nil, accent_color_id: nil
  end

  defmodule ChatInviteLinks do
    @moduledoc """
    Contains a list of chat invite links.

    | Name | Type | Description |
    |------|------| ------------|
    | total_count | number | Approximate total number of chat invite links found. |
    | invite_links | chatInviteLink | List of invite links. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_invite_links.html).
    """

    defstruct "@type": "chatInviteLinks", "@extra": nil, total_count: nil, invite_links: nil
  end

  defmodule PushMessageContentAnimation do
    @moduledoc """
    An animation message (GIF-style).

    | Name | Type | Description |
    |------|------| ------------|
    | animation | animation | Message content; may be null. |
    | caption | string | Animation caption. |
    | is_pinned | bool | True, if the message is a pinned message with the specified content. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_animation.html).
    """

    defstruct "@type": "pushMessageContentAnimation", "@extra": nil, animation: nil, caption: nil, is_pinned: nil
  end

  defmodule ChatActionUploadingVideoNote do
    @moduledoc """
    The user is uploading a video note.

    | Name | Type | Description |
    |------|------| ------------|
    | progress | number | Upload progress, as a percentage. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_uploading_video_note.html).
    """

    defstruct "@type": "chatActionUploadingVideoNote", "@extra": nil, progress: nil
  end

  defmodule CallProblemInterruptions do
    @moduledoc """
    The other side kept disappearing.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_problem_interruptions.html).
    """

    defstruct "@type": "callProblemInterruptions", "@extra": nil
  end

  defmodule ThumbnailFormatWebm do
    @moduledoc """
    The thumbnail is in WEBM format. It will be used only for WEBM sticker sets.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1thumbnail_format_webm.html).
    """

    defstruct "@type": "thumbnailFormatWebm", "@extra": nil
  end

  defmodule ChatListMain do
    @moduledoc """
    A main list of chats.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_list_main.html).
    """

    defstruct "@type": "chatListMain", "@extra": nil
  end

  defmodule ChatActionBar do
    @moduledoc """
    This class is an abstract base class. Describes actions which must be possible to do through a chat action bar.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_chat_action_bar.html).
    """

    defstruct "@type": "ChatActionBar", "@extra": nil
  end

  defmodule PremiumFeatureForumTopicIcon do
    @moduledoc """
    The ability to set a custom emoji as a forum topic icon.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_feature_forum_topic_icon.html).
    """

    defstruct "@type": "premiumFeatureForumTopicIcon", "@extra": nil
  end

  defmodule UpdateChatActiveStories do
    @moduledoc """
    The list of active stories posted by a specific chat has changed.

    | Name | Type | Description |
    |------|------| ------------|
    | active_stories | chatActiveStories | The new list of active stories. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_active_stories.html).
    """

    defstruct "@type": "updateChatActiveStories", "@extra": nil, active_stories: nil
  end

  defmodule ChatMembersFilterBots do
    @moduledoc """
    Returns bot members of the chat.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_members_filter_bots.html).
    """

    defstruct "@type": "chatMembersFilterBots", "@extra": nil
  end

  defmodule ChatsNearby do
    @moduledoc """
    Represents a list of chats located nearby.

    | Name | Type | Description |
    |------|------| ------------|
    | users_nearby | chatNearby | List of users nearby. |
    | supergroups_nearby | chatNearby | List of location-based supergroups nearby. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chats_nearby.html).
    """

    defstruct "@type": "chatsNearby", "@extra": nil, users_nearby: nil, supergroups_nearby: nil
  end

  defmodule UserPrivacySettingShowLinkInForwardedMessages do
    @moduledoc """
    A privacy setting for managing whether a link to the user's account is included in forwarded messages.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_privacy_setting_show_link_in_forwarded_messages.html).
    """

    defstruct "@type": "userPrivacySettingShowLinkInForwardedMessages", "@extra": nil
  end

  defmodule UpdateStoryListChatCount do
    @moduledoc """
    Number of chats in a story list has changed.

    | Name | Type | Description |
    |------|------| ------------|
    | story_list | StoryList | The story list. |
    | chat_count | number | Approximate total number of chats with active stories in the list. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_story_list_chat_count.html).
    """

    defstruct "@type": "updateStoryListChatCount", "@extra": nil, story_list: nil, chat_count: nil
  end

  defmodule InternalLinkTypeVideoChat do
    @moduledoc """
    The link is a link to a video chat. Call searchPublicChat with the given chat username, and then joinGroupCall with the given invite hash to process the link.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_username | string | Username of the chat with the video chat. |
    | invite_hash | string | If non-empty, invite hash to be used to join the video chat without being muted by administrators. |
    | is_live_stream | bool | True, if the video chat is expected to be a live stream in a channel or a broadcast group. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_video_chat.html).
    """

    defstruct "@type": "internalLinkTypeVideoChat",
              "@extra": nil,
              chat_username: nil,
              invite_hash: nil,
              is_live_stream: nil
  end

  defmodule InputPassportElementErrorSourceFiles do
    @moduledoc """
    The list of attached files contains an error. The error is considered resolved when the file list changes.

    | Name | Type | Description |
    |------|------| ------------|
    | file_hashes | bytes | Current hashes of all attached files. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_passport_element_error_source_files.html).
    """

    defstruct "@type": "inputPassportElementErrorSourceFiles", "@extra": nil, file_hashes: nil
  end

  defmodule VideoNote do
    @moduledoc """
    Describes a video note. The video must be equal in width and height, cropped to a circle, and stored in MPEG4 format.

    | Name | Type | Description |
    |------|------| ------------|
    | duration | number | Duration of the video, in seconds; as defined by the sender. |
    | waveform | bytes | A waveform representation of the video note's audio in 5-bit format; may be empty if unknown. |
    | length | number | Video width and height; as defined by the sender. |
    | minithumbnail | minithumbnail | Video minithumbnail; may be null. |
    | thumbnail | thumbnail | Video thumbnail in JPEG format; as defined by the sender; may be null. |
    | speech_recognition_result | SpeechRecognitionResult | Result of speech recognition in the video note; may be null. |
    | video | file | File containing the video. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1video_note.html).
    """

    defstruct "@type": "videoNote",
              "@extra": nil,
              duration: nil,
              waveform: nil,
              length: nil,
              minithumbnail: nil,
              thumbnail: nil,
              speech_recognition_result: nil,
              video: nil
  end

  defmodule PremiumFeatureAnimatedProfilePhoto do
    @moduledoc """
    Profile photo animation on message and chat screens.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_feature_animated_profile_photo.html).
    """

    defstruct "@type": "premiumFeatureAnimatedProfilePhoto", "@extra": nil
  end

  defmodule MessagePinMessage do
    @moduledoc """
    A message has been pinned.

    | Name | Type | Description |
    |------|------| ------------|
    | message_id | string | Identifier of the pinned message, can be an identifier of a deleted message or 0. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_pin_message.html).
    """

    defstruct "@type": "messagePinMessage", "@extra": nil, message_id: nil
  end

  defmodule UserPrivacySettingAllowCalls do
    @moduledoc """
    A privacy setting for managing whether the user can be called.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_privacy_setting_allow_calls.html).
    """

    defstruct "@type": "userPrivacySettingAllowCalls", "@extra": nil
  end

  defmodule SearchMessagesFilterUnreadMention do
    @moduledoc """
    Returns only messages with unread mentions of the current user, or messages that are replies to their messages. When using this filter the results can't be additionally filtered by a query, a message thread or by the sending user.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_unread_mention.html).
    """

    defstruct "@type": "searchMessagesFilterUnreadMention", "@extra": nil
  end

  defmodule StoryOriginHiddenUser do
    @moduledoc """
    The original story was sent by an unknown user.

    | Name | Type | Description |
    |------|------| ------------|
    | sender_name | string | Name of the story sender. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1story_origin_hidden_user.html).
    """

    defstruct "@type": "storyOriginHiddenUser", "@extra": nil, sender_name: nil
  end

  defmodule StoryPublicForward do
    @moduledoc """
    This class is an abstract base class. Describes a public forward or repost of a story.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_story_public_forward.html).
    """

    defstruct "@type": "StoryPublicForward", "@extra": nil
  end

  defmodule CallDiscardReason do
    @moduledoc """
    This class is an abstract base class. Describes the reason why a call was discarded.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_call_discard_reason.html).
    """

    defstruct "@type": "CallDiscardReason", "@extra": nil
  end

  defmodule BotCommand do
    @moduledoc """
    Represents a command supported by a bot.

    | Name | Type | Description |
    |------|------| ------------|
    | command | string | Text of the bot command. |
    | description | string | Description of the bot command. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1bot_command.html).
    """

    defstruct "@type": "botCommand", "@extra": nil, command: nil, description: nil
  end

  defmodule Sticker do
    @moduledoc """
    Describes a sticker.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Unique sticker identifier within the set; 0 if none. |
    | set_id | string | Identifier of the sticker set to which the sticker belongs; 0 if none. |
    | width | number | Sticker width; as defined by the sender. |
    | height | number | Sticker height; as defined by the sender. |
    | emoji | string | Emoji corresponding to the sticker. |
    | format | StickerFormat | Sticker format. |
    | full_type | StickerFullType | Sticker's full type. |
    | outline | closedVectorPath | Sticker's outline represented as a list of closed vector paths; may be empty. The coordinate system origin is in the upper-left corner. |
    | thumbnail | thumbnail | Sticker thumbnail in WEBP or JPEG format; may be null. |
    | sticker | file | File containing the sticker. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sticker.html).
    """

    defstruct "@type": "sticker",
              "@extra": nil,
              id: nil,
              set_id: nil,
              width: nil,
              height: nil,
              emoji: nil,
              format: nil,
              full_type: nil,
              outline: nil,
              thumbnail: nil,
              sticker: nil
  end

  defmodule PremiumState do
    @moduledoc """
    Contains state of Telegram Premium subscription and promotion videos for Premium features.

    | Name | Type | Description |
    |------|------| ------------|
    | state | formattedText | Text description of the state of the current Premium subscription; may be empty if the current user has no Telegram Premium subscription. |
    | payment_options | premiumStatePaymentOption | The list of available options for buying Telegram Premium. |
    | animations | premiumFeaturePromotionAnimation | The list of available promotion animations for Premium features. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_state.html).
    """

    defstruct "@type": "premiumState", "@extra": nil, state: nil, payment_options: nil, animations: nil
  end

  defmodule SearchMessagesFilterUrl do
    @moduledoc """
    Returns only messages containing URLs.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_url.html).
    """

    defstruct "@type": "searchMessagesFilterUrl", "@extra": nil
  end

  defmodule MessageSponsorTypeBot do
    @moduledoc """
    The sponsor is a bot.

    | Name | Type | Description |
    |------|------| ------------|
    | bot_user_id | string | User identifier of the bot. |
    | link | InternalLinkType | An internal link to be opened when the sponsored message is clicked. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_sponsor_type_bot.html).
    """

    defstruct "@type": "messageSponsorTypeBot", "@extra": nil, bot_user_id: nil, link: nil
  end

  defmodule MessageExpiredPhoto do
    @moduledoc """
    A self-destructed photo message.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_expired_photo.html).
    """

    defstruct "@type": "messageExpiredPhoto", "@extra": nil
  end

  defmodule ChatEventLogFilters do
    @moduledoc """
    Represents a set of filters used to obtain a chat event log.

    | Name | Type | Description |
    |------|------| ------------|
    | message_edits | bool | True, if message edits need to be returned. |
    | message_deletions | bool | True, if message deletions need to be returned. |
    | message_pins | bool | True, if pin/unpin events need to be returned. |
    | member_joins | bool | True, if members joining events need to be returned. |
    | member_leaves | bool | True, if members leaving events need to be returned. |
    | member_invites | bool | True, if invited member events need to be returned. |
    | member_promotions | bool | True, if member promotion/demotion events need to be returned. |
    | member_restrictions | bool | True, if member restricted/unrestricted/banned/unbanned events need to be returned. |
    | info_changes | bool | True, if changes in chat information need to be returned. |
    | setting_changes | bool | True, if changes in chat settings need to be returned. |
    | invite_link_changes | bool | True, if changes to invite links need to be returned. |
    | video_chat_changes | bool | True, if video chat actions need to be returned. |
    | forum_changes | bool | True, if forum-related actions need to be returned. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_log_filters.html).
    """

    defstruct "@type": "chatEventLogFilters",
              "@extra": nil,
              message_edits: nil,
              message_deletions: nil,
              message_pins: nil,
              member_joins: nil,
              member_leaves: nil,
              member_invites: nil,
              member_promotions: nil,
              member_restrictions: nil,
              info_changes: nil,
              setting_changes: nil,
              invite_link_changes: nil,
              video_chat_changes: nil,
              forum_changes: nil
  end

  defmodule MessageSponsorTypePublicChannel do
    @moduledoc """
    The sponsor is a public channel chat.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Sponsor chat identifier. |
    | link | InternalLinkType | An internal link to be opened when the sponsored message is clicked; may be null if the sponsor chat needs to be opened instead. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_sponsor_type_public_channel.html).
    """

    defstruct "@type": "messageSponsorTypePublicChannel", "@extra": nil, chat_id: nil, link: nil
  end

  defmodule AuthorizationStateWaitEmailCode do
    @moduledoc """
    TDLib needs the user's authentication code sent to an email address to authorize. Call checkAuthenticationEmailCode to provide the code.

    | Name | Type | Description |
    |------|------| ------------|
    | allow_apple_id | bool | True, if authorization through Apple ID is allowed. |
    | allow_google_id | bool | True, if authorization through Google ID is allowed. |
    | code_info | emailAddressAuthenticationCodeInfo | Information about the sent authentication code. |
    | email_address_reset_state | EmailAddressResetState | Reset state of the email address; may be null if the email address can't be reset. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authorization_state_wait_email_code.html).
    """

    defstruct "@type": "authorizationStateWaitEmailCode",
              "@extra": nil,
              allow_apple_id: nil,
              allow_google_id: nil,
              code_info: nil,
              email_address_reset_state: nil
  end

  defmodule TelegramPaymentPurposePremiumGiveaway do
    @moduledoc """
    The user creating a Telegram Premium giveaway for subscribers of channel chats; requires can_post_messages rights in the channels.

    | Name | Type | Description |
    |------|------| ------------|
    | parameters | premiumGiveawayParameters | Giveaway parameters. |
    | currency | string | ISO 4217 currency code of the payment currency. |
    | amount | string | Paid amount, in the smallest units of the currency. |
    | winner_count | number | Number of users which will be able to activate the gift codes. |
    | month_count | number | Number of month the Telegram Premium subscription will be active for the users. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1telegram_payment_purpose_premium_giveaway.html).
    """

    defstruct "@type": "telegramPaymentPurposePremiumGiveaway",
              "@extra": nil,
              parameters: nil,
              currency: nil,
              amount: nil,
              winner_count: nil,
              month_count: nil
  end

  defmodule InputInlineQueryResultGame do
    @moduledoc """
    Represents a game.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Unique identifier of the query result. |
    | game_short_name | string | Short name of the game. |
    | reply_markup | ReplyMarkup | The message reply markup; pass null if none. Must be of type replyMarkupInlineKeyboard or null. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_inline_query_result_game.html).
    """

    defstruct "@type": "inputInlineQueryResultGame", "@extra": nil, id: nil, game_short_name: nil, reply_markup: nil
  end

  defmodule DownloadedFileCounts do
    @moduledoc """
    Contains number of being downloaded and recently downloaded files found.

    | Name | Type | Description |
    |------|------| ------------|
    | active_count | number | Number of active file downloads found, including paused. |
    | paused_count | number | Number of paused file downloads found. |
    | completed_count | number | Number of completed file downloads found. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1downloaded_file_counts.html).
    """

    defstruct "@type": "downloadedFileCounts", "@extra": nil, active_count: nil, paused_count: nil, completed_count: nil
  end

  defmodule ChatActionChoosingContact do
    @moduledoc """
    The user is picking a contact to send.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_choosing_contact.html).
    """

    defstruct "@type": "chatActionChoosingContact", "@extra": nil
  end

  defmodule InputPassportElementTemporaryRegistration do
    @moduledoc """
    A Telegram Passport element to be saved containing the user's temporary registration.

    | Name | Type | Description |
    |------|------| ------------|
    | temporary_registration | inputPersonalDocument | The temporary registration document to be saved. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_passport_element_temporary_registration.html).
    """

    defstruct "@type": "inputPassportElementTemporaryRegistration", "@extra": nil, temporary_registration: nil
  end

  defmodule PushMessageContentGame do
    @moduledoc """
    A message with a game.

    | Name | Type | Description |
    |------|------| ------------|
    | title | string | Game title, empty for pinned game message. |
    | is_pinned | bool | True, if the message is a pinned message with the specified content. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_game.html).
    """

    defstruct "@type": "pushMessageContentGame", "@extra": nil, title: nil, is_pinned: nil
  end

  defmodule MessagePremiumGiveawayCompleted do
    @moduledoc """
    A Telegram Premium giveaway has been completed for the chat.

    | Name | Type | Description |
    |------|------| ------------|
    | giveaway_message_id | string | Identifier of the message with the giveaway, can be an identifier of a deleted message. |
    | winner_count | number | Number of winners in the giveaway. |
    | unclaimed_prize_count | number | Number of undistributed prizes. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_premium_giveaway_completed.html).
    """

    defstruct "@type": "messagePremiumGiveawayCompleted",
              "@extra": nil,
              giveaway_message_id: nil,
              winner_count: nil,
              unclaimed_prize_count: nil
  end

  defmodule StoryPrivacySettingsContacts do
    @moduledoc """
    The story can be viewed by all contacts except chosen users.

    | Name | Type | Description |
    |------|------| ------------|
    | except_user_ids | string | User identifiers of the contacts that can't see the story; always unknown and empty for non-owned stories. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1story_privacy_settings_contacts.html).
    """

    defstruct "@type": "storyPrivacySettingsContacts", "@extra": nil, except_user_ids: nil
  end

  defmodule RichTextSuperscript do
    @moduledoc """
    A superscript rich text.

    | Name | Type | Description |
    |------|------| ------------|
    | text | RichText | Text. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1rich_text_superscript.html).
    """

    defstruct "@type": "richTextSuperscript", "@extra": nil, text: nil
  end

  defmodule ProxyTypeHttp do
    @moduledoc """
    A HTTP transparent proxy server.

    | Name | Type | Description |
    |------|------| ------------|
    | username | string | Username for logging in; may be empty. |
    | password | string | Password for logging in; may be empty. |
    | http_only | bool | Pass true if the proxy supports only HTTP requests and doesn't support transparent TCP connections via HTTP CONNECT method. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1proxy_type_http.html).
    """

    defstruct "@type": "proxyTypeHttp", "@extra": nil, username: nil, password: nil, http_only: nil
  end

  defmodule ChatAdministrators do
    @moduledoc """
    Represents a list of chat administrators.

    | Name | Type | Description |
    |------|------| ------------|
    | administrators | chatAdministrator | A list of chat administrators. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_administrators.html).
    """

    defstruct "@type": "chatAdministrators", "@extra": nil, administrators: nil
  end

  defmodule PageBlockAnimation do
    @moduledoc """
    An animation.

    | Name | Type | Description |
    |------|------| ------------|
    | animation | animation | Animation file; may be null. |
    | caption | pageBlockCaption | Animation caption. |
    | need_autoplay | bool | True, if the animation must be played automatically. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_animation.html).
    """

    defstruct "@type": "pageBlockAnimation", "@extra": nil, animation: nil, caption: nil, need_autoplay: nil
  end

  defmodule AccentColor do
    @moduledoc """
    Contains information about supported accent color for user/chat name, background of empty chat photo, replies to messages and link previews.

    | Name | Type | Description |
    |------|------| ------------|
    | id | number | Accent color identifier. |
    | built_in_accent_color_id | number | Identifier of a built-in color to use in places, where only one color is needed; 0-6. |
    | light_theme_colors | number | The list of 1-3 colors in RGB format, describing the accent color, as expected to be shown in light themes. |
    | dark_theme_colors | number | The list of 1-3 colors in RGB format, describing the accent color, as expected to be shown in dark themes. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1accent_color.html).
    """

    defstruct "@type": "accentColor",
              "@extra": nil,
              id: nil,
              built_in_accent_color_id: nil,
              light_theme_colors: nil,
              dark_theme_colors: nil
  end

  defmodule RichTextIcon do
    @moduledoc """
    A small image inside the text.

    | Name | Type | Description |
    |------|------| ------------|
    | document | document | The image represented as a document. The image can be in GIF, JPEG or PNG format. |
    | width | number | Width of a bounding box in which the image must be shown; 0 if unknown. |
    | height | number | Height of a bounding box in which the image must be shown; 0 if unknown. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1rich_text_icon.html).
    """

    defstruct "@type": "richTextIcon", "@extra": nil, document: nil, width: nil, height: nil
  end

  defmodule DeviceTokenTizenPush do
    @moduledoc """
    A token for Tizen Push Service.

    | Name | Type | Description |
    |------|------| ------------|
    | reg_id | string | Push service registration identifier; may be empty to deregister a device. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1device_token_tizen_push.html).
    """

    defstruct "@type": "deviceTokenTizenPush", "@extra": nil, reg_id: nil
  end

  defmodule ChatEventForumTopicToggleIsClosed do
    @moduledoc """
    A forum topic was closed or reopened.

    | Name | Type | Description |
    |------|------| ------------|
    | topic_info | forumTopicInfo | New information about the topic. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_forum_topic_toggle_is_closed.html).
    """

    defstruct "@type": "chatEventForumTopicToggleIsClosed", "@extra": nil, topic_info: nil
  end

  defmodule FirebaseAuthenticationSettingsIos do
    @moduledoc """
    Settings for Firebase Authentication in the official iOS application.

    | Name | Type | Description |
    |------|------| ------------|
    | device_token | string | Device token from Apple Push Notification service. |
    | is_app_sandbox | bool | True, if App Sandbox is enabled. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1firebase_authentication_settings_ios.html).
    """

    defstruct "@type": "firebaseAuthenticationSettingsIos", "@extra": nil, device_token: nil, is_app_sandbox: nil
  end

  defmodule ChatEventForumTopicEdited do
    @moduledoc """
    A forum topic was edited.

    | Name | Type | Description |
    |------|------| ------------|
    | old_topic_info | forumTopicInfo | Old information about the topic. |
    | new_topic_info | forumTopicInfo | New information about the topic. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_forum_topic_edited.html).
    """

    defstruct "@type": "chatEventForumTopicEdited", "@extra": nil, old_topic_info: nil, new_topic_info: nil
  end

  defmodule PushMessageContentGameScore do
    @moduledoc """
    A new high score was achieved in a game.

    | Name | Type | Description |
    |------|------| ------------|
    | title | string | Game title, empty for pinned message. |
    | score | number | New score, 0 for pinned message. |
    | is_pinned | bool | True, if the message is a pinned message with the specified content. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_game_score.html).
    """

    defstruct "@type": "pushMessageContentGameScore", "@extra": nil, title: nil, score: nil, is_pinned: nil
  end

  defmodule Usernames do
    @moduledoc """
    Describes usernames assigned to a user, a supergroup, or a channel.

    | Name | Type | Description |
    |------|------| ------------|
    | active_usernames | string | List of active usernames; the first one must be shown as the primary username. The order of active usernames can be changed with reorderActiveUsernames, reorderBotActiveUsernames or reorderSupergroupActiveUsernames. |
    | disabled_usernames | string | List of currently disabled usernames; the username can be activated with toggleUsernameIsActive, toggleBotUsernameIsActive, or toggleSupergroupUsernameIsActive. |
    | editable_username | string | The active username, which can be changed with setUsername or setSupergroupUsername. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1usernames.html).
    """

    defstruct "@type": "usernames",
              "@extra": nil,
              active_usernames: nil,
              disabled_usernames: nil,
              editable_username: nil
  end

  defmodule NotificationGroupType do
    @moduledoc """
    This class is an abstract base class. Describes the type of notifications in a notification group.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_notification_group_type.html).
    """

    defstruct "@type": "NotificationGroupType", "@extra": nil
  end

  defmodule ChatActionStartPlayingGame do
    @moduledoc """
    The user has started to play a game.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_start_playing_game.html).
    """

    defstruct "@type": "chatActionStartPlayingGame", "@extra": nil
  end

  defmodule MessageBasicGroupChatCreate do
    @moduledoc """
    A newly created basic group.

    | Name | Type | Description |
    |------|------| ------------|
    | title | string | Title of the basic group. |
    | member_user_ids | string | User identifiers of members in the basic group. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_basic_group_chat_create.html).
    """

    defstruct "@type": "messageBasicGroupChatCreate", "@extra": nil, title: nil, member_user_ids: nil
  end

  defmodule PremiumSourceLink do
    @moduledoc """
    A user opened an internal link of the type internalLinkTypePremiumFeatures.

    | Name | Type | Description |
    |------|------| ------------|
    | referrer | string | The referrer from the link. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_source_link.html).
    """

    defstruct "@type": "premiumSourceLink", "@extra": nil, referrer: nil
  end

  defmodule SearchMessagesFilterMention do
    @moduledoc """
    Returns only messages with mentions of the current user, or messages that are replies to their messages.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_mention.html).
    """

    defstruct "@type": "searchMessagesFilterMention", "@extra": nil
  end

  defmodule InlineKeyboardButtonType do
    @moduledoc """
    This class is an abstract base class. Describes the type of an inline keyboard button.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_inline_keyboard_button_type.html).
    """

    defstruct "@type": "InlineKeyboardButtonType", "@extra": nil
  end

  defmodule CallDiscardReasonEmpty do
    @moduledoc """
    The call wasn't discarded, or the reason is unknown.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_discard_reason_empty.html).
    """

    defstruct "@type": "callDiscardReasonEmpty", "@extra": nil
  end

  defmodule InputStoryAreaTypePreviousVenue do
    @moduledoc """
    An area pointing to a venue already added to the story.

    | Name | Type | Description |
    |------|------| ------------|
    | venue_provider | string | Provider of the venue. |
    | venue_id | string | Identifier of the venue in the provider database. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_story_area_type_previous_venue.html).
    """

    defstruct "@type": "inputStoryAreaTypePreviousVenue", "@extra": nil, venue_provider: nil, venue_id: nil
  end

  defmodule UpdateAnimatedEmojiMessageClicked do
    @moduledoc """
    Some animated emoji message was clicked and a big animated sticker must be played if the message is visible on the screen. chatActionWatchingAnimations with the text of the message needs to be sent if the sticker is played.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |
    | message_id | string | Message identifier. |
    | sticker | sticker | The animated sticker to be played. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_animated_emoji_message_clicked.html).
    """

    defstruct "@type": "updateAnimatedEmojiMessageClicked", "@extra": nil, chat_id: nil, message_id: nil, sticker: nil
  end

  defmodule SearchMessagesFilterPinned do
    @moduledoc """
    Returns only pinned messages.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_pinned.html).
    """

    defstruct "@type": "searchMessagesFilterPinned", "@extra": nil
  end

  defmodule Proxies do
    @moduledoc """
    Represents a list of proxy servers.

    | Name | Type | Description |
    |------|------| ------------|
    | proxies | proxy | List of proxy servers. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1proxies.html).
    """

    defstruct "@type": "proxies", "@extra": nil, proxies: nil
  end

  defmodule InternalLinkTypeStickerSet do
    @moduledoc """
    The link is a link to a sticker set. Call searchStickerSet with the given sticker set name to process the link and show the sticker set.

    | Name | Type | Description |
    |------|------| ------------|
    | sticker_set_name | string | Name of the sticker set. |
    | expect_custom_emoji | bool | True, if the sticker set is expected to contain custom emoji. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_sticker_set.html).
    """

    defstruct "@type": "internalLinkTypeStickerSet", "@extra": nil, sticker_set_name: nil, expect_custom_emoji: nil
  end

  defmodule SupergroupMembersFilterRestricted do
    @moduledoc """
    Returns restricted supergroup members; can be used only by administrators.

    | Name | Type | Description |
    |------|------| ------------|
    | query | string | Query to search for. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1supergroup_members_filter_restricted.html).
    """

    defstruct "@type": "supergroupMembersFilterRestricted", "@extra": nil, query: nil
  end

  defmodule NotificationGroupTypeMentions do
    @moduledoc """
    A group containing notifications of type notificationTypeNewMessage and notificationTypeNewPushMessage with unread mentions of the current user, replies to their messages, or a pinned message.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1notification_group_type_mentions.html).
    """

    defstruct "@type": "notificationGroupTypeMentions", "@extra": nil
  end

  defmodule PremiumStoryFeaturePriorityOrder do
    @moduledoc """
    User stories are displayed before stories of non-premium contacts and channels.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_story_feature_priority_order.html).
    """

    defstruct "@type": "premiumStoryFeaturePriorityOrder", "@extra": nil
  end

  defmodule ChatFolderInviteLinkInfo do
    @moduledoc """
    Contains information about an invite link to a chat folder.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_folder_info | chatFolderInfo | Basic information about the chat folder; chat folder identifier will be 0 if the user didn't have the chat folder yet. |
    | missing_chat_ids | string | Identifiers of the chats from the link, which aren't added to the folder yet. |
    | added_chat_ids | string | Identifiers of the chats from the link, which are added to the folder already. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_folder_invite_link_info.html).
    """

    defstruct "@type": "chatFolderInviteLinkInfo",
              "@extra": nil,
              chat_folder_info: nil,
              missing_chat_ids: nil,
              added_chat_ids: nil
  end

  defmodule LocalFile do
    @moduledoc """
    Represents a local file.

    | Name | Type | Description |
    |------|------| ------------|
    | path | string | Local path to the locally available file part; may be empty. |
    | can_be_downloaded | bool | True, if it is possible to download or generate the file. |
    | can_be_deleted | bool | True, if the file can be deleted. |
    | is_downloading_active | bool | True, if the file is currently being downloaded (or a local copy is being generated by some other means). |
    | is_downloading_completed | bool | True, if the local copy is fully available. |
    | download_offset | string | Download will be started from this offset. downloaded_prefix_size is calculated from this offset. |
    | downloaded_prefix_size | string | If is_downloading_completed is false, then only some prefix of the file starting from download_offset is ready to be read. downloaded_prefix_size is the size of that prefix in bytes. |
    | downloaded_size | string | Total downloaded file size, in bytes. Can be used only for calculating download progress. The actual file size may be bigger, and some parts of it may contain garbage. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1local_file.html).
    """

    defstruct "@type": "localFile",
              "@extra": nil,
              path: nil,
              can_be_downloaded: nil,
              can_be_deleted: nil,
              is_downloading_active: nil,
              is_downloading_completed: nil,
              download_offset: nil,
              downloaded_prefix_size: nil,
              downloaded_size: nil
  end

  defmodule MessageSourceOther do
    @moduledoc """
    The message is from some other source.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_source_other.html).
    """

    defstruct "@type": "messageSourceOther", "@extra": nil
  end

  defmodule UpdateTrendingStickerSets do
    @moduledoc """
    The list of trending sticker sets was updated or some of them were viewed.

    | Name | Type | Description |
    |------|------| ------------|
    | sticker_type | StickerType | Type of the affected stickers. |
    | sticker_sets | trendingStickerSets | The prefix of the list of trending sticker sets with the newest trending sticker sets. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_trending_sticker_sets.html).
    """

    defstruct "@type": "updateTrendingStickerSets", "@extra": nil, sticker_type: nil, sticker_sets: nil
  end

  defmodule PageBlockVerticalAlignmentTop do
    @moduledoc """
    The content must be top-aligned.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_vertical_alignment_top.html).
    """

    defstruct "@type": "pageBlockVerticalAlignmentTop", "@extra": nil
  end

  defmodule PhoneNumberAuthenticationSettings do
    @moduledoc """
    Contains settings for the authentication of the user's phone number.

    | Name | Type | Description |
    |------|------| ------------|
    | allow_flash_call | bool | Pass true if the authentication code may be sent via a flash call to the specified phone number. |
    | allow_missed_call | bool | Pass true if the authentication code may be sent via a missed call to the specified phone number. |
    | is_current_phone_number | bool | Pass true if the authenticated phone number is used on the current device. |
    | allow_sms_retriever_api | bool | For official applications only. True, if the application can use Android SMS Retriever API (requires Google Play Services >= 10.2) to automatically receive the authentication code from the SMS. See https://developers.google.com/identity/sms-retriever/ for more details. |
    | firebase_authentication_settings | FirebaseAuthenticationSettings | For official Android and iOS applications only; pass null otherwise. Settings for Firebase Authentication. |
    | authentication_tokens | string | List of up to 20 authentication tokens, recently received in updateOption("authentication_token") in previously logged out sessions. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1phone_number_authentication_settings.html).
    """

    defstruct "@type": "phoneNumberAuthenticationSettings",
              "@extra": nil,
              allow_flash_call: nil,
              allow_missed_call: nil,
              is_current_phone_number: nil,
              allow_sms_retriever_api: nil,
              firebase_authentication_settings: nil,
              authentication_tokens: nil
  end

  defmodule SpeechRecognitionResultText do
    @moduledoc """
    The speech recognition successfully finished.

    | Name | Type | Description |
    |------|------| ------------|
    | text | string | Recognized text. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1speech_recognition_result_text.html).
    """

    defstruct "@type": "speechRecognitionResultText", "@extra": nil, text: nil
  end

  defmodule TopChatCategoryBots do
    @moduledoc """
    A category containing frequently used private chats with bot users.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1top_chat_category_bots.html).
    """

    defstruct "@type": "topChatCategoryBots", "@extra": nil
  end

  defmodule UpdateChatVideoChat do
    @moduledoc """
    A chat video chat state has changed.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |
    | video_chat | videoChat | New value of video_chat. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_video_chat.html).
    """

    defstruct "@type": "updateChatVideoChat", "@extra": nil, chat_id: nil, video_chat: nil
  end

  defmodule TextQuote do
    @moduledoc """
    Describes manually or automatically chosen quote from another message.

    | Name | Type | Description |
    |------|------| ------------|
    | text | formattedText | Text of the quote. Only Bold, Italic, Underline, Strikethrough, Spoiler, and CustomEmoji entities can be present in the text. |
    | position | number | Approximate quote position in the original message in UTF-16 code units as specified by the message sender. |
    | is_manual | bool | True, if the quote was manually chosen by the message sender. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_quote.html).
    """

    defstruct "@type": "textQuote", "@extra": nil, text: nil, position: nil, is_manual: nil
  end

  defmodule StoryAreaTypeVenue do
    @moduledoc """
    An area pointing to a venue.

    | Name | Type | Description |
    |------|------| ------------|
    | venue | venue | Information about the venue. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1story_area_type_venue.html).
    """

    defstruct "@type": "storyAreaTypeVenue", "@extra": nil, venue: nil
  end

  defmodule CallStateReady do
    @moduledoc """
    The call is ready to use.

    | Name | Type | Description |
    |------|------| ------------|
    | protocol | callProtocol | Call protocols supported by the other call participant. |
    | servers | callServer | List of available call servers. |
    | config | string | A JSON-encoded call config. |
    | encryption_key | bytes | Call encryption key. |
    | emojis | string | Encryption key emojis fingerprint. |
    | allow_p2p | bool | True, if peer-to-peer connection is allowed by users privacy settings. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_state_ready.html).
    """

    defstruct "@type": "callStateReady",
              "@extra": nil,
              protocol: nil,
              servers: nil,
              config: nil,
              encryption_key: nil,
              emojis: nil,
              allow_p2p: nil
  end

  defmodule PremiumGiftCodePaymentOption do
    @moduledoc """
    Describes an option for creating Telegram Premium gift codes.

    | Name | Type | Description |
    |------|------| ------------|
    | currency | string | ISO 4217 currency code for Telegram Premium gift code payment. |
    | amount | string | The amount to pay, in the smallest units of the currency. |
    | user_count | number | Number of users which will be able to activate the gift codes. |
    | month_count | number | Number of month the Telegram Premium subscription will be active. |
    | store_product_id | string | Identifier of the store product associated with the option; may be empty if none. |
    | store_product_quantity | number | Number of times the store product must be paid. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_gift_code_payment_option.html).
    """

    defstruct "@type": "premiumGiftCodePaymentOption",
              "@extra": nil,
              currency: nil,
              amount: nil,
              user_count: nil,
              month_count: nil,
              store_product_id: nil,
              store_product_quantity: nil
  end

  defmodule CheckChatUsernameResultOk do
    @moduledoc """
    The username can be set.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1check_chat_username_result_ok.html).
    """

    defstruct "@type": "checkChatUsernameResultOk", "@extra": nil
  end

  defmodule ChatPhotoStickerType do
    @moduledoc """
    This class is an abstract base class. Describes type of a sticker, which was used to create a chat photo.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_chat_photo_sticker_type.html).
    """

    defstruct "@type": "ChatPhotoStickerType", "@extra": nil
  end

  defmodule TextParseModeHTML do
    @moduledoc """
    The text uses HTML-style formatting. The same as Telegram Bot API "HTML" parse mode.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_parse_mode_h_t_m_l.html).
    """

    defstruct "@type": "textParseModeHTML", "@extra": nil
  end

  defmodule InputChatPhotoStatic do
    @moduledoc """
    A static photo in JPEG format.

    | Name | Type | Description |
    |------|------| ------------|
    | photo | InputFile | Photo to be set as profile photo. Only inputFileLocal and inputFileGenerated are allowed. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_chat_photo_static.html).
    """

    defstruct "@type": "inputChatPhotoStatic", "@extra": nil, photo: nil
  end

  defmodule InputStoryArea do
    @moduledoc """
    Describes a clickable rectangle area on a story media to be added.

    | Name | Type | Description |
    |------|------| ------------|
    | position | storyAreaPosition | Position of the area. |
    | type | InputStoryAreaType | Type of the area. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_story_area.html).
    """

    defstruct "@type": "inputStoryArea", "@extra": nil, position: nil, type: nil
  end

  defmodule SponsoredMessages do
    @moduledoc """
    Contains a list of sponsored messages.

    | Name | Type | Description |
    |------|------| ------------|
    | messages | sponsoredMessage | List of sponsored messages. |
    | messages_between | number | The minimum number of messages between shown sponsored messages, or 0 if only one sponsored message must be shown after all ordinary messages. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sponsored_messages.html).
    """

    defstruct "@type": "sponsoredMessages", "@extra": nil, messages: nil, messages_between: nil
  end

  defmodule CallDiscardReasonDeclined do
    @moduledoc """
    The call was ended before the conversation started. It was declined by the other party.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_discard_reason_declined.html).
    """

    defstruct "@type": "callDiscardReasonDeclined", "@extra": nil
  end

  defmodule UpdateNewChatJoinRequest do
    @moduledoc """
    A user sent a join request to a chat; for bots only.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |
    | request | chatJoinRequest | Join request. |
    | user_chat_id | string | Chat identifier of the private chat with the user. |
    | invite_link | chatInviteLink | The invite link, which was used to send join request; may be null. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_new_chat_join_request.html).
    """

    defstruct "@type": "updateNewChatJoinRequest",
              "@extra": nil,
              chat_id: nil,
              request: nil,
              user_chat_id: nil,
              invite_link: nil
  end

  defmodule TextEntityTypeStrikethrough do
    @moduledoc """
    A strikethrough text.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_strikethrough.html).
    """

    defstruct "@type": "textEntityTypeStrikethrough", "@extra": nil
  end

  defmodule ChatEventVideoChatParticipantVolumeLevelChanged do
    @moduledoc """
    A video chat participant volume level was changed.

    | Name | Type | Description |
    |------|------| ------------|
    | participant_id | MessageSender | Identifier of the affected group call participant. |
    | volume_level | number | New value of volume_level; 1-20000 in hundreds of percents. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_video_chat_participant_volume_level_changed.html).
    """

    defstruct "@type": "chatEventVideoChatParticipantVolumeLevelChanged",
              "@extra": nil,
              participant_id: nil,
              volume_level: nil
  end

  defmodule ChatBoostSourceGiveaway do
    @moduledoc """
    The chat created a Telegram Premium giveaway.

    | Name | Type | Description |
    |------|------| ------------|
    | user_id | string | Identifier of a user that won in the giveaway; 0 if none. |
    | gift_code | string | The created Telegram Premium gift code if it was used by the user or can be claimed by the current user; an empty string otherwise. |
    | giveaway_message_id | string | Identifier of the corresponding giveaway message; can be an identifier of a deleted message. |
    | is_unclaimed | bool | True, if the winner for the corresponding Telegram Premium subscription wasn't chosen, because there were not enough participants. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_boost_source_giveaway.html).
    """

    defstruct "@type": "chatBoostSourceGiveaway",
              "@extra": nil,
              user_id: nil,
              gift_code: nil,
              giveaway_message_id: nil,
              is_unclaimed: nil
  end

  defmodule DeviceTokenApplePushVoIP do
    @moduledoc """
    A token for Apple Push Notification service VoIP notifications.

    | Name | Type | Description |
    |------|------| ------------|
    | device_token | string | Device token; may be empty to deregister a device. |
    | is_app_sandbox | bool | True, if App Sandbox is enabled. |
    | encrypt | bool | True, if push notifications must be additionally encrypted. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1device_token_apple_push_vo_i_p.html).
    """

    defstruct "@type": "deviceTokenApplePushVoIP", "@extra": nil, device_token: nil, is_app_sandbox: nil, encrypt: nil
  end

  defmodule MessageSendingStateFailed do
    @moduledoc """
    The message failed to be sent.

    | Name | Type | Description |
    |------|------| ------------|
    | error | error | The cause of the message sending failure. |
    | can_retry | bool | True, if the message can be re-sent. |
    | need_another_sender | bool | True, if the message can be re-sent only on behalf of a different sender. |
    | need_another_reply_quote | bool | True, if the message can be re-sent only if another quote is chosen in the message that is replied by the given message. |
    | need_drop_reply | bool | True, if the message can be re-sent only if the message to be replied is removed. This will be done automatically by resendMessages. |
    | retry_after | double | Time left before the message can be re-sent, in seconds. No update is sent when this field changes. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_sending_state_failed.html).
    """

    defstruct "@type": "messageSendingStateFailed",
              "@extra": nil,
              error: nil,
              can_retry: nil,
              need_another_sender: nil,
              need_another_reply_quote: nil,
              need_drop_reply: nil,
              retry_after: nil
  end

  defmodule ProxyTypeMtproto do
    @moduledoc """
    An MTProto proxy server.

    | Name | Type | Description |
    |------|------| ------------|
    | secret | string | The proxy's secret in hexadecimal encoding. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1proxy_type_mtproto.html).
    """

    defstruct "@type": "proxyTypeMtproto", "@extra": nil, secret: nil
  end

  defmodule ChatStatisticsInteractionInfo do
    @moduledoc """
    Contains statistics about interactions with a message sent in the chat or a story sent by the chat.

    | Name | Type | Description |
    |------|------| ------------|
    | object_type | ChatStatisticsObjectType | Type of the object. |
    | view_count | number | Number of times the object was viewed. |
    | forward_count | number | Number of times the object was forwarded. |
    | reaction_count | number | Number of times reactions were added to the object. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_statistics_interaction_info.html).
    """

    defstruct "@type": "chatStatisticsInteractionInfo",
              "@extra": nil,
              object_type: nil,
              view_count: nil,
              forward_count: nil,
              reaction_count: nil
  end

  defmodule ChatEventForumTopicToggleIsHidden do
    @moduledoc """
    The General forum topic was hidden or unhidden.

    | Name | Type | Description |
    |------|------| ------------|
    | topic_info | forumTopicInfo | New information about the topic. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_forum_topic_toggle_is_hidden.html).
    """

    defstruct "@type": "chatEventForumTopicToggleIsHidden", "@extra": nil, topic_info: nil
  end

  defmodule InlineQueryResultVenue do
    @moduledoc """
    Represents information about a venue.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Unique identifier of the query result. |
    | venue | venue | Venue result. |
    | thumbnail | thumbnail | Result thumbnail in JPEG format; may be null. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_query_result_venue.html).
    """

    defstruct "@type": "inlineQueryResultVenue", "@extra": nil, id: nil, venue: nil, thumbnail: nil
  end

  defmodule PassportElementPhoneNumber do
    @moduledoc """
    A Telegram Passport element containing the user's phone number.

    | Name | Type | Description |
    |------|------| ------------|
    | phone_number | string | Phone number. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_phone_number.html).
    """

    defstruct "@type": "passportElementPhoneNumber", "@extra": nil, phone_number: nil
  end

  defmodule SuggestedActionCheckPassword do
    @moduledoc """
    Suggests the user to check whether they still remember their 2-step verification password.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1suggested_action_check_password.html).
    """

    defstruct "@type": "suggestedActionCheckPassword", "@extra": nil
  end

  defmodule MessageContactRegistered do
    @moduledoc """
    A contact has registered with Telegram.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_contact_registered.html).
    """

    defstruct "@type": "messageContactRegistered", "@extra": nil
  end

  defmodule TextEntityTypeBotCommand do
    @moduledoc """
    A bot command, beginning with "/".


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_bot_command.html).
    """

    defstruct "@type": "textEntityTypeBotCommand", "@extra": nil
  end

  defmodule EmailAddressAuthenticationCode do
    @moduledoc """
    An authentication code delivered to a user's email address.

    | Name | Type | Description |
    |------|------| ------------|
    | code | string | The code. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1email_address_authentication_code.html).
    """

    defstruct "@type": "emailAddressAuthenticationCode", "@extra": nil, code: nil
  end

  defmodule FileTypeAnimation do
    @moduledoc """
    The file is an animation.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_animation.html).
    """

    defstruct "@type": "fileTypeAnimation", "@extra": nil
  end

  defmodule StoryPrivacySettingsSelectedUsers do
    @moduledoc """
    The story can be viewed by certain specified users.

    | Name | Type | Description |
    |------|------| ------------|
    | user_ids | string | Identifiers of the users; always unknown and empty for non-owned stories. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1story_privacy_settings_selected_users.html).
    """

    defstruct "@type": "storyPrivacySettingsSelectedUsers", "@extra": nil, user_ids: nil
  end

  defmodule MessageChatChangePhoto do
    @moduledoc """
    An updated chat photo.

    | Name | Type | Description |
    |------|------| ------------|
    | photo | chatPhoto | New chat photo. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_chat_change_photo.html).
    """

    defstruct "@type": "messageChatChangePhoto", "@extra": nil, photo: nil
  end

  defmodule ChatStatisticsChannel do
    @moduledoc """
    A detailed statistics about a channel chat.

    | Name | Type | Description |
    |------|------| ------------|
    | period | dateRange | A period to which the statistics applies. |
    | member_count | statisticalValue | Number of members in the chat. |
    | mean_message_view_count | statisticalValue | Mean number of times the recently sent messages were viewed. |
    | mean_message_share_count | statisticalValue | Mean number of times the recently sent messages were shared. |
    | mean_message_reaction_count | statisticalValue | Mean number of times reactions were added to the recently sent messages. |
    | mean_story_view_count | statisticalValue | Mean number of times the recently sent stories were viewed. |
    | mean_story_share_count | statisticalValue | Mean number of times the recently sent stories were shared. |
    | mean_story_reaction_count | statisticalValue | Mean number of times reactions were added to the recently sent stories. |
    | enabled_notifications_percentage | double | A percentage of users with enabled notifications for the chat; 0-100. |
    | member_count_graph | StatisticalGraph | A graph containing number of members in the chat. |
    | join_graph | StatisticalGraph | A graph containing number of members joined and left the chat. |
    | mute_graph | StatisticalGraph | A graph containing number of members muted and unmuted the chat. |
    | view_count_by_hour_graph | StatisticalGraph | A graph containing number of message views in a given hour in the last two weeks. |
    | view_count_by_source_graph | StatisticalGraph | A graph containing number of message views per source. |
    | join_by_source_graph | StatisticalGraph | A graph containing number of new member joins per source. |
    | language_graph | StatisticalGraph | A graph containing number of users viewed chat messages per language. |
    | message_interaction_graph | StatisticalGraph | A graph containing number of chat message views and shares. |
    | message_reaction_graph | StatisticalGraph | A graph containing number of reactions on messages. |
    | story_interaction_graph | StatisticalGraph | A graph containing number of story views and shares. |
    | story_reaction_graph | StatisticalGraph | A graph containing number of reactions on stories. |
    | instant_view_interaction_graph | StatisticalGraph | A graph containing number of views of associated with the chat instant views. |
    | recent_interactions | chatStatisticsInteractionInfo | Detailed statistics about number of views and shares of recently sent messages and stories. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_statistics_channel.html).
    """

    defstruct "@type": "chatStatisticsChannel",
              "@extra": nil,
              period: nil,
              member_count: nil,
              mean_message_view_count: nil,
              mean_message_share_count: nil,
              mean_message_reaction_count: nil,
              mean_story_view_count: nil,
              mean_story_share_count: nil,
              mean_story_reaction_count: nil,
              enabled_notifications_percentage: nil,
              member_count_graph: nil,
              join_graph: nil,
              mute_graph: nil,
              view_count_by_hour_graph: nil,
              view_count_by_source_graph: nil,
              join_by_source_graph: nil,
              language_graph: nil,
              message_interaction_graph: nil,
              message_reaction_graph: nil,
              story_interaction_graph: nil,
              story_reaction_graph: nil,
              instant_view_interaction_graph: nil,
              recent_interactions: nil
  end

  defmodule SessionTypeBrave do
    @moduledoc """
    The session is running on the Brave browser.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1session_type_brave.html).
    """

    defstruct "@type": "sessionTypeBrave", "@extra": nil
  end

  defmodule OptionValue do
    @moduledoc """
    This class is an abstract base class. Represents the value of an option.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_option_value.html).
    """

    defstruct "@type": "OptionValue", "@extra": nil
  end

  defmodule InputInvoice do
    @moduledoc """
    This class is an abstract base class. Describes an invoice to process.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_input_invoice.html).
    """

    defstruct "@type": "InputInvoice", "@extra": nil
  end

  defmodule AuthorizationStateWaitPassword do
    @moduledoc """
    The user has been authorized, but needs to enter a 2-step verification password to start using the application. Call checkAuthenticationPassword to provide the password, or requestAuthenticationPasswordRecovery to recover the password, or deleteAccount to delete the account after a week.

    | Name | Type | Description |
    |------|------| ------------|
    | password_hint | string | Hint for the password; may be empty. |
    | has_recovery_email_address | bool | True, if a recovery email address has been set up. |
    | has_passport_data | bool | True, if some Telegram Passport elements were saved. |
    | recovery_email_address_pattern | string | Pattern of the email address to which the recovery email was sent; empty until a recovery email has been sent. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authorization_state_wait_password.html).
    """

    defstruct "@type": "authorizationStateWaitPassword",
              "@extra": nil,
              password_hint: nil,
              has_recovery_email_address: nil,
              has_passport_data: nil,
              recovery_email_address_pattern: nil
  end

  defmodule PassportElementErrorSource do
    @moduledoc """
    This class is an abstract base class. Contains the description of an error in a Telegram Passport element.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_passport_element_error_source.html).
    """

    defstruct "@type": "PassportElementErrorSource", "@extra": nil
  end

  defmodule SecretChatStateReady do
    @moduledoc """
    The secret chat is ready to use.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1secret_chat_state_ready.html).
    """

    defstruct "@type": "secretChatStateReady", "@extra": nil
  end

  defmodule PremiumLimitTypeBioLength do
    @moduledoc """
    The maximum length of the user's bio.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_limit_type_bio_length.html).
    """

    defstruct "@type": "premiumLimitTypeBioLength", "@extra": nil
  end

  defmodule PassportElementInternalPassport do
    @moduledoc """
    A Telegram Passport element containing the user's internal passport.

    | Name | Type | Description |
    |------|------| ------------|
    | internal_passport | identityDocument | Internal passport. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_internal_passport.html).
    """

    defstruct "@type": "passportElementInternalPassport", "@extra": nil, internal_passport: nil
  end

  defmodule Animation do
    @moduledoc """
    Describes an animation file. The animation must be encoded in GIF or MPEG4 format.

    | Name | Type | Description |
    |------|------| ------------|
    | duration | number | Duration of the animation, in seconds; as defined by the sender. |
    | width | number | Width of the animation. |
    | height | number | Height of the animation. |
    | file_name | string | Original name of the file; as defined by the sender. |
    | mime_type | string | MIME type of the file, usually "image/gif" or "video/mp4". |
    | has_stickers | bool | True, if stickers were added to the animation. The list of corresponding sticker set can be received using getAttachedStickerSets. |
    | minithumbnail | minithumbnail | Animation minithumbnail; may be null. |
    | thumbnail | thumbnail | Animation thumbnail in JPEG or MPEG4 format; may be null. |
    | animation | file | File containing the animation. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1animation.html).
    """

    defstruct "@type": "animation",
              "@extra": nil,
              duration: nil,
              width: nil,
              height: nil,
              file_name: nil,
              mime_type: nil,
              has_stickers: nil,
              minithumbnail: nil,
              thumbnail: nil,
              animation: nil
  end

  defmodule MessageChatUpgradeFrom do
    @moduledoc """
    A supergroup has been created from a basic group.

    | Name | Type | Description |
    |------|------| ------------|
    | title | string | Title of the newly created supergroup. |
    | basic_group_id | string | The identifier of the original basic group. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_chat_upgrade_from.html).
    """

    defstruct "@type": "messageChatUpgradeFrom", "@extra": nil, title: nil, basic_group_id: nil
  end

  defmodule FileTypeNotificationSound do
    @moduledoc """
    The file is a notification sound.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_notification_sound.html).
    """

    defstruct "@type": "fileTypeNotificationSound", "@extra": nil
  end

  defmodule FirebaseAuthenticationSettingsAndroid do
    @moduledoc """
    Settings for Firebase Authentication in the official Android application.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1firebase_authentication_settings_android.html).
    """

    defstruct "@type": "firebaseAuthenticationSettingsAndroid", "@extra": nil
  end

  defmodule ChatActionBarReportSpam do
    @moduledoc """
    The chat can be reported as spam using the method reportChat with the reason reportReasonSpam. If the chat is a private chat with a user with an emoji status, then a notice about emoji status usage must be shown.

    | Name | Type | Description |
    |------|------| ------------|
    | can_unarchive | bool | If true, the chat was automatically archived and can be moved back to the main chat list using addChatToList simultaneously with setting chat notification settings to default using setChatNotificationSettings. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_bar_report_spam.html).
    """

    defstruct "@type": "chatActionBarReportSpam", "@extra": nil, can_unarchive: nil
  end

  defmodule Emojis do
    @moduledoc """
    Represents a list of emoji.

    | Name | Type | Description |
    |------|------| ------------|
    | emojis | string | List of emojis. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1emojis.html).
    """

    defstruct "@type": "emojis", "@extra": nil, emojis: nil
  end

  defmodule CanTransferOwnershipResultOk do
    @moduledoc """
    The session can be used.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1can_transfer_ownership_result_ok.html).
    """

    defstruct "@type": "canTransferOwnershipResultOk", "@extra": nil
  end

  defmodule FileTypePhoto do
    @moduledoc """
    The file is a photo.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_photo.html).
    """

    defstruct "@type": "fileTypePhoto", "@extra": nil
  end

  defmodule SavedCredentials do
    @moduledoc """
    Contains information about saved payment credentials.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Unique identifier of the saved credentials. |
    | title | string | Title of the saved credentials. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1saved_credentials.html).
    """

    defstruct "@type": "savedCredentials", "@extra": nil, id: nil, title: nil
  end

  defmodule SuggestedActionUpgradePremium do
    @moduledoc """
    Suggests the user to upgrade the Premium subscription from monthly payments to annual payments.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1suggested_action_upgrade_premium.html).
    """

    defstruct "@type": "suggestedActionUpgradePremium", "@extra": nil
  end

  defmodule PassportElementErrorSourceSelfie do
    @moduledoc """
    The selfie with the document contains an error. The error will be considered resolved when the file with the selfie changes.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_error_source_selfie.html).
    """

    defstruct "@type": "passportElementErrorSourceSelfie", "@extra": nil
  end

  defmodule InternalLinkTypeUserToken do
    @moduledoc """
    The link is a link to a user by a temporary token. Call searchUserByToken with the given token to process the link.

    | Name | Type | Description |
    |------|------| ------------|
    | token | string | The token. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_user_token.html).
    """

    defstruct "@type": "internalLinkTypeUserToken", "@extra": nil, token: nil
  end

  defmodule InlineQueryResultGame do
    @moduledoc """
    Represents information about a game.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Unique identifier of the query result. |
    | game | game | Game result. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_query_result_game.html).
    """

    defstruct "@type": "inlineQueryResultGame", "@extra": nil, id: nil, game: nil
  end

  defmodule NotificationSound do
    @moduledoc """
    Describes a notification sound in MP3 format.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Unique identifier of the notification sound. |
    | duration | number | Duration of the sound, in seconds. |
    | date | number | Point in time (Unix timestamp) when the sound was created. |
    | title | string | Title of the notification sound. |
    | data | string | Arbitrary data, defined while the sound was uploaded. |
    | sound | file | File containing the sound. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1notification_sound.html).
    """

    defstruct "@type": "notificationSound",
              "@extra": nil,
              id: nil,
              duration: nil,
              date: nil,
              title: nil,
              data: nil,
              sound: nil
  end

  defmodule BotWriteAccessAllowReason do
    @moduledoc """
    This class is an abstract base class. Describes a reason why a bot was allowed to write messages to the current user.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_bot_write_access_allow_reason.html).
    """

    defstruct "@type": "BotWriteAccessAllowReason", "@extra": nil
  end

  defmodule UserPrivacySettingShowProfilePhoto do
    @moduledoc """
    A privacy setting for managing whether the user's profile photo is visible.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_privacy_setting_show_profile_photo.html).
    """

    defstruct "@type": "userPrivacySettingShowProfilePhoto", "@extra": nil
  end

  defmodule Venue do
    @moduledoc """
    Describes a venue.

    | Name | Type | Description |
    |------|------| ------------|
    | location | location | Venue location; as defined by the sender. |
    | title | string | Venue name; as defined by the sender. |
    | address | string | Venue address; as defined by the sender. |
    | provider | string | Provider of the venue database; as defined by the sender. Currently, only "foursquare" and "gplaces" (Google Places) need to be supported. |
    | id | string | Identifier of the venue in the provider database; as defined by the sender. |
    | type | string | Type of the venue in the provider database; as defined by the sender. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1venue.html).
    """

    defstruct "@type": "venue",
              "@extra": nil,
              location: nil,
              title: nil,
              address: nil,
              provider: nil,
              id: nil,
              type: nil
  end

  defmodule InlineQueryResultPhoto do
    @moduledoc """
    Represents a photo.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Unique identifier of the query result. |
    | photo | photo | Photo. |
    | title | string | Title of the result, if known. |
    | description | string | A short description of the result, if known. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_query_result_photo.html).
    """

    defstruct "@type": "inlineQueryResultPhoto", "@extra": nil, id: nil, photo: nil, title: nil, description: nil
  end

  defmodule InternalLinkTypeChatFolderInvite do
    @moduledoc """
    The link is an invite link to a chat folder. Call checkChatFolderInviteLink with the given invite link to process the link.

    | Name | Type | Description |
    |------|------| ------------|
    | invite_link | string | Internal representation of the invite link. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_chat_folder_invite.html).
    """

    defstruct "@type": "internalLinkTypeChatFolderInvite", "@extra": nil, invite_link: nil
  end

  defmodule UpdateScopeNotificationSettings do
    @moduledoc """
    Notification settings for some type of chats were updated.

    | Name | Type | Description |
    |------|------| ------------|
    | scope | NotificationSettingsScope | Types of chats for which notification settings were updated. |
    | notification_settings | scopeNotificationSettings | The new notification settings. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_scope_notification_settings.html).
    """

    defstruct "@type": "updateScopeNotificationSettings", "@extra": nil, scope: nil, notification_settings: nil
  end

  defmodule ReportReasonCustom do
    @moduledoc """
    A custom reason provided by the user.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1report_reason_custom.html).
    """

    defstruct "@type": "reportReasonCustom", "@extra": nil
  end

  defmodule InputStoryContentPhoto do
    @moduledoc """
    A photo story.

    | Name | Type | Description |
    |------|------| ------------|
    | photo | InputFile | Photo to send. The photo must be at most 10 MB in size. The photo size must be 1080x1920. |
    | added_sticker_file_ids | number | File identifiers of the stickers added to the photo, if applicable. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_story_content_photo.html).
    """

    defstruct "@type": "inputStoryContentPhoto", "@extra": nil, photo: nil, added_sticker_file_ids: nil
  end

  defmodule ForumTopicInfo do
    @moduledoc """
    Contains basic information about a forum topic.

    | Name | Type | Description |
    |------|------| ------------|
    | message_thread_id | string | Message thread identifier of the topic. |
    | name | string | Name of the topic. |
    | icon | forumTopicIcon | Icon of the topic. |
    | creation_date | number | Point in time (Unix timestamp) when the topic was created. |
    | creator_id | MessageSender | Identifier of the creator of the topic. |
    | is_general | bool | True, if the topic is the General topic list. |
    | is_outgoing | bool | True, if the topic was created by the current user. |
    | is_closed | bool | True, if the topic is closed. |
    | is_hidden | bool | True, if the topic is hidden above the topic list and closed; for General topic only. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1forum_topic_info.html).
    """

    defstruct "@type": "forumTopicInfo",
              "@extra": nil,
              message_thread_id: nil,
              name: nil,
              icon: nil,
              creation_date: nil,
              creator_id: nil,
              is_general: nil,
              is_outgoing: nil,
              is_closed: nil,
              is_hidden: nil
  end

  defmodule ProfileAccentColors do
    @moduledoc """
    Contains information about supported accent colors for user profile photo background in RGB format.

    | Name | Type | Description |
    |------|------| ------------|
    | palette_colors | number | The list of 1-2 colors in RGB format, describing the colors, as expected to be shown in the color palette settings. |
    | background_colors | number | The list of 1-2 colors in RGB format, describing the colors, as expected to be used for the profile photo background. |
    | story_colors | number | The list of 2 colors in RGB format, describing the colors of the gradient to be used for the unread active story indicator around profile photo. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1profile_accent_colors.html).
    """

    defstruct "@type": "profileAccentColors",
              "@extra": nil,
              palette_colors: nil,
              background_colors: nil,
              story_colors: nil
  end

  defmodule PageBlockCaption do
    @moduledoc """
    Contains a caption of an instant view web page block, consisting of a text and a trailing credit.

    | Name | Type | Description |
    |------|------| ------------|
    | text | RichText | Content of the caption. |
    | credit | RichText | Block credit (like HTML tag <cite>). |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_caption.html).
    """

    defstruct "@type": "pageBlockCaption", "@extra": nil, text: nil, credit: nil
  end

  defmodule RichTextAnchor do
    @moduledoc """
    An anchor.

    | Name | Type | Description |
    |------|------| ------------|
    | name | string | Anchor name. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1rich_text_anchor.html).
    """

    defstruct "@type": "richTextAnchor", "@extra": nil, name: nil
  end

  defmodule MessageVideoNote do
    @moduledoc """
    A video note message.

    | Name | Type | Description |
    |------|------| ------------|
    | video_note | videoNote | The video note description. |
    | is_viewed | bool | True, if at least one of the recipients has viewed the video note. |
    | is_secret | bool | True, if the video note thumbnail must be blurred and the video note must be shown only while tapped. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_video_note.html).
    """

    defstruct "@type": "messageVideoNote", "@extra": nil, video_note: nil, is_viewed: nil, is_secret: nil
  end

  defmodule StorePaymentPurposeGiftedPremium do
    @moduledoc """
    The user gifting Telegram Premium to another user.

    | Name | Type | Description |
    |------|------| ------------|
    | user_id | string | Identifier of the user to which Premium was gifted. |
    | currency | string | ISO 4217 currency code of the payment currency. |
    | amount | string | Paid amount, in the smallest units of the currency. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1store_payment_purpose_gifted_premium.html).
    """

    defstruct "@type": "storePaymentPurposeGiftedPremium", "@extra": nil, user_id: nil, currency: nil, amount: nil
  end

  defmodule SessionTypeEdge do
    @moduledoc """
    The session is running on the Edge browser.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1session_type_edge.html).
    """

    defstruct "@type": "sessionTypeEdge", "@extra": nil
  end

  defmodule InputPassportElementErrorSourceTranslationFiles do
    @moduledoc """
    The translation of the document contains an error. The error is considered resolved when the list of files changes.

    | Name | Type | Description |
    |------|------| ------------|
    | file_hashes | bytes | Current hashes of all files with the translation. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_passport_element_error_source_translation_files.html).
    """

    defstruct "@type": "inputPassportElementErrorSourceTranslationFiles", "@extra": nil, file_hashes: nil
  end

  defmodule ChatBoostSlot do
    @moduledoc """
    Describes a slot for chat boost.

    | Name | Type | Description |
    |------|------| ------------|
    | slot_id | number | Unique identifier of the slot. |
    | currently_boosted_chat_id | string | Identifier of the currently boosted chat; 0 if none. |
    | start_date | number | Point in time (Unix timestamp) when the chat was boosted; 0 if none. |
    | expiration_date | number | Point in time (Unix timestamp) when the boost will expire. |
    | cooldown_until_date | number | Point in time (Unix timestamp) after which the boost can be used for another chat. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_boost_slot.html).
    """

    defstruct "@type": "chatBoostSlot",
              "@extra": nil,
              slot_id: nil,
              currently_boosted_chat_id: nil,
              start_date: nil,
              expiration_date: nil,
              cooldown_until_date: nil
  end

  defmodule InlineKeyboardButtonTypeBuy do
    @moduledoc """
    A button to buy something. This button must be in the first column and row of the keyboard and can be attached only to a message with content of the type messageInvoice.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_keyboard_button_type_buy.html).
    """

    defstruct "@type": "inlineKeyboardButtonTypeBuy", "@extra": nil
  end

  defmodule MessageCall do
    @moduledoc """
    A message with information about an ended call.

    | Name | Type | Description |
    |------|------| ------------|
    | is_video | bool | True, if the call was a video call. |
    | discard_reason | CallDiscardReason | Reason why the call was discarded. |
    | duration | number | Call duration, in seconds. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_call.html).
    """

    defstruct "@type": "messageCall", "@extra": nil, is_video: nil, discard_reason: nil, duration: nil
  end

  defmodule StickerTypeRegular do
    @moduledoc """
    The sticker is a regular sticker.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sticker_type_regular.html).
    """

    defstruct "@type": "stickerTypeRegular", "@extra": nil
  end

  defmodule Chat do
    @moduledoc """
    A chat. (Can be a private chat, basic group, supergroup, or secret chat.)

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Chat unique identifier. |
    | type | ChatType | Type of the chat. |
    | title | string | Chat title. |
    | photo | chatPhotoInfo | Chat photo; may be null. |
    | accent_color_id | number | Identifier of the accent color for message sender name, and backgrounds of chat photo, reply header, and link preview. |
    | background_custom_emoji_id | string | Identifier of a custom emoji to be shown on the reply header background in replies to messages sent by the chat; 0 if none. |
    | permissions | chatPermissions | Actions that non-administrator chat members are allowed to take in the chat. |
    | last_message | message | Last message in the chat; may be null if none or unknown. |
    | positions | chatPosition | Positions of the chat in chat lists. |
    | message_sender_id | MessageSender | Identifier of a user or chat that is selected to send messages in the chat; may be null if the user can't change message sender. |
    | block_list | BlockList | Block list to which the chat is added; may be null if none. |
    | has_protected_content | bool | True, if chat content can't be saved locally, forwarded, or copied. |
    | is_translatable | bool | True, if translation of all messages in the chat must be suggested to the user. |
    | is_marked_as_unread | bool | True, if the chat is marked as unread. |
    | view_as_topics | bool | True, if the chat is a forum supergroup that must be shown in the "View as topics" mode. |
    | has_scheduled_messages | bool | True, if the chat has scheduled messages. |
    | can_be_deleted_only_for_self | bool | True, if the chat messages can be deleted only for the current user while other users will continue to see the messages. |
    | can_be_deleted_for_all_users | bool | True, if the chat messages can be deleted for all users. |
    | can_be_reported | bool | True, if the chat can be reported to Telegram moderators through reportChat or reportChatPhoto. |
    | default_disable_notification | bool | Default value of the disable_notification parameter, used when a message is sent to the chat. |
    | unread_count | number | Number of unread messages in the chat. |
    | last_read_inbox_message_id | string | Identifier of the last read incoming message. |
    | last_read_outbox_message_id | string | Identifier of the last read outgoing message. |
    | unread_mention_count | number | Number of unread messages with a mention/reply in the chat. |
    | unread_reaction_count | number | Number of messages with unread reactions in the chat. |
    | notification_settings | chatNotificationSettings | Notification settings for the chat. |
    | available_reactions | ChatAvailableReactions | Types of reaction, available in the chat. |
    | message_auto_delete_time | number | Current message auto-delete or self-destruct timer setting for the chat, in seconds; 0 if disabled. Self-destruct timer in secret chats starts after the message or its content is viewed. Auto-delete timer in other chats starts from the send date. |
    | background | chatBackground | Background set for the chat; may be null if none. |
    | theme_name | string | If non-empty, name of a theme, set for the chat. |
    | action_bar | ChatActionBar | Information about actions which must be possible to do through the chat action bar; may be null if none. |
    | video_chat | videoChat | Information about video chat of the chat. |
    | pending_join_requests | chatJoinRequestsInfo | Information about pending join requests; may be null if none. |
    | reply_markup_message_id | string | Identifier of the message from which reply markup needs to be used; 0 if there is no default custom reply markup in the chat. |
    | draft_message | draftMessage | A draft of a message in the chat; may be null if none. |
    | client_data | string | Application-specific data associated with the chat. (For example, the chat scroll position or local chat notification settings can be stored here.) Persistent if the message database is used. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat.html).
    """

    defstruct "@type": "chat",
              "@extra": nil,
              id: nil,
              type: nil,
              title: nil,
              photo: nil,
              accent_color_id: nil,
              background_custom_emoji_id: nil,
              permissions: nil,
              last_message: nil,
              positions: nil,
              message_sender_id: nil,
              block_list: nil,
              has_protected_content: nil,
              is_translatable: nil,
              is_marked_as_unread: nil,
              view_as_topics: nil,
              has_scheduled_messages: nil,
              can_be_deleted_only_for_self: nil,
              can_be_deleted_for_all_users: nil,
              can_be_reported: nil,
              default_disable_notification: nil,
              unread_count: nil,
              last_read_inbox_message_id: nil,
              last_read_outbox_message_id: nil,
              unread_mention_count: nil,
              unread_reaction_count: nil,
              notification_settings: nil,
              available_reactions: nil,
              message_auto_delete_time: nil,
              background: nil,
              theme_name: nil,
              action_bar: nil,
              video_chat: nil,
              pending_join_requests: nil,
              reply_markup_message_id: nil,
              draft_message: nil,
              client_data: nil
  end

  defmodule PassportElementErrorSourceDataField do
    @moduledoc """
    One of the data fields contains an error. The error will be considered resolved when the value of the field changes.

    | Name | Type | Description |
    |------|------| ------------|
    | field_name | string | Field name. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_error_source_data_field.html).
    """

    defstruct "@type": "passportElementErrorSourceDataField", "@extra": nil, field_name: nil
  end

  defmodule TargetChatInternalLink do
    @moduledoc """
    The chat needs to be open with the provided internal link.

    | Name | Type | Description |
    |------|------| ------------|
    | link | InternalLinkType | An internal link pointing to the chat. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1target_chat_internal_link.html).
    """

    defstruct "@type": "targetChatInternalLink", "@extra": nil, link: nil
  end

  defmodule CallProblemSilentLocal do
    @moduledoc """
    The user couldn't hear the other side.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_problem_silent_local.html).
    """

    defstruct "@type": "callProblemSilentLocal", "@extra": nil
  end

  defmodule InputMessagePhoto do
    @moduledoc """
    A photo message.

    | Name | Type | Description |
    |------|------| ------------|
    | photo | InputFile | Photo to send. The photo must be at most 10 MB in size. The photo's width and height must not exceed 10000 in total. Width and height ratio must be at most 20. |
    | thumbnail | inputThumbnail | Photo thumbnail to be sent; pass null to skip thumbnail uploading. The thumbnail is sent to the other party only in secret chats. |
    | added_sticker_file_ids | number | File identifiers of the stickers added to the photo, if applicable. |
    | width | number | Photo width. |
    | height | number | Photo height. |
    | caption | formattedText | Photo caption; pass null to use an empty caption; 0-getOption("message_caption_length_max") characters. |
    | self_destruct_type | MessageSelfDestructType | Photo self-destruct type; pass null if none; private chats only. |
    | has_spoiler | bool | True, if the photo preview must be covered by a spoiler animation; not supported in secret chats. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_photo.html).
    """

    defstruct "@type": "inputMessagePhoto",
              "@extra": nil,
              photo: nil,
              thumbnail: nil,
              added_sticker_file_ids: nil,
              width: nil,
              height: nil,
              caption: nil,
              self_destruct_type: nil,
              has_spoiler: nil
  end

  defmodule StoryVideo do
    @moduledoc """
    Describes a video file sent in a story.

    | Name | Type | Description |
    |------|------| ------------|
    | duration | double | Duration of the video, in seconds. |
    | width | number | Video width. |
    | height | number | Video height. |
    | has_stickers | bool | True, if stickers were added to the video. The list of corresponding sticker sets can be received using getAttachedStickerSets. |
    | is_animation | bool | True, if the video has no sound. |
    | minithumbnail | minithumbnail | Video minithumbnail; may be null. |
    | thumbnail | thumbnail | Video thumbnail in JPEG or MPEG4 format; may be null. |
    | preload_prefix_size | number | Size of file prefix, which is supposed to be preloaded, in bytes. |
    | video | file | File containing the video. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1story_video.html).
    """

    defstruct "@type": "storyVideo",
              "@extra": nil,
              duration: nil,
              width: nil,
              height: nil,
              has_stickers: nil,
              is_animation: nil,
              minithumbnail: nil,
              thumbnail: nil,
              preload_prefix_size: nil,
              video: nil
  end

  defmodule AddedReaction do
    @moduledoc """
    Represents a reaction applied to a message.

    | Name | Type | Description |
    |------|------| ------------|
    | type | ReactionType | Type of the reaction. |
    | sender_id | MessageSender | Identifier of the chat member, applied the reaction. |
    | is_outgoing | bool | True, if the reaction was added by the current user. |
    | date | number | Point in time (Unix timestamp) when the reaction was added. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1added_reaction.html).
    """

    defstruct "@type": "addedReaction", "@extra": nil, type: nil, sender_id: nil, is_outgoing: nil, date: nil
  end

  defmodule UpdateServiceNotification do
    @moduledoc """
    A service notification from the server was received. Upon receiving this the application must show a popup with the content of the notification.

    | Name | Type | Description |
    |------|------| ------------|
    | type | string | Notification type. If type begins with "AUTH_KEY_DROP_", then two buttons "Cancel" and "Log out" must be shown under notification; if user presses the second, all local data must be destroyed using Destroy method. |
    | content | MessageContent | Notification content. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_service_notification.html).
    """

    defstruct "@type": "updateServiceNotification", "@extra": nil, type: nil, content: nil
  end

  defmodule TextEntityTypePreCode do
    @moduledoc """
    Text that must be formatted as if inside pre, and code HTML tags.

    | Name | Type | Description |
    |------|------| ------------|
    | language | string | Programming language of the code; as defined by the sender. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_pre_code.html).
    """

    defstruct "@type": "textEntityTypePreCode", "@extra": nil, language: nil
  end

  defmodule NotificationGroupTypeMessages do
    @moduledoc """
    A group containing notifications of type notificationTypeNewMessage and notificationTypeNewPushMessage with ordinary unread messages.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1notification_group_type_messages.html).
    """

    defstruct "@type": "notificationGroupTypeMessages", "@extra": nil
  end

  defmodule ChatEventDescriptionChanged do
    @moduledoc """
    The chat description was changed.

    | Name | Type | Description |
    |------|------| ------------|
    | old_description | string | Previous chat description. |
    | new_description | string | New chat description. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_description_changed.html).
    """

    defstruct "@type": "chatEventDescriptionChanged", "@extra": nil, old_description: nil, new_description: nil
  end

  defmodule SearchMessagesFilterFailedToSend do
    @moduledoc """
    Returns only failed to send messages. This filter can be used only if the message database is used.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_failed_to_send.html).
    """

    defstruct "@type": "searchMessagesFilterFailedToSend", "@extra": nil
  end

  defmodule FileTypeVideoNote do
    @moduledoc """
    The file is a video note.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_video_note.html).
    """

    defstruct "@type": "fileTypeVideoNote", "@extra": nil
  end

  defmodule CanTransferOwnershipResultPasswordNeeded do
    @moduledoc """
    The 2-step verification needs to be enabled first.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1can_transfer_ownership_result_password_needed.html).
    """

    defstruct "@type": "canTransferOwnershipResultPasswordNeeded", "@extra": nil
  end

  defmodule SuggestedActionConvertToBroadcastGroup do
    @moduledoc """
    Suggests the user to convert specified supergroup to a broadcast group.

    | Name | Type | Description |
    |------|------| ------------|
    | supergroup_id | string | Supergroup identifier. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1suggested_action_convert_to_broadcast_group.html).
    """

    defstruct "@type": "suggestedActionConvertToBroadcastGroup", "@extra": nil, supergroup_id: nil
  end

  defmodule Stickers do
    @moduledoc """
    Represents a list of stickers.

    | Name | Type | Description |
    |------|------| ------------|
    | stickers | sticker | List of stickers. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1stickers.html).
    """

    defstruct "@type": "stickers", "@extra": nil, stickers: nil
  end

  defmodule ChatEventSlowModeDelayChanged do
    @moduledoc """
    The slow_mode_delay setting of a supergroup was changed.

    | Name | Type | Description |
    |------|------| ------------|
    | old_slow_mode_delay | number | Previous value of slow_mode_delay, in seconds. |
    | new_slow_mode_delay | number | New value of slow_mode_delay, in seconds. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_slow_mode_delay_changed.html).
    """

    defstruct "@type": "chatEventSlowModeDelayChanged",
              "@extra": nil,
              old_slow_mode_delay: nil,
              new_slow_mode_delay: nil
  end

  defmodule RichTextBold do
    @moduledoc """
    A bold rich text.

    | Name | Type | Description |
    |------|------| ------------|
    | text | RichText | Text. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1rich_text_bold.html).
    """

    defstruct "@type": "richTextBold", "@extra": nil, text: nil
  end

  defmodule InviteLinkChatTypeBasicGroup do
    @moduledoc """
    The link is an invite link for a basic group.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1invite_link_chat_type_basic_group.html).
    """

    defstruct "@type": "inviteLinkChatTypeBasicGroup", "@extra": nil
  end

  defmodule RecommendedChatFolders do
    @moduledoc """
    Contains a list of recommended chat folders.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_folders | recommendedChatFolder | List of recommended chat folders. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1recommended_chat_folders.html).
    """

    defstruct "@type": "recommendedChatFolders", "@extra": nil, chat_folders: nil
  end

  defmodule SuggestedActionSubscribeToAnnualPremium do
    @moduledoc """
    Suggests the user to subscribe to the Premium subscription with annual payments.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1suggested_action_subscribe_to_annual_premium.html).
    """

    defstruct "@type": "suggestedActionSubscribeToAnnualPremium", "@extra": nil
  end

  defmodule ConnectedWebsite do
    @moduledoc """
    Contains information about one website the current user is logged in with Telegram.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Website identifier. |
    | domain_name | string | The domain name of the website. |
    | bot_user_id | string | User identifier of a bot linked with the website. |
    | browser | string | The version of a browser used to log in. |
    | platform | string | Operating system the browser is running on. |
    | log_in_date | number | Point in time (Unix timestamp) when the user was logged in. |
    | last_active_date | number | Point in time (Unix timestamp) when obtained authorization was last used. |
    | ip_address | string | IP address from which the user was logged in, in human-readable format. |
    | location | string | Human-readable description of a country and a region from which the user was logged in, based on the IP address. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1connected_website.html).
    """

    defstruct "@type": "connectedWebsite",
              "@extra": nil,
              id: nil,
              domain_name: nil,
              bot_user_id: nil,
              browser: nil,
              platform: nil,
              log_in_date: nil,
              last_active_date: nil,
              ip_address: nil,
              location: nil
  end

  defmodule UpdateFileGenerationStop do
    @moduledoc """
    File generation is no longer needed.

    | Name | Type | Description |
    |------|------| ------------|
    | generation_id | string | Unique identifier for the generation process. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_file_generation_stop.html).
    """

    defstruct "@type": "updateFileGenerationStop", "@extra": nil, generation_id: nil
  end

  defmodule SearchMessagesFilter do
    @moduledoc """
    This class is an abstract base class. Represents a filter for message search results.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_search_messages_filter.html).
    """

    defstruct "@type": "SearchMessagesFilter", "@extra": nil
  end

  defmodule InternalLinkTypeChangePhoneNumber do
    @moduledoc """
    The link is a link to the change phone number section of the app.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_change_phone_number.html).
    """

    defstruct "@type": "internalLinkTypeChangePhoneNumber", "@extra": nil
  end

  defmodule ChatSource do
    @moduledoc """
    This class is an abstract base class. Describes a reason why an external chat is shown in a chat list.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_chat_source.html).
    """

    defstruct "@type": "ChatSource", "@extra": nil
  end

  defmodule UpdateMessageSendFailed do
    @moduledoc """
    A message failed to send. Be aware that some messages being sent can be irrecoverably deleted, in which case updateDeleteMessages will be received instead of this update.

    | Name | Type | Description |
    |------|------| ------------|
    | message | message | The failed to send message. |
    | old_message_id | string | The previous temporary message identifier. |
    | error | error | The cause of the message sending failure. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_message_send_failed.html).
    """

    defstruct "@type": "updateMessageSendFailed", "@extra": nil, message: nil, old_message_id: nil, error: nil
  end

  defmodule ChatMembersFilter do
    @moduledoc """
    This class is an abstract base class. Specifies the kind of chat members to return in searchChatMembers.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_chat_members_filter.html).
    """

    defstruct "@type": "ChatMembersFilter", "@extra": nil
  end

  defmodule PremiumLimitTypePinnedArchivedChatCount do
    @moduledoc """
    The maximum number of pinned chats in the archive chat list.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_limit_type_pinned_archived_chat_count.html).
    """

    defstruct "@type": "premiumLimitTypePinnedArchivedChatCount", "@extra": nil
  end

  defmodule StickerType do
    @moduledoc """
    This class is an abstract base class. Describes type of a sticker.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_sticker_type.html).
    """

    defstruct "@type": "StickerType", "@extra": nil
  end

  defmodule MessageContact do
    @moduledoc """
    A message with a user contact.

    | Name | Type | Description |
    |------|------| ------------|
    | contact | contact | The contact description. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_contact.html).
    """

    defstruct "@type": "messageContact", "@extra": nil, contact: nil
  end

  defmodule Thumbnail do
    @moduledoc """
    Represents a thumbnail.

    | Name | Type | Description |
    |------|------| ------------|
    | format | ThumbnailFormat | Thumbnail format. |
    | width | number | Thumbnail width. |
    | height | number | Thumbnail height. |
    | file | file | The thumbnail. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1thumbnail.html).
    """

    defstruct "@type": "thumbnail", "@extra": nil, format: nil, width: nil, height: nil, file: nil
  end

  defmodule PremiumStatePaymentOption do
    @moduledoc """
    Describes an option for buying or upgrading Telegram Premium for self.

    | Name | Type | Description |
    |------|------| ------------|
    | payment_option | premiumPaymentOption | Information about the payment option. |
    | is_current | bool | True, if this is the currently used Telegram Premium subscription option. |
    | is_upgrade | bool | True, if the payment option can be used to upgrade the existing Telegram Premium subscription. |
    | last_transaction_id | string | Identifier of the last in-store transaction for the currently used option. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_state_payment_option.html).
    """

    defstruct "@type": "premiumStatePaymentOption",
              "@extra": nil,
              payment_option: nil,
              is_current: nil,
              is_upgrade: nil,
              last_transaction_id: nil
  end

  defmodule PremiumFeatureImprovedDownloadSpeed do
    @moduledoc """
    Improved download speed.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_feature_improved_download_speed.html).
    """

    defstruct "@type": "premiumFeatureImprovedDownloadSpeed", "@extra": nil
  end

  defmodule UpdateChatAction do
    @moduledoc """
    A message sender activity in the chat has changed.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |
    | message_thread_id | string | If not 0, a message thread identifier in which the action was performed. |
    | sender_id | MessageSender | Identifier of a message sender performing the action. |
    | action | ChatAction | The action. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_action.html).
    """

    defstruct "@type": "updateChatAction",
              "@extra": nil,
              chat_id: nil,
              message_thread_id: nil,
              sender_id: nil,
              action: nil
  end

  defmodule AuthenticationCodeTypeTelegramMessage do
    @moduledoc """
    An authentication code is delivered via a private Telegram message, which can be viewed from another active session.

    | Name | Type | Description |
    |------|------| ------------|
    | length | number | Length of the code. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authentication_code_type_telegram_message.html).
    """

    defstruct "@type": "authenticationCodeTypeTelegramMessage", "@extra": nil, length: nil
  end

  defmodule MessageSelfDestructTypeImmediately do
    @moduledoc """
    The message can be opened only once and will be self-destructed once closed.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_self_destruct_type_immediately.html).
    """

    defstruct "@type": "messageSelfDestructTypeImmediately", "@extra": nil
  end

  defmodule PassportAuthorizationForm do
    @moduledoc """
    Contains information about a Telegram Passport authorization form that was requested.

    | Name | Type | Description |
    |------|------| ------------|
    | id | number | Unique identifier of the authorization form. |
    | required_elements | passportRequiredElement | Telegram Passport elements that must be provided to complete the form. |
    | privacy_policy_url | string | URL for the privacy policy of the service; may be empty. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_authorization_form.html).
    """

    defstruct "@type": "passportAuthorizationForm",
              "@extra": nil,
              id: nil,
              required_elements: nil,
              privacy_policy_url: nil
  end

  defmodule MessageChatUpgradeTo do
    @moduledoc """
    A basic group was upgraded to a supergroup and was deactivated as the result.

    | Name | Type | Description |
    |------|------| ------------|
    | supergroup_id | string | Identifier of the supergroup to which the basic group was upgraded. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_chat_upgrade_to.html).
    """

    defstruct "@type": "messageChatUpgradeTo", "@extra": nil, supergroup_id: nil
  end

  defmodule SearchMessagesFilterVideoNote do
    @moduledoc """
    Returns only video note messages.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_video_note.html).
    """

    defstruct "@type": "searchMessagesFilterVideoNote", "@extra": nil
  end

  defmodule RichTextUrl do
    @moduledoc """
    A rich text URL link.

    | Name | Type | Description |
    |------|------| ------------|
    | text | RichText | Text. |
    | url | string | URL. |
    | is_cached | bool | True, if the URL has cached instant view server-side. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1rich_text_url.html).
    """

    defstruct "@type": "richTextUrl", "@extra": nil, text: nil, url: nil, is_cached: nil
  end

  defmodule Date do
    @moduledoc """
    Represents a date according to the Gregorian calendar.

    | Name | Type | Description |
    |------|------| ------------|
    | day | number | Day of the month; 1-31. |
    | month | number | Month; 1-12. |
    | year | number | Year; 1-9999. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1date.html).
    """

    defstruct "@type": "date", "@extra": nil, day: nil, month: nil, year: nil
  end

  defmodule DiceStickers do
    @moduledoc """
    This class is an abstract base class. Contains animated stickers which must be used for dice animation rendering.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_dice_stickers.html).
    """

    defstruct "@type": "DiceStickers", "@extra": nil
  end

  defmodule ChatEventForumTopicDeleted do
    @moduledoc """
    A forum topic was deleted.

    | Name | Type | Description |
    |------|------| ------------|
    | topic_info | forumTopicInfo | Information about the topic. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_forum_topic_deleted.html).
    """

    defstruct "@type": "chatEventForumTopicDeleted", "@extra": nil, topic_info: nil
  end

  defmodule AutoDownloadSettings do
    @moduledoc """
    Contains auto-download settings.

    | Name | Type | Description |
    |------|------| ------------|
    | is_auto_download_enabled | bool | True, if the auto-download is enabled. |
    | max_photo_file_size | number | The maximum size of a photo file to be auto-downloaded, in bytes. |
    | max_video_file_size | string | The maximum size of a video file to be auto-downloaded, in bytes. |
    | max_other_file_size | string | The maximum size of other file types to be auto-downloaded, in bytes. |
    | video_upload_bitrate | number | The maximum suggested bitrate for uploaded videos, in kbit/s. |
    | preload_large_videos | bool | True, if the beginning of video files needs to be preloaded for instant playback. |
    | preload_next_audio | bool | True, if the next audio track needs to be preloaded while the user is listening to an audio file. |
    | preload_stories | bool | True, if stories needs to be preloaded. |
    | use_less_data_for_calls | bool | True, if "use less data for calls" option needs to be enabled. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1auto_download_settings.html).
    """

    defstruct "@type": "autoDownloadSettings",
              "@extra": nil,
              is_auto_download_enabled: nil,
              max_photo_file_size: nil,
              max_video_file_size: nil,
              max_other_file_size: nil,
              video_upload_bitrate: nil,
              preload_large_videos: nil,
              preload_next_audio: nil,
              preload_stories: nil,
              use_less_data_for_calls: nil
  end

  defmodule MessageChatJoinByLink do
    @moduledoc """
    A new member joined the chat via an invite link.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_chat_join_by_link.html).
    """

    defstruct "@type": "messageChatJoinByLink", "@extra": nil
  end

  defmodule StoryStatistics do
    @moduledoc """
    A detailed statistics about a story.

    | Name | Type | Description |
    |------|------| ------------|
    | story_interaction_graph | StatisticalGraph | A graph containing number of story views and shares. |
    | story_reaction_graph | StatisticalGraph | A graph containing number of story reactions. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1story_statistics.html).
    """

    defstruct "@type": "storyStatistics", "@extra": nil, story_interaction_graph: nil, story_reaction_graph: nil
  end

  defmodule ChatEventMemberLeft do
    @moduledoc """
    A member left the chat.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_member_left.html).
    """

    defstruct "@type": "chatEventMemberLeft", "@extra": nil
  end

  defmodule CanTransferOwnershipResultPasswordTooFresh do
    @moduledoc """
    The 2-step verification was enabled recently, user needs to wait.

    | Name | Type | Description |
    |------|------| ------------|
    | retry_after | number | Time left before the session can be used to transfer ownership of a chat, in seconds. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1can_transfer_ownership_result_password_too_fresh.html).
    """

    defstruct "@type": "canTransferOwnershipResultPasswordTooFresh", "@extra": nil, retry_after: nil
  end

  defmodule FileTypeAudio do
    @moduledoc """
    The file is an audio file.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_audio.html).
    """

    defstruct "@type": "fileTypeAudio", "@extra": nil
  end

  defmodule FoundFileDownloads do
    @moduledoc """
    Contains a list of downloaded files, found by a search.

    | Name | Type | Description |
    |------|------| ------------|
    | total_counts | downloadedFileCounts | Total number of suitable files, ignoring offset. |
    | files | fileDownload | The list of files. |
    | next_offset | string | The offset for the next request. If empty, then there are no more results. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1found_file_downloads.html).
    """

    defstruct "@type": "foundFileDownloads", "@extra": nil, total_counts: nil, files: nil, next_offset: nil
  end

  defmodule MessageUnsupported do
    @moduledoc """
    A message content that is not supported in the current TDLib version.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_unsupported.html).
    """

    defstruct "@type": "messageUnsupported", "@extra": nil
  end

  defmodule PassportElementErrorSourceUnspecified do
    @moduledoc """
    The element contains an error in an unspecified place. The error will be considered resolved when new data is added.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_error_source_unspecified.html).
    """

    defstruct "@type": "passportElementErrorSourceUnspecified", "@extra": nil
  end

  defmodule BotCommandScopeChatMember do
    @moduledoc """
    A scope covering a member of a chat.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |
    | user_id | string | User identifier. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1bot_command_scope_chat_member.html).
    """

    defstruct "@type": "botCommandScopeChatMember", "@extra": nil, chat_id: nil, user_id: nil
  end

  defmodule Poll do
    @moduledoc """
    Describes a poll.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Unique poll identifier. |
    | question | string | Poll question; 1-300 characters. |
    | options | pollOption | List of poll answer options. |
    | total_voter_count | number | Total number of voters, participating in the poll. |
    | recent_voter_ids | MessageSender | Identifiers of recent voters, if the poll is non-anonymous. |
    | is_anonymous | bool | True, if the poll is anonymous. |
    | type | PollType | Type of the poll. |
    | open_period | number | Amount of time the poll will be active after creation, in seconds. |
    | close_date | number | Point in time (Unix timestamp) when the poll will automatically be closed. |
    | is_closed | bool | True, if the poll is closed. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1poll.html).
    """

    defstruct "@type": "poll",
              "@extra": nil,
              id: nil,
              question: nil,
              options: nil,
              total_voter_count: nil,
              recent_voter_ids: nil,
              is_anonymous: nil,
              type: nil,
              open_period: nil,
              close_date: nil,
              is_closed: nil
  end

  defmodule PassportElementTypePersonalDetails do
    @moduledoc """
    A Telegram Passport element containing the user's personal details.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_type_personal_details.html).
    """

    defstruct "@type": "passportElementTypePersonalDetails", "@extra": nil
  end

  defmodule InputPassportElementDriverLicense do
    @moduledoc """
    A Telegram Passport element to be saved containing the user's driver license.

    | Name | Type | Description |
    |------|------| ------------|
    | driver_license | inputIdentityDocument | The driver license to be saved. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_passport_element_driver_license.html).
    """

    defstruct "@type": "inputPassportElementDriverLicense", "@extra": nil, driver_license: nil
  end

  defmodule InputCredentialsGooglePay do
    @moduledoc """
    Applies if a user enters new credentials using Google Pay.

    | Name | Type | Description |
    |------|------| ------------|
    | data | string | JSON-encoded data with the credential identifier. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_credentials_google_pay.html).
    """

    defstruct "@type": "inputCredentialsGooglePay", "@extra": nil, data: nil
  end

  defmodule PageBlockRelatedArticle do
    @moduledoc """
    Contains information about a related article.

    | Name | Type | Description |
    |------|------| ------------|
    | url | string | Related article URL. |
    | title | string | Article title; may be empty. |
    | description | string | Article description; may be empty. |
    | photo | photo | Article photo; may be null. |
    | author | string | Article author; may be empty. |
    | publish_date | number | Point in time (Unix timestamp) when the article was published; 0 if unknown. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_related_article.html).
    """

    defstruct "@type": "pageBlockRelatedArticle",
              "@extra": nil,
              url: nil,
              title: nil,
              description: nil,
              photo: nil,
              author: nil,
              publish_date: nil
  end

  defmodule SessionTypeUnknown do
    @moduledoc """
    The session is running on an unknown type of device.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1session_type_unknown.html).
    """

    defstruct "@type": "sessionTypeUnknown", "@extra": nil
  end

  defmodule PageBlockBlockQuote do
    @moduledoc """
    A block quote.

    | Name | Type | Description |
    |------|------| ------------|
    | text | RichText | Quote text. |
    | credit | RichText | Quote credit. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_block_quote.html).
    """

    defstruct "@type": "pageBlockBlockQuote", "@extra": nil, text: nil, credit: nil
  end

  defmodule SuggestedActionEnableArchiveAndMuteNewChats do
    @moduledoc """
    Suggests the user to enable archive_and_mute_new_chats_from_unknown_users setting in archiveChatListSettings.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1suggested_action_enable_archive_and_mute_new_chats.html).
    """

    defstruct "@type": "suggestedActionEnableArchiveAndMuteNewChats", "@extra": nil
  end

  defmodule ReportReasonViolence do
    @moduledoc """
    The chat promotes violence.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1report_reason_violence.html).
    """

    defstruct "@type": "reportReasonViolence", "@extra": nil
  end

  defmodule HttpUrl do
    @moduledoc """
    Contains an HTTP URL.

    | Name | Type | Description |
    |------|------| ------------|
    | url | string | The URL. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1http_url.html).
    """

    defstruct "@type": "httpUrl", "@extra": nil, url: nil
  end

  defmodule MessageOrigin do
    @moduledoc """
    This class is an abstract base class. Contains information about the origin of a message.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_message_origin.html).
    """

    defstruct "@type": "MessageOrigin", "@extra": nil
  end

  defmodule BotCommandScopeChatAdministrators do
    @moduledoc """
    A scope covering all administrators of a chat.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1bot_command_scope_chat_administrators.html).
    """

    defstruct "@type": "botCommandScopeChatAdministrators", "@extra": nil, chat_id: nil
  end

  defmodule InlineKeyboardButtonTypeUrl do
    @moduledoc """
    A button that opens a specified URL.

    | Name | Type | Description |
    |------|------| ------------|
    | url | string | HTTP or tg:// URL to open. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_keyboard_button_type_url.html).
    """

    defstruct "@type": "inlineKeyboardButtonTypeUrl", "@extra": nil, url: nil
  end

  defmodule Update do
    @moduledoc """
    This class is an abstract base class. Contains notifications about data changes.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_update.html).
    """

    defstruct "@type": "Update", "@extra": nil
  end

  defmodule CheckStickerSetNameResultOk do
    @moduledoc """
    The name can be set.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1check_sticker_set_name_result_ok.html).
    """

    defstruct "@type": "checkStickerSetNameResultOk", "@extra": nil
  end

  defmodule PassportElementErrorSourceFrontSide do
    @moduledoc """
    The front side of the document contains an error. The error will be considered resolved when the file with the front side changes.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_error_source_front_side.html).
    """

    defstruct "@type": "passportElementErrorSourceFrontSide", "@extra": nil
  end

  defmodule CallProtocol do
    @moduledoc """
    Specifies the supported call protocols.

    | Name | Type | Description |
    |------|------| ------------|
    | udp_p2p | bool | True, if UDP peer-to-peer connections are supported. |
    | udp_reflector | bool | True, if connection through UDP reflectors is supported. |
    | min_layer | number | The minimum supported API layer; use 65. |
    | max_layer | number | The maximum supported API layer; use 92. |
    | library_versions | string | List of supported tgcalls versions. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_protocol.html).
    """

    defstruct "@type": "callProtocol",
              "@extra": nil,
              udp_p2p: nil,
              udp_reflector: nil,
              min_layer: nil,
              max_layer: nil,
              library_versions: nil
  end

  defmodule ChatEventInviteLinkRevoked do
    @moduledoc """
    A chat invite link was revoked.

    | Name | Type | Description |
    |------|------| ------------|
    | invite_link | chatInviteLink | The invite link. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_invite_link_revoked.html).
    """

    defstruct "@type": "chatEventInviteLinkRevoked", "@extra": nil, invite_link: nil
  end

  defmodule EncryptedCredentials do
    @moduledoc """
    Contains encrypted Telegram Passport data credentials.

    | Name | Type | Description |
    |------|------| ------------|
    | data | bytes | The encrypted credentials. |
    | hash | bytes | The decrypted data hash. |
    | secret | bytes | Secret for data decryption, encrypted with the service's public key. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1encrypted_credentials.html).
    """

    defstruct "@type": "encryptedCredentials", "@extra": nil, data: nil, hash: nil, secret: nil
  end

  defmodule ChatActionUploadingDocument do
    @moduledoc """
    The user is uploading a document.

    | Name | Type | Description |
    |------|------| ------------|
    | progress | number | Upload progress, as a percentage. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_uploading_document.html).
    """

    defstruct "@type": "chatActionUploadingDocument", "@extra": nil, progress: nil
  end

  defmodule PageBlockPreformatted do
    @moduledoc """
    A preformatted text paragraph.

    | Name | Type | Description |
    |------|------| ------------|
    | text | RichText | Paragraph text. |
    | language | string | Programming language for which the text needs to be formatted. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_preformatted.html).
    """

    defstruct "@type": "pageBlockPreformatted", "@extra": nil, text: nil, language: nil
  end

  defmodule RichTextPlain do
    @moduledoc """
    A plain text.

    | Name | Type | Description |
    |------|------| ------------|
    | text | string | Text. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1rich_text_plain.html).
    """

    defstruct "@type": "richTextPlain", "@extra": nil, text: nil
  end

  defmodule AuthorizationStateLoggingOut do
    @moduledoc """
    The user is currently logging out.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authorization_state_logging_out.html).
    """

    defstruct "@type": "authorizationStateLoggingOut", "@extra": nil
  end

  defmodule SessionTypeFirefox do
    @moduledoc """
    The session is running on the Firefox browser.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1session_type_firefox.html).
    """

    defstruct "@type": "sessionTypeFirefox", "@extra": nil
  end

  defmodule UserStatusOffline do
    @moduledoc """
    The user is offline.

    | Name | Type | Description |
    |------|------| ------------|
    | was_online | number | Point in time (Unix timestamp) when the user was last online. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_status_offline.html).
    """

    defstruct "@type": "userStatusOffline", "@extra": nil, was_online: nil
  end

  defmodule StatisticalValue do
    @moduledoc """
    A value with information about its recent changes.

    | Name | Type | Description |
    |------|------| ------------|
    | value | double | The current value. |
    | previous_value | double | The value for the previous day. |
    | growth_rate_percentage | double | The growth rate of the value, as a percentage. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1statistical_value.html).
    """

    defstruct "@type": "statisticalValue", "@extra": nil, value: nil, previous_value: nil, growth_rate_percentage: nil
  end

  defmodule UpdateMessageMentionRead do
    @moduledoc """
    A message with an unread mention was read.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |
    | message_id | string | Message identifier. |
    | unread_mention_count | number | The new number of unread mention messages left in the chat. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_message_mention_read.html).
    """

    defstruct "@type": "updateMessageMentionRead",
              "@extra": nil,
              chat_id: nil,
              message_id: nil,
              unread_mention_count: nil
  end

  defmodule MessageSticker do
    @moduledoc """
    A sticker message.

    | Name | Type | Description |
    |------|------| ------------|
    | sticker | sticker | The sticker description. |
    | is_premium | bool | True, if premium animation of the sticker must be played. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_sticker.html).
    """

    defstruct "@type": "messageSticker", "@extra": nil, sticker: nil, is_premium: nil
  end

  defmodule MessageStory do
    @moduledoc """
    A message with a forwarded story.

    | Name | Type | Description |
    |------|------| ------------|
    | story_sender_chat_id | string | Identifier of the chat that posted the story. |
    | story_id | number | Story identifier. |
    | via_mention | bool | True, if the story was automatically forwarded because of a mention of the user. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_story.html).
    """

    defstruct "@type": "messageStory", "@extra": nil, story_sender_chat_id: nil, story_id: nil, via_mention: nil
  end

  defmodule Chats do
    @moduledoc """
    Represents a list of chats.

    | Name | Type | Description |
    |------|------| ------------|
    | total_count | number | Approximate total number of chats found. |
    | chat_ids | string | List of chat identifiers. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chats.html).
    """

    defstruct "@type": "chats", "@extra": nil, total_count: nil, chat_ids: nil
  end

  defmodule MessageSuggestProfilePhoto do
    @moduledoc """
    A profile photo was suggested to a user in a private chat.

    | Name | Type | Description |
    |------|------| ------------|
    | photo | chatPhoto | The suggested chat photo. Use the method setProfilePhoto with inputChatPhotoPrevious to apply the photo. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_suggest_profile_photo.html).
    """

    defstruct "@type": "messageSuggestProfilePhoto", "@extra": nil, photo: nil
  end

  defmodule MessageReplyInfo do
    @moduledoc """
    Contains information about replies to a message.

    | Name | Type | Description |
    |------|------| ------------|
    | reply_count | number | Number of times the message was directly or indirectly replied. |
    | recent_replier_ids | MessageSender | Identifiers of at most 3 recent repliers to the message; available in channels with a discussion supergroup. The users and chats are expected to be inaccessible: only their photo and name will be available. |
    | last_read_inbox_message_id | string | Identifier of the last read incoming reply to the message. |
    | last_read_outbox_message_id | string | Identifier of the last read outgoing reply to the message. |
    | last_message_id | string | Identifier of the last reply to the message. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_reply_info.html).
    """

    defstruct "@type": "messageReplyInfo",
              "@extra": nil,
              reply_count: nil,
              recent_replier_ids: nil,
              last_read_inbox_message_id: nil,
              last_read_outbox_message_id: nil,
              last_message_id: nil
  end

  defmodule ChatStatisticsObjectTypeMessage do
    @moduledoc """
    Describes a message sent in the chat.

    | Name | Type | Description |
    |------|------| ------------|
    | message_id | string | Message identifier. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_statistics_object_type_message.html).
    """

    defstruct "@type": "chatStatisticsObjectTypeMessage", "@extra": nil, message_id: nil
  end

  defmodule GroupCallVideoQualityThumbnail do
    @moduledoc """
    The worst available video quality.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1group_call_video_quality_thumbnail.html).
    """

    defstruct "@type": "groupCallVideoQualityThumbnail", "@extra": nil
  end

  defmodule StorageStatisticsByChat do
    @moduledoc """
    Contains the storage usage statistics for a specific chat.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier; 0 if none. |
    | size | string | Total size of the files in the chat, in bytes. |
    | count | number | Total number of files in the chat. |
    | by_file_type | storageStatisticsByFileType | Statistics split by file types. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1storage_statistics_by_chat.html).
    """

    defstruct "@type": "storageStatisticsByChat", "@extra": nil, chat_id: nil, size: nil, count: nil, by_file_type: nil
  end

  defmodule DeviceTokenHuaweiPush do
    @moduledoc """
    A token for HUAWEI Push Service.

    | Name | Type | Description |
    |------|------| ------------|
    | token | string | Device registration token; may be empty to deregister a device. |
    | encrypt | bool | True, if push notifications must be additionally encrypted. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1device_token_huawei_push.html).
    """

    defstruct "@type": "deviceTokenHuaweiPush", "@extra": nil, token: nil, encrypt: nil
  end

  defmodule GroupCallParticipantVideoInfo do
    @moduledoc """
    Contains information about a group call participant's video channel.

    | Name | Type | Description |
    |------|------| ------------|
    | source_groups | groupCallVideoSourceGroup | List of synchronization source groups of the video. |
    | endpoint_id | string | Video channel endpoint identifier. |
    | is_paused | bool | True, if the video is paused. This flag needs to be ignored, if new video frames are received. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1group_call_participant_video_info.html).
    """

    defstruct "@type": "groupCallParticipantVideoInfo",
              "@extra": nil,
              source_groups: nil,
              endpoint_id: nil,
              is_paused: nil
  end

  defmodule AuthorizationState do
    @moduledoc """
    This class is an abstract base class. Represents the current authorization state of the TDLib client.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_authorization_state.html).
    """

    defstruct "@type": "AuthorizationState", "@extra": nil
  end

  defmodule CheckStickerSetNameResultNameInvalid do
    @moduledoc """
    The name is invalid.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1check_sticker_set_name_result_name_invalid.html).
    """

    defstruct "@type": "checkStickerSetNameResultNameInvalid", "@extra": nil
  end

  defmodule UpdateUnconfirmedSession do
    @moduledoc """
    The first unconfirmed session has changed.

    | Name | Type | Description |
    |------|------| ------------|
    | session | unconfirmedSession | The unconfirmed session; may be null if none. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_unconfirmed_session.html).
    """

    defstruct "@type": "updateUnconfirmedSession", "@extra": nil, session: nil
  end

  defmodule MessageSponsorType do
    @moduledoc """
    This class is an abstract base class. Describes type of a message sponsor.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_message_sponsor_type.html).
    """

    defstruct "@type": "MessageSponsorType", "@extra": nil
  end

  defmodule InternalLinkTypeMessageDraft do
    @moduledoc """
    The link contains a message draft text. A share screen needs to be shown to the user, then the chosen chat must be opened and the text is added to the input field.

    | Name | Type | Description |
    |------|------| ------------|
    | text | formattedText | Message draft text. |
    | contains_link | bool | True, if the first line of the text contains a link. If true, the input field needs to be focused and the text after the link must be selected. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_message_draft.html).
    """

    defstruct "@type": "internalLinkTypeMessageDraft", "@extra": nil, text: nil, contains_link: nil
  end

  defmodule MessageForumTopicIsClosedToggled do
    @moduledoc """
    A forum topic has been closed or opened.

    | Name | Type | Description |
    |------|------| ------------|
    | is_closed | bool | True, if the topic was closed; otherwise, the topic was reopened. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_forum_topic_is_closed_toggled.html).
    """

    defstruct "@type": "messageForumTopicIsClosedToggled", "@extra": nil, is_closed: nil
  end

  defmodule MessageVideo do
    @moduledoc """
    A video message.

    | Name | Type | Description |
    |------|------| ------------|
    | video | video | The video description. |
    | caption | formattedText | Video caption. |
    | has_spoiler | bool | True, if the video preview must be covered by a spoiler animation. |
    | is_secret | bool | True, if the video thumbnail must be blurred and the video must be shown only while tapped. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_video.html).
    """

    defstruct "@type": "messageVideo", "@extra": nil, video: nil, caption: nil, has_spoiler: nil, is_secret: nil
  end

  defmodule ChatEventHasAggressiveAntiSpamEnabledToggled do
    @moduledoc """
    The has_aggressive_anti_spam_enabled setting of a supergroup was toggled.

    | Name | Type | Description |
    |------|------| ------------|
    | has_aggressive_anti_spam_enabled | bool | New value of has_aggressive_anti_spam_enabled. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_has_aggressive_anti_spam_enabled_toggled.html).
    """

    defstruct "@type": "chatEventHasAggressiveAntiSpamEnabledToggled",
              "@extra": nil,
              has_aggressive_anti_spam_enabled: nil
  end

  defmodule ChatEventMessageEdited do
    @moduledoc """
    A message was edited.

    | Name | Type | Description |
    |------|------| ------------|
    | old_message | message | The original message before the edit. |
    | new_message | message | The message after it was edited. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_message_edited.html).
    """

    defstruct "@type": "chatEventMessageEdited", "@extra": nil, old_message: nil, new_message: nil
  end

  defmodule PageBlockParagraph do
    @moduledoc """
    A text paragraph.

    | Name | Type | Description |
    |------|------| ------------|
    | text | RichText | Paragraph text. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_paragraph.html).
    """

    defstruct "@type": "pageBlockParagraph", "@extra": nil, text: nil
  end

  defmodule InputPassportElementErrorSourceTranslationFile do
    @moduledoc """
    One of the files containing the translation of the document contains an error. The error is considered resolved when the file with the translation changes.

    | Name | Type | Description |
    |------|------| ------------|
    | file_hash | bytes | Current hash of the file containing the translation. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_passport_element_error_source_translation_file.html).
    """

    defstruct "@type": "inputPassportElementErrorSourceTranslationFile", "@extra": nil, file_hash: nil
  end

  defmodule UpdateStorySendSucceeded do
    @moduledoc """
    A story has been successfully sent.

    | Name | Type | Description |
    |------|------| ------------|
    | story | story | The sent story. |
    | old_story_id | number | The previous temporary story identifier. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_story_send_succeeded.html).
    """

    defstruct "@type": "updateStorySendSucceeded", "@extra": nil, story: nil, old_story_id: nil
  end

  defmodule UpdateMessageEdited do
    @moduledoc """
    A message was edited. Changes in the message content will come in a separate updateMessageContent.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |
    | message_id | string | Message identifier. |
    | edit_date | number | Point in time (Unix timestamp) when the message was edited. |
    | reply_markup | ReplyMarkup | New message reply markup; may be null. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_message_edited.html).
    """

    defstruct "@type": "updateMessageEdited",
              "@extra": nil,
              chat_id: nil,
              message_id: nil,
              edit_date: nil,
              reply_markup: nil
  end

  defmodule LanguagePackStringValueOrdinary do
    @moduledoc """
    An ordinary language pack string.

    | Name | Type | Description |
    |------|------| ------------|
    | value | string | String value. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1language_pack_string_value_ordinary.html).
    """

    defstruct "@type": "languagePackStringValueOrdinary", "@extra": nil, value: nil
  end

  defmodule UserPrivacySettingRules do
    @moduledoc """
    A list of privacy rules. Rules are matched in the specified order. The first matched rule defines the privacy setting for a given user. If no rule matches, the action is not allowed.

    | Name | Type | Description |
    |------|------| ------------|
    | rules | UserPrivacySettingRule | A list of rules. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_privacy_setting_rules.html).
    """

    defstruct "@type": "userPrivacySettingRules", "@extra": nil, rules: nil
  end

  defmodule ThumbnailFormatGif do
    @moduledoc """
    The thumbnail is in static GIF format. It will be used only for some bot inline query results.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1thumbnail_format_gif.html).
    """

    defstruct "@type": "thumbnailFormatGif", "@extra": nil
  end

  defmodule KeyboardButton do
    @moduledoc """
    Represents a single button in a bot keyboard.

    | Name | Type | Description |
    |------|------| ------------|
    | text | string | Text of the button. |
    | type | KeyboardButtonType | Type of the button. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1keyboard_button.html).
    """

    defstruct "@type": "keyboardButton", "@extra": nil, text: nil, type: nil
  end

  defmodule GroupCallVideoQualityMedium do
    @moduledoc """
    The medium video quality.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1group_call_video_quality_medium.html).
    """

    defstruct "@type": "groupCallVideoQualityMedium", "@extra": nil
  end

  defmodule UpdateNotification do
    @moduledoc """
    A notification was changed.

    | Name | Type | Description |
    |------|------| ------------|
    | notification_group_id | number | Unique notification group identifier. |
    | notification | notification | Changed notification. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_notification.html).
    """

    defstruct "@type": "updateNotification", "@extra": nil, notification_group_id: nil, notification: nil
  end

  defmodule UpdateBasicGroupFullInfo do
    @moduledoc """
    Some data in basicGroupFullInfo has been changed.

    | Name | Type | Description |
    |------|------| ------------|
    | basic_group_id | string | Identifier of a basic group. |
    | basic_group_full_info | basicGroupFullInfo | New full information about the group. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_basic_group_full_info.html).
    """

    defstruct "@type": "updateBasicGroupFullInfo", "@extra": nil, basic_group_id: nil, basic_group_full_info: nil
  end

  defmodule UserPrivacySettingShowPhoneNumber do
    @moduledoc """
    A privacy setting for managing whether the user's phone number is visible.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_privacy_setting_show_phone_number.html).
    """

    defstruct "@type": "userPrivacySettingShowPhoneNumber", "@extra": nil
  end

  defmodule PageBlockRelatedArticles do
    @moduledoc """
    Related articles.

    | Name | Type | Description |
    |------|------| ------------|
    | header | RichText | Block header. |
    | articles | pageBlockRelatedArticle | List of related articles. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_related_articles.html).
    """

    defstruct "@type": "pageBlockRelatedArticles", "@extra": nil, header: nil, articles: nil
  end

  defmodule ReplyMarkup do
    @moduledoc """
    This class is an abstract base class. Contains a description of a custom keyboard and actions that can be done with it to quickly reply to bots.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_reply_markup.html).
    """

    defstruct "@type": "ReplyMarkup", "@extra": nil
  end

  defmodule ChatEventLocationChanged do
    @moduledoc """
    The supergroup location was changed.

    | Name | Type | Description |
    |------|------| ------------|
    | old_location | chatLocation | Previous location; may be null. |
    | new_location | chatLocation | New location; may be null. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_location_changed.html).
    """

    defstruct "@type": "chatEventLocationChanged", "@extra": nil, old_location: nil, new_location: nil
  end

  defmodule UpdateChatBlockList do
    @moduledoc """
    A chat was blocked or unblocked.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |
    | block_list | BlockList | Block list to which the chat is added; may be null if none. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_block_list.html).
    """

    defstruct "@type": "updateChatBlockList", "@extra": nil, chat_id: nil, block_list: nil
  end

  defmodule StoryInteractionInfo do
    @moduledoc """
    Contains information about interactions with a story.

    | Name | Type | Description |
    |------|------| ------------|
    | view_count | number | Number of times the story was viewed. |
    | forward_count | number | Number of times the story was forwarded; 0 if none or unknown. |
    | reaction_count | number | Number of reactions added to the story; 0 if none or unknown. |
    | recent_viewer_user_ids | string | Identifiers of at most 3 recent viewers of the story. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1story_interaction_info.html).
    """

    defstruct "@type": "storyInteractionInfo",
              "@extra": nil,
              view_count: nil,
              forward_count: nil,
              reaction_count: nil,
              recent_viewer_user_ids: nil
  end

  defmodule AnimatedChatPhoto do
    @moduledoc """
    Animated variant of a chat photo in MPEG4 format.

    | Name | Type | Description |
    |------|------| ------------|
    | length | number | Animation width and height. |
    | file | file | Information about the animation file. |
    | main_frame_timestamp | double | Timestamp of the frame, used as a static chat photo. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1animated_chat_photo.html).
    """

    defstruct "@type": "animatedChatPhoto", "@extra": nil, length: nil, file: nil, main_frame_timestamp: nil
  end

  defmodule RichTextPhoneNumber do
    @moduledoc """
    A rich text phone number.

    | Name | Type | Description |
    |------|------| ------------|
    | text | RichText | Text. |
    | phone_number | string | Phone number. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1rich_text_phone_number.html).
    """

    defstruct "@type": "richTextPhoneNumber", "@extra": nil, text: nil, phone_number: nil
  end

  defmodule Stories do
    @moduledoc """
    Represents a list of stories.

    | Name | Type | Description |
    |------|------| ------------|
    | total_count | number | Approximate total number of stories found. |
    | stories | story | The list of stories. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1stories.html).
    """

    defstruct "@type": "stories", "@extra": nil, total_count: nil, stories: nil
  end

  defmodule GroupCallRecentSpeaker do
    @moduledoc """
    Describes a recently speaking participant in a group call.

    | Name | Type | Description |
    |------|------| ------------|
    | participant_id | MessageSender | Group call participant identifier. |
    | is_speaking | bool | True, is the user has spoken recently. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1group_call_recent_speaker.html).
    """

    defstruct "@type": "groupCallRecentSpeaker", "@extra": nil, participant_id: nil, is_speaking: nil
  end

  defmodule JsonObjectMember do
    @moduledoc """
    Represents one member of a JSON object.

    | Name | Type | Description |
    |------|------| ------------|
    | key | string | Member's key. |
    | value | JsonValue | Member's value. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1json_object_member.html).
    """

    defstruct "@type": "jsonObjectMember", "@extra": nil, key: nil, value: nil
  end

  defmodule DeepLinkInfo do
    @moduledoc """
    Contains information about a tg: deep link.

    | Name | Type | Description |
    |------|------| ------------|
    | text | formattedText | Text to be shown to the user. |
    | need_update_application | bool | True, if the user must be asked to update the application. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1deep_link_info.html).
    """

    defstruct "@type": "deepLinkInfo", "@extra": nil, text: nil, need_update_application: nil
  end

  defmodule StorePaymentPurpose do
    @moduledoc """
    This class is an abstract base class. Describes a purpose of an in-store payment.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_store_payment_purpose.html).
    """

    defstruct "@type": "StorePaymentPurpose", "@extra": nil
  end

  defmodule NetworkTypeNone do
    @moduledoc """
    The network is not available.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1network_type_none.html).
    """

    defstruct "@type": "networkTypeNone", "@extra": nil
  end

  defmodule BackgroundTypeFill do
    @moduledoc """
    A filled background.

    | Name | Type | Description |
    |------|------| ------------|
    | fill | BackgroundFill | The background fill. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1background_type_fill.html).
    """

    defstruct "@type": "backgroundTypeFill", "@extra": nil, fill: nil
  end

  defmodule PassportElementTypeBankStatement do
    @moduledoc """
    A Telegram Passport element containing the user's bank statement.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_type_bank_statement.html).
    """

    defstruct "@type": "passportElementTypeBankStatement", "@extra": nil
  end

  defmodule LanguagePackStringValue do
    @moduledoc """
    This class is an abstract base class. Represents the value of a string in a language pack.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_language_pack_string_value.html).
    """

    defstruct "@type": "LanguagePackStringValue", "@extra": nil
  end

  defmodule TMeUrl do
    @moduledoc """
    Represents a URL linking to an internal Telegram entity.

    | Name | Type | Description |
    |------|------| ------------|
    | url | string | URL. |
    | type | TMeUrlType | Type of the URL. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1t_me_url.html).
    """

    defstruct "@type": "tMeUrl", "@extra": nil, url: nil, type: nil
  end

  defmodule SupergroupMembersFilterBanned do
    @moduledoc """
    Returns users banned from the supergroup or channel; can be used only by administrators.

    | Name | Type | Description |
    |------|------| ------------|
    | query | string | Query to search for. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1supergroup_members_filter_banned.html).
    """

    defstruct "@type": "supergroupMembersFilterBanned", "@extra": nil, query: nil
  end

  defmodule Proxy do
    @moduledoc """
    Contains information about a proxy server.

    | Name | Type | Description |
    |------|------| ------------|
    | id | number | Unique identifier of the proxy. |
    | server | string | Proxy server domain or IP address. |
    | port | number | Proxy server port. |
    | last_used_date | number | Point in time (Unix timestamp) when the proxy was last used; 0 if never. |
    | is_enabled | bool | True, if the proxy is enabled now. |
    | type | ProxyType | Type of the proxy. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1proxy.html).
    """

    defstruct "@type": "proxy",
              "@extra": nil,
              id: nil,
              server: nil,
              port: nil,
              last_used_date: nil,
              is_enabled: nil,
              type: nil
  end

  defmodule UserPrivacySettingRuleAllowAll do
    @moduledoc """
    A rule to allow all users to do something.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_privacy_setting_rule_allow_all.html).
    """

    defstruct "@type": "userPrivacySettingRuleAllowAll", "@extra": nil
  end

  defmodule InputCredentialsApplePay do
    @moduledoc """
    Applies if a user enters new credentials using Apple Pay.

    | Name | Type | Description |
    |------|------| ------------|
    | data | string | JSON-encoded data with the credential identifier. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_credentials_apple_pay.html).
    """

    defstruct "@type": "inputCredentialsApplePay", "@extra": nil, data: nil
  end

  defmodule ChatActionRecordingVoiceNote do
    @moduledoc """
    The user is recording a voice note.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_recording_voice_note.html).
    """

    defstruct "@type": "chatActionRecordingVoiceNote", "@extra": nil
  end

  defmodule InputChatPhoto do
    @moduledoc """
    This class is an abstract base class. Describes a photo to be set as a user profile or chat photo.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_input_chat_photo.html).
    """

    defstruct "@type": "InputChatPhoto", "@extra": nil
  end

  defmodule ChatBoostSourcePremium do
    @moduledoc """
    A user with Telegram Premium subscription or gifted Telegram Premium boosted the chat.

    | Name | Type | Description |
    |------|------| ------------|
    | user_id | string | Identifier of the user. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_boost_source_premium.html).
    """

    defstruct "@type": "chatBoostSourcePremium", "@extra": nil, user_id: nil
  end

  defmodule StatisticalGraphData do
    @moduledoc """
    A graph data.

    | Name | Type | Description |
    |------|------| ------------|
    | json_data | string | Graph data in JSON format. |
    | zoom_token | string | If non-empty, a token which can be used to receive a zoomed in graph. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1statistical_graph_data.html).
    """

    defstruct "@type": "statisticalGraphData", "@extra": nil, json_data: nil, zoom_token: nil
  end

  defmodule MessageVideoChatEnded do
    @moduledoc """
    A message with information about an ended video chat.

    | Name | Type | Description |
    |------|------| ------------|
    | duration | number | Call duration, in seconds. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_video_chat_ended.html).
    """

    defstruct "@type": "messageVideoChatEnded", "@extra": nil, duration: nil
  end

  defmodule PremiumFeatureUniqueReactions do
    @moduledoc """
    Allowed to use more reactions.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_feature_unique_reactions.html).
    """

    defstruct "@type": "premiumFeatureUniqueReactions", "@extra": nil
  end

  defmodule FileTypeVideoStory do
    @moduledoc """
    The file is a video published as a story.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_video_story.html).
    """

    defstruct "@type": "fileTypeVideoStory", "@extra": nil
  end

  defmodule PremiumLimitTypeChatFolderInviteLinkCount do
    @moduledoc """
    The maximum number of invite links for a chat folder.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_limit_type_chat_folder_invite_link_count.html).
    """

    defstruct "@type": "premiumLimitTypeChatFolderInviteLinkCount", "@extra": nil
  end

  defmodule SessionTypeOpera do
    @moduledoc """
    The session is running on the Opera browser.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1session_type_opera.html).
    """

    defstruct "@type": "sessionTypeOpera", "@extra": nil
  end

  defmodule KeyboardButtonTypeRequestPoll do
    @moduledoc """
    A button that allows the user to create and send a poll when pressed; available only in private chats.

    | Name | Type | Description |
    |------|------| ------------|
    | force_regular | bool | If true, only regular polls must be allowed to create. |
    | force_quiz | bool | If true, only polls in quiz mode must be allowed to create. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1keyboard_button_type_request_poll.html).
    """

    defstruct "@type": "keyboardButtonTypeRequestPoll", "@extra": nil, force_regular: nil, force_quiz: nil
  end

  defmodule UpdateUserPrivacySettingRules do
    @moduledoc """
    Some privacy setting rules have been changed.

    | Name | Type | Description |
    |------|------| ------------|
    | setting | UserPrivacySetting | The privacy setting. |
    | rules | userPrivacySettingRules | New privacy rules. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_user_privacy_setting_rules.html).
    """

    defstruct "@type": "updateUserPrivacySettingRules", "@extra": nil, setting: nil, rules: nil
  end

  defmodule NetworkTypeMobile do
    @moduledoc """
    A mobile network.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1network_type_mobile.html).
    """

    defstruct "@type": "networkTypeMobile", "@extra": nil
  end

  defmodule MessageViewers do
    @moduledoc """
    Represents a list of message viewers.

    | Name | Type | Description |
    |------|------| ------------|
    | viewers | messageViewer | List of message viewers. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_viewers.html).
    """

    defstruct "@type": "messageViewers", "@extra": nil, viewers: nil
  end

  defmodule StoryViewers do
    @moduledoc """
    Represents a list of story viewers.

    | Name | Type | Description |
    |------|------| ------------|
    | total_count | number | Approximate total number of story viewers found. |
    | total_reaction_count | number | Approximate total number of reactions set by found story viewers. |
    | viewers | storyViewer | List of story viewers. |
    | next_offset | string | The offset for the next request. If empty, then there are no more results. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1story_viewers.html).
    """

    defstruct "@type": "storyViewers",
              "@extra": nil,
              total_count: nil,
              total_reaction_count: nil,
              viewers: nil,
              next_offset: nil
  end

  defmodule StoryList do
    @moduledoc """
    This class is an abstract base class. Describes a list of stories.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_story_list.html).
    """

    defstruct "@type": "StoryList", "@extra": nil
  end

  defmodule EmojiStatuses do
    @moduledoc """
    Contains a list of custom emoji identifiers, which can be set as emoji statuses.

    | Name | Type | Description |
    |------|------| ------------|
    | custom_emoji_ids | string | The list of custom emoji identifiers. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1emoji_statuses.html).
    """

    defstruct "@type": "emojiStatuses", "@extra": nil, custom_emoji_ids: nil
  end

  defmodule ChatMembersFilterMention do
    @moduledoc """
    Returns users which can be mentioned in the chat.

    | Name | Type | Description |
    |------|------| ------------|
    | message_thread_id | string | If non-zero, the identifier of the current message thread. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_members_filter_mention.html).
    """

    defstruct "@type": "chatMembersFilterMention", "@extra": nil, message_thread_id: nil
  end

  defmodule UpdatePoll do
    @moduledoc """
    A poll was updated; for bots only.

    | Name | Type | Description |
    |------|------| ------------|
    | poll | poll | New data about the poll. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_poll.html).
    """

    defstruct "@type": "updatePoll", "@extra": nil, poll: nil
  end

  defmodule TextEntityTypeHashtag do
    @moduledoc """
    A hashtag text, beginning with "#".


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_hashtag.html).
    """

    defstruct "@type": "textEntityTypeHashtag", "@extra": nil
  end

  defmodule MessageOriginChannel do
    @moduledoc """
    The message was originally a post in a channel.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Identifier of the channel chat to which the message was originally sent. |
    | message_id | string | Message identifier of the original message. |
    | author_signature | string | Original post author signature. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_origin_channel.html).
    """

    defstruct "@type": "messageOriginChannel", "@extra": nil, chat_id: nil, message_id: nil, author_signature: nil
  end

  defmodule PremiumFeatureDisabledAds do
    @moduledoc """
    Disabled ads.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_feature_disabled_ads.html).
    """

    defstruct "@type": "premiumFeatureDisabledAds", "@extra": nil
  end

  defmodule UpdateSupergroupFullInfo do
    @moduledoc """
    Some data in supergroupFullInfo has been changed.

    | Name | Type | Description |
    |------|------| ------------|
    | supergroup_id | string | Identifier of the supergroup or channel. |
    | supergroup_full_info | supergroupFullInfo | New full information about the supergroup. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_supergroup_full_info.html).
    """

    defstruct "@type": "updateSupergroupFullInfo", "@extra": nil, supergroup_id: nil, supergroup_full_info: nil
  end

  defmodule MessageStatistics do
    @moduledoc """
    A detailed statistics about a message.

    | Name | Type | Description |
    |------|------| ------------|
    | message_interaction_graph | StatisticalGraph | A graph containing number of message views and shares. |
    | message_reaction_graph | StatisticalGraph | A graph containing number of message reactions. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_statistics.html).
    """

    defstruct "@type": "messageStatistics", "@extra": nil, message_interaction_graph: nil, message_reaction_graph: nil
  end

  defmodule InternalLinkTypeAuthenticationCode do
    @moduledoc """
    The link contains an authentication code. Call checkAuthenticationCode with the code if the current authorization state is authorizationStateWaitCode.

    | Name | Type | Description |
    |------|------| ------------|
    | code | string | The authentication code. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_authentication_code.html).
    """

    defstruct "@type": "internalLinkTypeAuthenticationCode", "@extra": nil, code: nil
  end

  defmodule MaskPosition do
    @moduledoc """
    Position on a photo where a mask is placed.

    | Name | Type | Description |
    |------|------| ------------|
    | point | MaskPoint | Part of the face, relative to which the mask is placed. |
    | x_shift | double | Shift by X-axis measured in widths of the mask scaled to the face size, from left to right. (For example, -1.0 will place the mask just to the left of the default mask position.) |
    | y_shift | double | Shift by Y-axis measured in heights of the mask scaled to the face size, from top to bottom. (For example, 1.0 will place the mask just below the default mask position.) |
    | scale | double | Mask scaling coefficient. (For example, 2.0 means a doubled size.) |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1mask_position.html).
    """

    defstruct "@type": "maskPosition", "@extra": nil, point: nil, x_shift: nil, y_shift: nil, scale: nil
  end

  defmodule AutosaveSettingsScopeChat do
    @moduledoc """
    Autosave settings applied to a chat.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1autosave_settings_scope_chat.html).
    """

    defstruct "@type": "autosaveSettingsScopeChat", "@extra": nil, chat_id: nil
  end

  defmodule StickerSets do
    @moduledoc """
    Represents a list of sticker sets.

    | Name | Type | Description |
    |------|------| ------------|
    | total_count | number | Approximate total number of sticker sets found. |
    | sets | stickerSetInfo | List of sticker sets. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sticker_sets.html).
    """

    defstruct "@type": "stickerSets", "@extra": nil, total_count: nil, sets: nil
  end

  defmodule CanTransferOwnershipResult do
    @moduledoc """
    This class is an abstract base class. Represents result of checking whether the current session can be used to transfer a chat ownership to another user.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_can_transfer_ownership_result.html).
    """

    defstruct "@type": "CanTransferOwnershipResult", "@extra": nil
  end

  defmodule Supergroup do
    @moduledoc """
    Represents a supergroup or channel with zero or more members (subscribers in the case of channels). From the point of view of the system, a channel is a special kind of a supergroup: only administrators can post and see the list of members, and posts from all administrators use the name and photo of the channel instead of individual names and profile photos. Unlike supergroups, channels can have an unlimited number of subscribers.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Supergroup or channel identifier. |
    | usernames | usernames | Usernames of the supergroup or channel; may be null. |
    | date | number | Point in time (Unix timestamp) when the current user joined, or the point in time when the supergroup or channel was created, in case the user is not a member. |
    | status | ChatMemberStatus | Status of the current user in the supergroup or channel; custom title will always be empty. |
    | member_count | number | Number of members in the supergroup or channel; 0 if unknown. Currently, it is guaranteed to be known only if the supergroup or channel was received through getChatSimilarChats, getChatsToSendStories, getCreatedPublicChats, getGroupsInCommon, getInactiveSupergroupChats, getSuitableDiscussionChats, getUserPrivacySettingRules, getVideoChatAvailableParticipants, searchChatsNearby, searchPublicChats, or in chatFolderInviteLinkInfo.missing_chat_ids, or for public chats in which where sent messages and posted stories from storyPublicForwards, or for public chats in which where sent messages from getMessagePublicForwards response. |
    | has_linked_chat | bool | True, if the channel has a discussion group, or the supergroup is the designated discussion group for a channel. |
    | has_location | bool | True, if the supergroup is connected to a location, i.e. the supergroup is a location-based supergroup. |
    | sign_messages | bool | True, if messages sent to the channel need to contain information about the sender. This field is only applicable to channels. |
    | join_to_send_messages | bool | True, if users need to join the supergroup before they can send messages. Always true for channels and non-discussion supergroups. |
    | join_by_request | bool | True, if all users directly joining the supergroup need to be approved by supergroup administrators. Always false for channels and supergroups without username, location, or a linked chat. |
    | is_slow_mode_enabled | bool | True, if the slow mode is enabled in the supergroup. |
    | is_channel | bool | True, if the supergroup is a channel. |
    | is_broadcast_group | bool | True, if the supergroup is a broadcast group, i.e. only administrators can send messages and there is no limit on the number of members. |
    | is_forum | bool | True, if the supergroup is a forum with topics. |
    | is_verified | bool | True, if the supergroup or channel is verified. |
    | restriction_reason | string | If non-empty, contains a human-readable description of the reason why access to this supergroup or channel must be restricted. |
    | is_scam | bool | True, if many users reported this supergroup or channel as a scam. |
    | is_fake | bool | True, if many users reported this supergroup or channel as a fake account. |
    | has_active_stories | bool | True, if the channel has non-expired stories available to the current user. |
    | has_unread_active_stories | bool | True, if the channel has unread non-expired stories available to the current user. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1supergroup.html).
    """

    defstruct "@type": "supergroup",
              "@extra": nil,
              id: nil,
              usernames: nil,
              date: nil,
              status: nil,
              member_count: nil,
              has_linked_chat: nil,
              has_location: nil,
              sign_messages: nil,
              join_to_send_messages: nil,
              join_by_request: nil,
              is_slow_mode_enabled: nil,
              is_channel: nil,
              is_broadcast_group: nil,
              is_forum: nil,
              is_verified: nil,
              restriction_reason: nil,
              is_scam: nil,
              is_fake: nil,
              has_active_stories: nil,
              has_unread_active_stories: nil
  end

  defmodule UpdateAutosaveSettings do
    @moduledoc """
    Autosave settings for some type of chats were updated.

    | Name | Type | Description |
    |------|------| ------------|
    | scope | AutosaveSettingsScope | Type of chats for which autosave settings were updated. |
    | settings | scopeAutosaveSettings | The new autosave settings; may be null if the settings are reset to default. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_autosave_settings.html).
    """

    defstruct "@type": "updateAutosaveSettings", "@extra": nil, scope: nil, settings: nil
  end

  defmodule EmojiCategories do
    @moduledoc """
    Represents a list of emoji categories.

    | Name | Type | Description |
    |------|------| ------------|
    | categories | emojiCategory | List of categories. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1emoji_categories.html).
    """

    defstruct "@type": "emojiCategories", "@extra": nil, categories: nil
  end

  defmodule NetworkStatisticsEntry do
    @moduledoc """
    This class is an abstract base class. Contains statistics about network usage.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_network_statistics_entry.html).
    """

    defstruct "@type": "NetworkStatisticsEntry", "@extra": nil
  end

  defmodule PassportElement do
    @moduledoc """
    This class is an abstract base class. Contains information about a Telegram Passport element.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_passport_element.html).
    """

    defstruct "@type": "PassportElement", "@extra": nil
  end

  defmodule MessageReplyTo do
    @moduledoc """
    This class is an abstract base class. Contains information about the message or the story a message is replying to.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_message_reply_to.html).
    """

    defstruct "@type": "MessageReplyTo", "@extra": nil
  end

  defmodule AuthorizationStateClosed do
    @moduledoc """
    TDLib client is in its final state. All databases are closed and all resources are released. No other updates will be received after this. All queries will be responded to with error code 500. To continue working, one must create a new instance of the TDLib client.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authorization_state_closed.html).
    """

    defstruct "@type": "authorizationStateClosed", "@extra": nil
  end

  defmodule PremiumStoryFeatureCustomExpirationDuration do
    @moduledoc """
    The ability to set custom expiration duration for stories.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_story_feature_custom_expiration_duration.html).
    """

    defstruct "@type": "premiumStoryFeatureCustomExpirationDuration", "@extra": nil
  end

  defmodule PremiumFeatureIncreasedUploadFileSize do
    @moduledoc """
    Increased maximum upload file size.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_feature_increased_upload_file_size.html).
    """

    defstruct "@type": "premiumFeatureIncreasedUploadFileSize", "@extra": nil
  end

  defmodule Audio do
    @moduledoc """
    Describes an audio file. Audio is usually in MP3 or M4A format.

    | Name | Type | Description |
    |------|------| ------------|
    | duration | number | Duration of the audio, in seconds; as defined by the sender. |
    | title | string | Title of the audio; as defined by the sender. |
    | performer | string | Performer of the audio; as defined by the sender. |
    | file_name | string | Original name of the file; as defined by the sender. |
    | mime_type | string | The MIME type of the file; as defined by the sender. |
    | album_cover_minithumbnail | minithumbnail | The minithumbnail of the album cover; may be null. |
    | album_cover_thumbnail | thumbnail | The thumbnail of the album cover in JPEG format; as defined by the sender. The full size thumbnail is supposed to be extracted from the downloaded audio file; may be null. |
    | external_album_covers | thumbnail | Album cover variants to use if the downloaded audio file contains no album cover. Provided thumbnail dimensions are approximate. |
    | audio | file | File containing the audio. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1audio.html).
    """

    defstruct "@type": "audio",
              "@extra": nil,
              duration: nil,
              title: nil,
              performer: nil,
              file_name: nil,
              mime_type: nil,
              album_cover_minithumbnail: nil,
              album_cover_thumbnail: nil,
              external_album_covers: nil,
              audio: nil
  end

  defmodule PageBlockTitle do
    @moduledoc """
    The title of a page.

    | Name | Type | Description |
    |------|------| ------------|
    | title | RichText | Title. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_title.html).
    """

    defstruct "@type": "pageBlockTitle", "@extra": nil, title: nil
  end

  defmodule RichText do
    @moduledoc """
    This class is an abstract base class. Describes a text object inside an instant-view web page.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_rich_text.html).
    """

    defstruct "@type": "RichText", "@extra": nil
  end

  defmodule UpdateTermsOfService do
    @moduledoc """
    New terms of service must be accepted by the user. If the terms of service are declined, then the deleteAccount method must be called with the reason "Decline ToS update".

    | Name | Type | Description |
    |------|------| ------------|
    | terms_of_service_id | string | Identifier of the terms of service. |
    | terms_of_service | termsOfService | The new terms of service. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_terms_of_service.html).
    """

    defstruct "@type": "updateTermsOfService", "@extra": nil, terms_of_service_id: nil, terms_of_service: nil
  end

  defmodule ChatNotificationSettings do
    @moduledoc """
    Contains information about notification settings for a chat or a forum topic.

    | Name | Type | Description |
    |------|------| ------------|
    | use_default_mute_for | bool | If true, the value for the relevant type of chat or the forum chat is used instead of mute_for. |
    | mute_for | number | Time left before notifications will be unmuted, in seconds. |
    | use_default_sound | bool | If true, the value for the relevant type of chat or the forum chat is used instead of sound_id. |
    | sound_id | string | Identifier of the notification sound to be played for messages; 0 if sound is disabled. |
    | use_default_show_preview | bool | If true, the value for the relevant type of chat or the forum chat is used instead of show_preview. |
    | show_preview | bool | True, if message content must be displayed in notifications. |
    | use_default_mute_stories | bool | If true, the value for the relevant type of chat is used instead of mute_stories. |
    | mute_stories | bool | True, if story notifications are disabled for the chat. |
    | use_default_story_sound | bool | If true, the value for the relevant type of chat is used instead of story_sound_id. |
    | story_sound_id | string | Identifier of the notification sound to be played for stories; 0 if sound is disabled. |
    | use_default_show_story_sender | bool | If true, the value for the relevant type of chat is used instead of show_story_sender. |
    | show_story_sender | bool | True, if the sender of stories must be displayed in notifications. |
    | use_default_disable_pinned_message_notifications | bool | If true, the value for the relevant type of chat or the forum chat is used instead of disable_pinned_message_notifications. |
    | disable_pinned_message_notifications | bool | If true, notifications for incoming pinned messages will be created as for an ordinary unread message. |
    | use_default_disable_mention_notifications | bool | If true, the value for the relevant type of chat or the forum chat is used instead of disable_mention_notifications. |
    | disable_mention_notifications | bool | If true, notifications for messages with mentions will be created as for an ordinary unread message. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_notification_settings.html).
    """

    defstruct "@type": "chatNotificationSettings",
              "@extra": nil,
              use_default_mute_for: nil,
              mute_for: nil,
              use_default_sound: nil,
              sound_id: nil,
              use_default_show_preview: nil,
              show_preview: nil,
              use_default_mute_stories: nil,
              mute_stories: nil,
              use_default_story_sound: nil,
              story_sound_id: nil,
              use_default_show_story_sender: nil,
              show_story_sender: nil,
              use_default_disable_pinned_message_notifications: nil,
              disable_pinned_message_notifications: nil,
              use_default_disable_mention_notifications: nil,
              disable_mention_notifications: nil
  end

  defmodule MessageSchedulingStateSendWhenOnline do
    @moduledoc """
    The message will be sent when the other user is online. Applicable to private chats only and when the exact online status of the other user is known.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_scheduling_state_send_when_online.html).
    """

    defstruct "@type": "messageSchedulingStateSendWhenOnline", "@extra": nil
  end

  defmodule InlineKeyboardButtonTypeCallback do
    @moduledoc """
    A button that sends a callback query to a bot.

    | Name | Type | Description |
    |------|------| ------------|
    | data | bytes | Data to be sent to the bot via a callback query. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_keyboard_button_type_callback.html).
    """

    defstruct "@type": "inlineKeyboardButtonTypeCallback", "@extra": nil, data: nil
  end

  defmodule TextParseModeMarkdown do
    @moduledoc """
    The text uses Markdown-style formatting.

    | Name | Type | Description |
    |------|------| ------------|
    | version | number | Version of the parser: 0 or 1 - Telegram Bot API "Markdown" parse mode, 2 - Telegram Bot API "MarkdownV2" parse mode. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_parse_mode_markdown.html).
    """

    defstruct "@type": "textParseModeMarkdown", "@extra": nil, version: nil
  end

  defmodule ChatAvailableReactions do
    @moduledoc """
    This class is an abstract base class. Describes reactions available in the chat.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_chat_available_reactions.html).
    """

    defstruct "@type": "ChatAvailableReactions", "@extra": nil
  end

  defmodule StoryPublicForwardMessage do
    @moduledoc """
    Contains a public forward of a story as a message.

    | Name | Type | Description |
    |------|------| ------------|
    | message | message | Information about the message with the story. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1story_public_forward_message.html).
    """

    defstruct "@type": "storyPublicForwardMessage", "@extra": nil, message: nil
  end

  defmodule JsonValueBoolean do
    @moduledoc """
    Represents a boolean JSON value.

    | Name | Type | Description |
    |------|------| ------------|
    | value | bool | The value. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1json_value_boolean.html).
    """

    defstruct "@type": "jsonValueBoolean", "@extra": nil, value: nil
  end

  defmodule ChatFolderInviteLink do
    @moduledoc """
    Contains a chat folder invite link.

    | Name | Type | Description |
    |------|------| ------------|
    | invite_link | string | The chat folder invite link. |
    | name | string | Name of the link. |
    | chat_ids | string | Identifiers of chats, included in the link. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_folder_invite_link.html).
    """

    defstruct "@type": "chatFolderInviteLink", "@extra": nil, invite_link: nil, name: nil, chat_ids: nil
  end

  defmodule MessageSenderUser do
    @moduledoc """
    The message was sent by a known user.

    | Name | Type | Description |
    |------|------| ------------|
    | user_id | string | Identifier of the user that sent the message. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_sender_user.html).
    """

    defstruct "@type": "messageSenderUser", "@extra": nil, user_id: nil
  end

  defmodule MessageWebAppDataSent do
    @moduledoc """
    Data from a Web App has been sent to a bot.

    | Name | Type | Description |
    |------|------| ------------|
    | button_text | string | Text of the keyboardButtonTypeWebApp button, which opened the Web App. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_web_app_data_sent.html).
    """

    defstruct "@type": "messageWebAppDataSent", "@extra": nil, button_text: nil
  end

  defmodule MessageCustomServiceAction do
    @moduledoc """
    A non-standard action has happened in the chat.

    | Name | Type | Description |
    |------|------| ------------|
    | text | string | Message text to be shown in the chat. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_custom_service_action.html).
    """

    defstruct "@type": "messageCustomServiceAction", "@extra": nil, text: nil
  end

  defmodule PaymentProviderSmartGlocal do
    @moduledoc """
    Smart Glocal payment provider.

    | Name | Type | Description |
    |------|------| ------------|
    | public_token | string | Public payment token. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1payment_provider_smart_glocal.html).
    """

    defstruct "@type": "paymentProviderSmartGlocal", "@extra": nil, public_token: nil
  end

  defmodule FoundChatBoosts do
    @moduledoc """
    Contains a list of boosts applied to a chat.

    | Name | Type | Description |
    |------|------| ------------|
    | total_count | number | Total number of boosts applied to the chat. |
    | boosts | chatBoost | List of boosts. |
    | next_offset | string | The offset for the next request. If empty, then there are no more results. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1found_chat_boosts.html).
    """

    defstruct "@type": "foundChatBoosts", "@extra": nil, total_count: nil, boosts: nil, next_offset: nil
  end

  defmodule Call do
    @moduledoc """
    Describes a call.

    | Name | Type | Description |
    |------|------| ------------|
    | id | number | Call identifier, not persistent. |
    | user_id | string | User identifier of the other call participant. |
    | is_outgoing | bool | True, if the call is outgoing. |
    | is_video | bool | True, if the call is a video call. |
    | state | CallState | Call state. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call.html).
    """

    defstruct "@type": "call", "@extra": nil, id: nil, user_id: nil, is_outgoing: nil, is_video: nil, state: nil
  end

  defmodule PassportElementTypeEmailAddress do
    @moduledoc """
    A Telegram Passport element containing the user's email address.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_type_email_address.html).
    """

    defstruct "@type": "passportElementTypeEmailAddress", "@extra": nil
  end

  defmodule VoiceNote do
    @moduledoc """
    Describes a voice note. The voice note must be encoded with the Opus codec, and stored inside an OGG container. Voice notes can have only a single audio channel.

    | Name | Type | Description |
    |------|------| ------------|
    | duration | number | Duration of the voice note, in seconds; as defined by the sender. |
    | waveform | bytes | A waveform representation of the voice note in 5-bit format. |
    | mime_type | string | MIME type of the file; as defined by the sender. |
    | speech_recognition_result | SpeechRecognitionResult | Result of speech recognition in the voice note; may be null. |
    | voice | file | File containing the voice note. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1voice_note.html).
    """

    defstruct "@type": "voiceNote",
              "@extra": nil,
              duration: nil,
              waveform: nil,
              mime_type: nil,
              speech_recognition_result: nil,
              voice: nil
  end

  defmodule PassportElementError do
    @moduledoc """
    Contains the description of an error in a Telegram Passport element.

    | Name | Type | Description |
    |------|------| ------------|
    | type | PassportElementType | Type of the Telegram Passport element which has the error. |
    | message | string | Error message. |
    | source | PassportElementErrorSource | Error source. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_error.html).
    """

    defstruct "@type": "passportElementError", "@extra": nil, type: nil, message: nil, source: nil
  end

  defmodule SpeechRecognitionResultPending do
    @moduledoc """
    The speech recognition is ongoing.

    | Name | Type | Description |
    |------|------| ------------|
    | partial_text | string | Partially recognized text. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1speech_recognition_result_pending.html).
    """

    defstruct "@type": "speechRecognitionResultPending", "@extra": nil, partial_text: nil
  end

  defmodule FormattedText do
    @moduledoc """
    A text with some entities.

    | Name | Type | Description |
    |------|------| ------------|
    | text | string | The text. |
    | entities | textEntity | Entities contained in the text. Entities can be nested, but must not mutually intersect with each other. Pre, Code and PreCode entities can't contain other entities. BlockQuote entities can't contain other BlockQuote entities. Bold, Italic, Underline, Strikethrough, and Spoiler entities can contain and can be part of any other entities. All other entities can't contain each other. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1formatted_text.html).
    """

    defstruct "@type": "formattedText", "@extra": nil, text: nil, entities: nil
  end

  defmodule PageBlockTableCell do
    @moduledoc """
    Represents a cell of a table.

    | Name | Type | Description |
    |------|------| ------------|
    | text | RichText | Cell text; may be null. If the text is null, then the cell must be invisible. |
    | is_header | bool | True, if it is a header cell. |
    | colspan | number | The number of columns the cell spans. |
    | rowspan | number | The number of rows the cell spans. |
    | align | PageBlockHorizontalAlignment | Horizontal cell content alignment. |
    | valign | PageBlockVerticalAlignment | Vertical cell content alignment. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_table_cell.html).
    """

    defstruct "@type": "pageBlockTableCell",
              "@extra": nil,
              text: nil,
              is_header: nil,
              colspan: nil,
              rowspan: nil,
              align: nil,
              valign: nil
  end

  defmodule InputMessagePoll do
    @moduledoc """
    A message with a poll. Polls can't be sent to secret chats. Polls can be sent only to a private chat with a bot.

    | Name | Type | Description |
    |------|------| ------------|
    | question | string | Poll question; 1-255 characters (up to 300 characters for bots). |
    | options | string | List of poll answer options, 2-10 strings 1-100 characters each. |
    | is_anonymous | bool | True, if the poll voters are anonymous. Non-anonymous polls can't be sent or forwarded to channels. |
    | type | PollType | Type of the poll. |
    | open_period | number | Amount of time the poll will be active after creation, in seconds; for bots only. |
    | close_date | number | Point in time (Unix timestamp) when the poll will automatically be closed; for bots only. |
    | is_closed | bool | True, if the poll needs to be sent already closed; for bots only. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_poll.html).
    """

    defstruct "@type": "inputMessagePoll",
              "@extra": nil,
              question: nil,
              options: nil,
              is_anonymous: nil,
              type: nil,
              open_period: nil,
              close_date: nil,
              is_closed: nil
  end

  defmodule ChatPhoto do
    @moduledoc """
    Describes a chat or user profile photo.

    | Name | Type | Description |
    |------|------| ------------|
    | id | string | Unique photo identifier. |
    | added_date | number | Point in time (Unix timestamp) when the photo has been added. |
    | minithumbnail | minithumbnail | Photo minithumbnail; may be null. |
    | sizes | photoSize | Available variants of the photo in JPEG format, in different size. |
    | animation | animatedChatPhoto | A big (up to 1280x1280) animated variant of the photo in MPEG4 format; may be null. |
    | small_animation | animatedChatPhoto | A small (160x160) animated variant of the photo in MPEG4 format; may be null even the big animation is available. |
    | sticker | chatPhotoSticker | Sticker-based version of the chat photo; may be null. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_photo.html).
    """

    defstruct "@type": "chatPhoto",
              "@extra": nil,
              id: nil,
              added_date: nil,
              minithumbnail: nil,
              sizes: nil,
              animation: nil,
              small_animation: nil,
              sticker: nil
  end

  defmodule MessageChatDeletePhoto do
    @moduledoc """
    A deleted chat photo.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_chat_delete_photo.html).
    """

    defstruct "@type": "messageChatDeletePhoto", "@extra": nil
  end

  defmodule UpdateChatMessageAutoDeleteTime do
    @moduledoc """
    The message auto-delete or self-destruct timer setting for a chat was changed.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |
    | message_auto_delete_time | number | New value of message_auto_delete_time. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_message_auto_delete_time.html).
    """

    defstruct "@type": "updateChatMessageAutoDeleteTime", "@extra": nil, chat_id: nil, message_auto_delete_time: nil
  end

  defmodule ChatActionChoosingLocation do
    @moduledoc """
    The user is picking a location or venue to send.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_choosing_location.html).
    """

    defstruct "@type": "chatActionChoosingLocation", "@extra": nil
  end

  defmodule MessageSchedulingStateSendAtDate do
    @moduledoc """
    The message will be sent at the specified date.

    | Name | Type | Description |
    |------|------| ------------|
    | send_date | number | Point in time (Unix timestamp) when the message will be sent. The date must be within 367 days in the future. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_scheduling_state_send_at_date.html).
    """

    defstruct "@type": "messageSchedulingStateSendAtDate", "@extra": nil, send_date: nil
  end

  defmodule IdentityDocument do
    @moduledoc """
    An identity document.

    | Name | Type | Description |
    |------|------| ------------|
    | number | string | Document number; 1-24 characters. |
    | expiration_date | date | Document expiration date; may be null if not applicable. |
    | front_side | datedFile | Front side of the document. |
    | reverse_side | datedFile | Reverse side of the document; only for driver license and identity card; may be null. |
    | selfie | datedFile | Selfie with the document; may be null. |
    | translation | datedFile | List of files containing a certified English translation of the document. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1identity_document.html).
    """

    defstruct "@type": "identityDocument",
              "@extra": nil,
              number: nil,
              expiration_date: nil,
              front_side: nil,
              reverse_side: nil,
              selfie: nil,
              translation: nil
  end

  defmodule FileDownloadedPrefixSize do
    @moduledoc """
    Contains size of downloaded prefix of a file.

    | Name | Type | Description |
    |------|------| ------------|
    | size | string | The prefix size, in bytes. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_downloaded_prefix_size.html).
    """

    defstruct "@type": "fileDownloadedPrefixSize", "@extra": nil, size: nil
  end

  defmodule DiceStickersSlotMachine do
    @moduledoc """
    Animated stickers to be combined into a slot machine.

    | Name | Type | Description |
    |------|------| ------------|
    | background | sticker | The animated sticker with the slot machine background. The background animation must start playing after all reel animations finish. |
    | lever | sticker | The animated sticker with the lever animation. The lever animation must play once in the initial dice state. |
    | left_reel | sticker | The animated sticker with the left reel. |
    | center_reel | sticker | The animated sticker with the center reel. |
    | right_reel | sticker | The animated sticker with the right reel. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1dice_stickers_slot_machine.html).
    """

    defstruct "@type": "diceStickersSlotMachine",
              "@extra": nil,
              background: nil,
              lever: nil,
              left_reel: nil,
              center_reel: nil,
              right_reel: nil
  end

  defmodule UserPrivacySettingRuleRestrictContacts do
    @moduledoc """
    A rule to restrict all contacts of the user from doing something.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_privacy_setting_rule_restrict_contacts.html).
    """

    defstruct "@type": "userPrivacySettingRuleRestrictContacts", "@extra": nil
  end

  defmodule MessagePositions do
    @moduledoc """
    Contains a list of message positions.

    | Name | Type | Description |
    |------|------| ------------|
    | total_count | number | Total number of messages found. |
    | positions | messagePosition | List of message positions. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_positions.html).
    """

    defstruct "@type": "messagePositions", "@extra": nil, total_count: nil, positions: nil
  end

  defmodule GroupCallStream do
    @moduledoc """
    Describes an available stream in a group call.

    | Name | Type | Description |
    |------|------| ------------|
    | channel_id | number | Identifier of an audio/video channel. |
    | scale | number | Scale of segment durations in the stream. The duration is 1000/(2**scale) milliseconds. |
    | time_offset | string | Point in time when the stream currently ends; Unix timestamp in milliseconds. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1group_call_stream.html).
    """

    defstruct "@type": "groupCallStream", "@extra": nil, channel_id: nil, scale: nil, time_offset: nil
  end

  defmodule InternalLinkTypeActiveSessions do
    @moduledoc """
    The link is a link to the active sessions section of the application. Use getActiveSessions to handle the link.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_active_sessions.html).
    """

    defstruct "@type": "internalLinkTypeActiveSessions", "@extra": nil
  end

  defmodule UpdateChatUnreadReactionCount do
    @moduledoc """
    The chat unread_reaction_count has changed.

    | Name | Type | Description |
    |------|------| ------------|
    | chat_id | string | Chat identifier. |
    | unread_reaction_count | number | The number of messages with unread reactions left in the chat. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_unread_reaction_count.html).
    """

    defstruct "@type": "updateChatUnreadReactionCount", "@extra": nil, chat_id: nil, unread_reaction_count: nil
  end

  defmodule PremiumGiveawayInfoCompleted do
    @moduledoc """
    Describes a completed giveaway.

    | Name | Type | Description |
    |------|------| ------------|
    | creation_date | number | Point in time (Unix timestamp) when the giveaway was created. |
    | actual_winners_selection_date | number | Point in time (Unix timestamp) when the winners were selected. May be bigger than winners selection date specified in parameters of the giveaway. |
    | was_refunded | bool | True, if the giveaway was canceled and was fully refunded. |
    | winner_count | number | Number of winners in the giveaway. |
    | activation_count | number | Number of winners, which activated their gift codes. |
    | gift_code | string | Telegram Premium gift code that was received by the current user; empty if the user isn't a winner in the giveaway. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_giveaway_info_completed.html).
    """

    defstruct "@type": "premiumGiveawayInfoCompleted",
              "@extra": nil,
              creation_date: nil,
              actual_winners_selection_date: nil,
              was_refunded: nil,
              winner_count: nil,
              activation_count: nil,
              gift_code: nil
  end

  defmodule MessageAnimation do
    @moduledoc """
    An animation message (GIF-style).

    | Name | Type | Description |
    |------|------| ------------|
    | animation | animation | The animation description. |
    | caption | formattedText | Animation caption. |
    | has_spoiler | bool | True, if the animation preview must be covered by a spoiler animation. |
    | is_secret | bool | True, if the animation thumbnail must be blurred and the animation must be shown only while tapped. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_animation.html).
    """

    defstruct "@type": "messageAnimation", "@extra": nil, animation: nil, caption: nil, has_spoiler: nil, is_secret: nil
  end

  defmodule InputChatPhotoAnimation do
    @moduledoc """
    An animation in MPEG4 format; must be square, at most 10 seconds long, have width between 160 and 1280 and be at most 2MB in size.

    | Name | Type | Description |
    |------|------| ------------|
    | animation | InputFile | Animation to be set as profile photo. Only inputFileLocal and inputFileGenerated are allowed. |
    | main_frame_timestamp | double | Timestamp of the frame, which will be used as static chat photo. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_chat_photo_animation.html).
    """

    defstruct "@type": "inputChatPhotoAnimation", "@extra": nil, animation: nil, main_frame_timestamp: nil
  end

  defmodule ReportReasonFake do
    @moduledoc """
    The chat represents a fake account.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1report_reason_fake.html).
    """

    defstruct "@type": "reportReasonFake", "@extra": nil
  end

  defmodule Photo do
    @moduledoc """
    Describes a photo.

    | Name | Type | Description |
    |------|------| ------------|
    | has_stickers | bool | True, if stickers were added to the photo. The list of corresponding sticker sets can be received using getAttachedStickerSets. |
    | minithumbnail | minithumbnail | Photo minithumbnail; may be null. |
    | sizes | photoSize | Available variants of the photo, in different sizes. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1photo.html).
    """

    defstruct "@type": "photo", "@extra": nil, has_stickers: nil, minithumbnail: nil, sizes: nil
  end

  defmodule SessionTypeWindows do
    @moduledoc """
    The session is running on a Windows device.


    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1session_type_windows.html).
    """

    defstruct "@type": "sessionTypeWindows", "@extra": nil
  end

  defmodule DeviceTokenApplePush do
    @moduledoc """
    A token for Apple Push Notification service.

    | Name | Type | Description |
    |------|------| ------------|
    | device_token | string | Device token; may be empty to deregister a device. |
    | is_app_sandbox | bool | True, if App Sandbox is enabled. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1device_token_apple_push.html).
    """

    defstruct "@type": "deviceTokenApplePush", "@extra": nil, device_token: nil, is_app_sandbox: nil
  end

  defmodule Error do
    @moduledoc """
    An object of this type can be returned on every function call, in case of an error.

    | Name | Type | Description |
    |------|------| ------------|
    | code | number | Error code; subject to future changes. If the error code is 406, the error message must not be processed in any way and must not be displayed to the user. |
    | message | string | Error message; subject to future changes. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1error.html).
    """

    defstruct "@type": "error", "@extra": nil, code: nil, message: nil
  end

  defmodule Video do
    @moduledoc """
    Describes a video file.

    | Name | Type | Description |
    |------|------| ------------|
    | duration | number | Duration of the video, in seconds; as defined by the sender. |
    | width | number | Video width; as defined by the sender. |
    | height | number | Video height; as defined by the sender. |
    | file_name | string | Original name of the file; as defined by the sender. |
    | mime_type | string | MIME type of the file; as defined by the sender. |
    | has_stickers | bool | True, if stickers were added to the video. The list of corresponding sticker sets can be received using getAttachedStickerSets. |
    | supports_streaming | bool | True, if the video is supposed to be streamed. |
    | minithumbnail | minithumbnail | Video minithumbnail; may be null. |
    | thumbnail | thumbnail | Video thumbnail in JPEG or MPEG4 format; as defined by the sender; may be null. |
    | video | file | File containing the video. |

    More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1video.html).
    """

    defstruct "@type": "video",
              "@extra": nil,
              duration: nil,
              width: nil,
              height: nil,
              file_name: nil,
              mime_type: nil,
              has_stickers: nil,
              supports_streaming: nil,
              minithumbnail: nil,
              thumbnail: nil,
              video: nil
  end
end
