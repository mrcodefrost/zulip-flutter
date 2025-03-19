// Autogenerated from Pigeon (v25.0.0), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, prefer_null_aware_operators, omit_local_variable_types, unused_shown_name, unnecessary_import, no_leading_underscores_for_local_identifiers

import 'dart:async';
import 'dart:typed_data' show Float64List, Int32List, Int64List, Uint8List;

import 'package:flutter/foundation.dart' show ReadBuffer, WriteBuffer;
import 'package:flutter/services.dart';

PlatformException _createConnectionError(String channelName) {
  return PlatformException(
    code: 'channel-error',
    message: 'Unable to establish connection on channel: "$channelName".',
  );
}

/// Corresponds to `androidx.core.app.NotificationChannelCompat`
///
/// See: https://developer.android.com/reference/androidx/core/app/NotificationChannelCompat
class NotificationChannel {
  NotificationChannel({
    required this.id,
    required this.importance,
    this.name,
    this.lightsEnabled,
    this.soundUrl,
    this.vibrationPattern,
  });

  String id;

  /// Specifies the importance level of notifications
  /// to be posted on this channel.
  ///
  /// Must be a valid constant from [NotificationImportance].
  int importance;

  String? name;

  bool? lightsEnabled;

  String? soundUrl;

  Int64List? vibrationPattern;

  Object encode() {
    return <Object?>[
      id,
      importance,
      name,
      lightsEnabled,
      soundUrl,
      vibrationPattern,
    ];
  }

  static NotificationChannel decode(Object result) {
    result as List<Object?>;
    return NotificationChannel(
      id: result[0]! as String,
      importance: result[1]! as int,
      name: result[2] as String?,
      lightsEnabled: result[3] as bool?,
      soundUrl: result[4] as String?,
      vibrationPattern: result[5] as Int64List?,
    );
  }
}

/// Corresponds to `android.content.Intent`
///
/// See:
///   https://developer.android.com/reference/android/content/Intent
///   https://developer.android.com/reference/android/content/Intent#Intent(java.lang.String,%20android.net.Uri,%20android.content.Context,%20java.lang.Class%3C?%3E)
class AndroidIntent {
  AndroidIntent({
    required this.action,
    required this.dataUrl,
    this.flags = 0,
  });

  String action;

  String dataUrl;

  /// A combination of flags from [IntentFlag].
  int flags;

  Object encode() {
    return <Object?>[
      action,
      dataUrl,
      flags,
    ];
  }

  static AndroidIntent decode(Object result) {
    result as List<Object?>;
    return AndroidIntent(
      action: result[0]! as String,
      dataUrl: result[1]! as String,
      flags: result[2]! as int,
    );
  }
}

/// Corresponds to `android.app.PendingIntent`.
///
/// See: https://developer.android.com/reference/android/app/PendingIntent
class PendingIntent {
  PendingIntent({
    required this.requestCode,
    required this.intent,
    required this.flags,
  });

  int requestCode;

  AndroidIntent intent;

  /// A combination of flags from [PendingIntent.flags], and others associated
  /// with `Intent`; see Android docs for `PendingIntent.getActivity`.
  int flags;

  Object encode() {
    return <Object?>[
      requestCode,
      intent,
      flags,
    ];
  }

  static PendingIntent decode(Object result) {
    result as List<Object?>;
    return PendingIntent(
      requestCode: result[0]! as int,
      intent: result[1]! as AndroidIntent,
      flags: result[2]! as int,
    );
  }
}

/// Corresponds to `androidx.core.app.NotificationCompat.InboxStyle`
///
/// See: https://developer.android.com/reference/androidx/core/app/NotificationCompat.InboxStyle
class InboxStyle {
  InboxStyle({
    required this.summaryText,
  });

  String summaryText;

  Object encode() {
    return <Object?>[
      summaryText,
    ];
  }

  static InboxStyle decode(Object result) {
    result as List<Object?>;
    return InboxStyle(
      summaryText: result[0]! as String,
    );
  }
}

/// Corresponds to `androidx.core.app.Person`
///
/// See: https://developer.android.com/reference/androidx/core/app/Person
class Person {
  Person({
    this.iconBitmap,
    required this.key,
    required this.name,
  });

  /// An icon for this person.
  ///
  /// This should be compressed image data, in a format to be passed
  /// to `androidx.core.graphics.drawable.IconCompat.createWithData`.
  /// Supported formats include JPEG, PNG, and WEBP.
  ///
  /// See:
  ///  https://developer.android.com/reference/androidx/core/graphics/drawable/IconCompat#createWithData(byte[],int,int)
  Uint8List? iconBitmap;

  String key;

  String name;

  Object encode() {
    return <Object?>[
      iconBitmap,
      key,
      name,
    ];
  }

  static Person decode(Object result) {
    result as List<Object?>;
    return Person(
      iconBitmap: result[0] as Uint8List?,
      key: result[1]! as String,
      name: result[2]! as String,
    );
  }
}

/// Corresponds to `androidx.core.app.NotificationCompat.MessagingStyle.Message`
///
/// See: https://developer.android.com/reference/androidx/core/app/NotificationCompat.MessagingStyle.Message
class MessagingStyleMessage {
  MessagingStyleMessage({
    required this.text,
    required this.timestampMs,
    required this.person,
  });

  String text;

  int timestampMs;

  Person person;

  Object encode() {
    return <Object?>[
      text,
      timestampMs,
      person,
    ];
  }

  static MessagingStyleMessage decode(Object result) {
    result as List<Object?>;
    return MessagingStyleMessage(
      text: result[0]! as String,
      timestampMs: result[1]! as int,
      person: result[2]! as Person,
    );
  }
}

/// Corresponds to `androidx.core.app.NotificationCompat.MessagingStyle`
///
/// See: https://developer.android.com/reference/androidx/core/app/NotificationCompat.MessagingStyle
class MessagingStyle {
  MessagingStyle({
    required this.user,
    this.conversationTitle,
    required this.messages,
    required this.isGroupConversation,
  });

  Person user;

  String? conversationTitle;

  List<MessagingStyleMessage> messages;

  bool isGroupConversation;

  Object encode() {
    return <Object?>[
      user,
      conversationTitle,
      messages,
      isGroupConversation,
    ];
  }

  static MessagingStyle decode(Object result) {
    result as List<Object?>;
    return MessagingStyle(
      user: result[0]! as Person,
      conversationTitle: result[1] as String?,
      messages: (result[2] as List<Object?>?)!.cast<MessagingStyleMessage>(),
      isGroupConversation: result[3]! as bool,
    );
  }
}

/// Corresponds to `android.app.Notification`
///
/// See: https://developer.android.com/reference/kotlin/android/app/Notification
class Notification {
  Notification({
    required this.group,
    required this.extras,
  });

  String group;

  Map<String, String> extras;

  Object encode() {
    return <Object?>[
      group,
      extras,
    ];
  }

  static Notification decode(Object result) {
    result as List<Object?>;
    return Notification(
      group: result[0]! as String,
      extras: (result[1] as Map<Object?, Object?>?)!.cast<String, String>(),
    );
  }
}

/// Corresponds to `android.service.notification.StatusBarNotification`
///
/// See: https://developer.android.com/reference/android/service/notification/StatusBarNotification
class StatusBarNotification {
  StatusBarNotification({
    required this.id,
    required this.tag,
    required this.notification,
  });

  int id;

  String tag;

  Notification notification;

  Object encode() {
    return <Object?>[
      id,
      tag,
      notification,
    ];
  }

  static StatusBarNotification decode(Object result) {
    result as List<Object?>;
    return StatusBarNotification(
      id: result[0]! as int,
      tag: result[1]! as String,
      notification: result[2]! as Notification,
    );
  }
}

/// Represents details about a notification sound stored in the
/// shared media store.
///
/// Returned as a list entry by
/// [AndroidNotificationHostApi.listStoredSoundsInNotificationsDirectory].
class StoredNotificationSound {
  StoredNotificationSound({
    required this.fileName,
    required this.isOwned,
    required this.contentUrl,
  });

  /// The display name of the sound file.
  String fileName;

  /// Specifies whether this file was created by the app.
  ///
  /// It is true if the `MediaStore.Audio.Media.OWNER_PACKAGE_NAME` key in the
  /// metadata matches the app's package name.
  bool isOwned;

  /// A `content://…` URL pointing to the sound file.
  String contentUrl;

  Object encode() {
    return <Object?>[
      fileName,
      isOwned,
      contentUrl,
    ];
  }

  static StoredNotificationSound decode(Object result) {
    result as List<Object?>;
    return StoredNotificationSound(
      fileName: result[0]! as String,
      isOwned: result[1]! as bool,
      contentUrl: result[2]! as String,
    );
  }
}


class _PigeonCodec extends StandardMessageCodec {
  const _PigeonCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is int) {
      buffer.putUint8(4);
      buffer.putInt64(value);
    }    else if (value is NotificationChannel) {
      buffer.putUint8(129);
      writeValue(buffer, value.encode());
    }    else if (value is AndroidIntent) {
      buffer.putUint8(130);
      writeValue(buffer, value.encode());
    }    else if (value is PendingIntent) {
      buffer.putUint8(131);
      writeValue(buffer, value.encode());
    }    else if (value is InboxStyle) {
      buffer.putUint8(132);
      writeValue(buffer, value.encode());
    }    else if (value is Person) {
      buffer.putUint8(133);
      writeValue(buffer, value.encode());
    }    else if (value is MessagingStyleMessage) {
      buffer.putUint8(134);
      writeValue(buffer, value.encode());
    }    else if (value is MessagingStyle) {
      buffer.putUint8(135);
      writeValue(buffer, value.encode());
    }    else if (value is Notification) {
      buffer.putUint8(136);
      writeValue(buffer, value.encode());
    }    else if (value is StatusBarNotification) {
      buffer.putUint8(137);
      writeValue(buffer, value.encode());
    }    else if (value is StoredNotificationSound) {
      buffer.putUint8(138);
      writeValue(buffer, value.encode());
    } else {
      super.writeValue(buffer, value);
    }
  }

  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 129: 
        return NotificationChannel.decode(readValue(buffer)!);
      case 130: 
        return AndroidIntent.decode(readValue(buffer)!);
      case 131: 
        return PendingIntent.decode(readValue(buffer)!);
      case 132: 
        return InboxStyle.decode(readValue(buffer)!);
      case 133: 
        return Person.decode(readValue(buffer)!);
      case 134: 
        return MessagingStyleMessage.decode(readValue(buffer)!);
      case 135: 
        return MessagingStyle.decode(readValue(buffer)!);
      case 136: 
        return Notification.decode(readValue(buffer)!);
      case 137: 
        return StatusBarNotification.decode(readValue(buffer)!);
      case 138: 
        return StoredNotificationSound.decode(readValue(buffer)!);
      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

class AndroidNotificationHostApi {
  /// Constructor for [AndroidNotificationHostApi].  The [binaryMessenger] named argument is
  /// available for dependency injection.  If it is left null, the default
  /// BinaryMessenger will be used which routes to the host platform.
  AndroidNotificationHostApi({BinaryMessenger? binaryMessenger, String messageChannelSuffix = ''})
      : pigeonVar_binaryMessenger = binaryMessenger,
        pigeonVar_messageChannelSuffix = messageChannelSuffix.isNotEmpty ? '.$messageChannelSuffix' : '';
  final BinaryMessenger? pigeonVar_binaryMessenger;

  static const MessageCodec<Object?> pigeonChannelCodec = _PigeonCodec();

  final String pigeonVar_messageChannelSuffix;

  /// Corresponds to `androidx.core.app.NotificationManagerCompat.createNotificationChannel`.
  ///
  /// See: https://developer.android.com/reference/androidx/core/app/NotificationManagerCompat#createNotificationChannel(androidx.core.app.NotificationChannelCompat)
  Future<void> createNotificationChannel(NotificationChannel channel) async {
    final String pigeonVar_channelName = 'dev.flutter.pigeon.zulip.AndroidNotificationHostApi.createNotificationChannel$pigeonVar_messageChannelSuffix';
    final BasicMessageChannel<Object?> pigeonVar_channel = BasicMessageChannel<Object?>(
      pigeonVar_channelName,
      pigeonChannelCodec,
      binaryMessenger: pigeonVar_binaryMessenger,
    );
    final Future<Object?> pigeonVar_sendFuture = pigeonVar_channel.send(<Object?>[channel]);
    final List<Object?>? pigeonVar_replyList =
        await pigeonVar_sendFuture as List<Object?>?;
    if (pigeonVar_replyList == null) {
      throw _createConnectionError(pigeonVar_channelName);
    } else if (pigeonVar_replyList.length > 1) {
      throw PlatformException(
        code: pigeonVar_replyList[0]! as String,
        message: pigeonVar_replyList[1] as String?,
        details: pigeonVar_replyList[2],
      );
    } else {
      return;
    }
  }

  /// Corresponds to `androidx.core.app.NotificationManagerCompat.getNotificationChannelsCompat`.
  ///
  /// See: https://developer.android.com/reference/kotlin/androidx/core/app/NotificationManagerCompat#getNotificationChannelsCompat()
  Future<List<NotificationChannel>> getNotificationChannels() async {
    final String pigeonVar_channelName = 'dev.flutter.pigeon.zulip.AndroidNotificationHostApi.getNotificationChannels$pigeonVar_messageChannelSuffix';
    final BasicMessageChannel<Object?> pigeonVar_channel = BasicMessageChannel<Object?>(
      pigeonVar_channelName,
      pigeonChannelCodec,
      binaryMessenger: pigeonVar_binaryMessenger,
    );
    final Future<Object?> pigeonVar_sendFuture = pigeonVar_channel.send(null);
    final List<Object?>? pigeonVar_replyList =
        await pigeonVar_sendFuture as List<Object?>?;
    if (pigeonVar_replyList == null) {
      throw _createConnectionError(pigeonVar_channelName);
    } else if (pigeonVar_replyList.length > 1) {
      throw PlatformException(
        code: pigeonVar_replyList[0]! as String,
        message: pigeonVar_replyList[1] as String?,
        details: pigeonVar_replyList[2],
      );
    } else if (pigeonVar_replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (pigeonVar_replyList[0] as List<Object?>?)!.cast<NotificationChannel>();
    }
  }

  /// Corresponds to `androidx.core.app.NotificationManagerCompat.deleteNotificationChannel`
  ///
  /// See: https://developer.android.com/reference/kotlin/androidx/core/app/NotificationManagerCompat#deleteNotificationChannel(java.lang.String)
  Future<void> deleteNotificationChannel(String channelId) async {
    final String pigeonVar_channelName = 'dev.flutter.pigeon.zulip.AndroidNotificationHostApi.deleteNotificationChannel$pigeonVar_messageChannelSuffix';
    final BasicMessageChannel<Object?> pigeonVar_channel = BasicMessageChannel<Object?>(
      pigeonVar_channelName,
      pigeonChannelCodec,
      binaryMessenger: pigeonVar_binaryMessenger,
    );
    final Future<Object?> pigeonVar_sendFuture = pigeonVar_channel.send(<Object?>[channelId]);
    final List<Object?>? pigeonVar_replyList =
        await pigeonVar_sendFuture as List<Object?>?;
    if (pigeonVar_replyList == null) {
      throw _createConnectionError(pigeonVar_channelName);
    } else if (pigeonVar_replyList.length > 1) {
      throw PlatformException(
        code: pigeonVar_replyList[0]! as String,
        message: pigeonVar_replyList[1] as String?,
        details: pigeonVar_replyList[2],
      );
    } else {
      return;
    }
  }

  /// The list of notification sound files present under `Notifications/Zulip/`
  /// in the device's shared media storage,
  /// found with `android.content.ContentResolver.query`.
  ///
  /// This is a complex ad-hoc method.
  /// For detailed behavior, see its implementation.
  ///
  /// Requires minimum of Android 10 (API 29) or higher.
  ///
  /// See: https://developer.android.com/reference/android/content/ContentResolver#query(android.net.Uri,%20java.lang.String[],%20java.lang.String,%20java.lang.String[],%20java.lang.String)
  Future<List<StoredNotificationSound>> listStoredSoundsInNotificationsDirectory() async {
    final String pigeonVar_channelName = 'dev.flutter.pigeon.zulip.AndroidNotificationHostApi.listStoredSoundsInNotificationsDirectory$pigeonVar_messageChannelSuffix';
    final BasicMessageChannel<Object?> pigeonVar_channel = BasicMessageChannel<Object?>(
      pigeonVar_channelName,
      pigeonChannelCodec,
      binaryMessenger: pigeonVar_binaryMessenger,
    );
    final Future<Object?> pigeonVar_sendFuture = pigeonVar_channel.send(null);
    final List<Object?>? pigeonVar_replyList =
        await pigeonVar_sendFuture as List<Object?>?;
    if (pigeonVar_replyList == null) {
      throw _createConnectionError(pigeonVar_channelName);
    } else if (pigeonVar_replyList.length > 1) {
      throw PlatformException(
        code: pigeonVar_replyList[0]! as String,
        message: pigeonVar_replyList[1] as String?,
        details: pigeonVar_replyList[2],
      );
    } else if (pigeonVar_replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (pigeonVar_replyList[0] as List<Object?>?)!.cast<StoredNotificationSound>();
    }
  }

  /// Wraps `android.content.ContentResolver.insert` combined with
  /// `android.content.ContentResolver.openOutputStream` and
  /// `android.content.res.Resources.openRawResource`.
  ///
  /// Copies a raw resource audio file to `Notifications/Zulip/`
  /// directory in device's shared media storage. Returns the URL
  /// of the target file in media store.
  ///
  /// Requires minimum of Android 10 (API 29) or higher.
  ///
  /// See:
  ///   https://developer.android.com/reference/android/content/ContentResolver#insert(android.net.Uri,%20android.content.ContentValues)
  ///   https://developer.android.com/reference/android/content/ContentResolver#openOutputStream(android.net.Uri)
  ///   https://developer.android.com/reference/android/content/res/Resources#openRawResource(int)
  Future<String> copySoundResourceToMediaStore({required String targetFileDisplayName, required String sourceResourceName}) async {
    final String pigeonVar_channelName = 'dev.flutter.pigeon.zulip.AndroidNotificationHostApi.copySoundResourceToMediaStore$pigeonVar_messageChannelSuffix';
    final BasicMessageChannel<Object?> pigeonVar_channel = BasicMessageChannel<Object?>(
      pigeonVar_channelName,
      pigeonChannelCodec,
      binaryMessenger: pigeonVar_binaryMessenger,
    );
    final Future<Object?> pigeonVar_sendFuture = pigeonVar_channel.send(<Object?>[targetFileDisplayName, sourceResourceName]);
    final List<Object?>? pigeonVar_replyList =
        await pigeonVar_sendFuture as List<Object?>?;
    if (pigeonVar_replyList == null) {
      throw _createConnectionError(pigeonVar_channelName);
    } else if (pigeonVar_replyList.length > 1) {
      throw PlatformException(
        code: pigeonVar_replyList[0]! as String,
        message: pigeonVar_replyList[1] as String?,
        details: pigeonVar_replyList[2],
      );
    } else if (pigeonVar_replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (pigeonVar_replyList[0] as String?)!;
    }
  }

  /// Corresponds to `android.app.NotificationManager.notify`,
  /// combined with `androidx.core.app.NotificationCompat.Builder`.
  ///
  /// The arguments `tag` and `id` go to the `notify` call.
  /// The rest go to method calls on the builder.
  ///
  /// The `color` should be in the form 0xAARRGGBB.
  /// See [ColorExtension.argbInt].
  ///
  /// The `smallIconResourceName` is passed to `android.content.res.Resources.getIdentifier`
  /// to get a resource ID to pass to `Builder.setSmallIcon`.
  /// Whatever name is passed there must appear in keep.xml too:
  /// see https://github.com/zulip/zulip-flutter/issues/528 .
  ///
  /// See:
  ///   https://developer.android.com/reference/kotlin/android/app/NotificationManager.html#notify
  ///   https://developer.android.com/reference/androidx/core/app/NotificationCompat.Builder
  Future<void> notify({String? tag, required int id, bool? autoCancel, required String channelId, int? color, PendingIntent? contentIntent, String? contentText, String? contentTitle, Map<String, String>? extras, String? groupKey, InboxStyle? inboxStyle, bool? isGroupSummary, MessagingStyle? messagingStyle, int? number, String? smallIconResourceName, }) async {
    final String pigeonVar_channelName = 'dev.flutter.pigeon.zulip.AndroidNotificationHostApi.notify$pigeonVar_messageChannelSuffix';
    final BasicMessageChannel<Object?> pigeonVar_channel = BasicMessageChannel<Object?>(
      pigeonVar_channelName,
      pigeonChannelCodec,
      binaryMessenger: pigeonVar_binaryMessenger,
    );
    final Future<Object?> pigeonVar_sendFuture = pigeonVar_channel.send(<Object?>[tag, id, autoCancel, channelId, color, contentIntent, contentText, contentTitle, extras, groupKey, inboxStyle, isGroupSummary, messagingStyle, number, smallIconResourceName]);
    final List<Object?>? pigeonVar_replyList =
        await pigeonVar_sendFuture as List<Object?>?;
    if (pigeonVar_replyList == null) {
      throw _createConnectionError(pigeonVar_channelName);
    } else if (pigeonVar_replyList.length > 1) {
      throw PlatformException(
        code: pigeonVar_replyList[0]! as String,
        message: pigeonVar_replyList[1] as String?,
        details: pigeonVar_replyList[2],
      );
    } else {
      return;
    }
  }

  /// Wraps `androidx.core.app.NotificationManagerCompat.getActiveNotifications`,
  /// combined with `androidx.core.app.NotificationCompat.MessagingStyle.extractMessagingStyleFromNotification`.
  ///
  /// Returns the messaging style, if any, of an active notification
  /// that has tag `tag`.  If there are several such notifications,
  /// an arbitrary one of them is used.
  /// Returns null if there are no such notifications.
  ///
  /// See:
  ///   https://developer.android.com/reference/kotlin/androidx/core/app/NotificationManagerCompat#getActiveNotifications()
  ///   https://developer.android.com/reference/kotlin/androidx/core/app/NotificationCompat.MessagingStyle#extractMessagingStyleFromNotification(android.app.Notification)
  Future<MessagingStyle?> getActiveNotificationMessagingStyleByTag(String tag) async {
    final String pigeonVar_channelName = 'dev.flutter.pigeon.zulip.AndroidNotificationHostApi.getActiveNotificationMessagingStyleByTag$pigeonVar_messageChannelSuffix';
    final BasicMessageChannel<Object?> pigeonVar_channel = BasicMessageChannel<Object?>(
      pigeonVar_channelName,
      pigeonChannelCodec,
      binaryMessenger: pigeonVar_binaryMessenger,
    );
    final Future<Object?> pigeonVar_sendFuture = pigeonVar_channel.send(<Object?>[tag]);
    final List<Object?>? pigeonVar_replyList =
        await pigeonVar_sendFuture as List<Object?>?;
    if (pigeonVar_replyList == null) {
      throw _createConnectionError(pigeonVar_channelName);
    } else if (pigeonVar_replyList.length > 1) {
      throw PlatformException(
        code: pigeonVar_replyList[0]! as String,
        message: pigeonVar_replyList[1] as String?,
        details: pigeonVar_replyList[2],
      );
    } else {
      return (pigeonVar_replyList[0] as MessagingStyle?);
    }
  }

  /// Corresponds to `androidx.core.app.NotificationManagerCompat.getActiveNotifications`.
  ///
  /// The keys of entries to fetch from notification's extras bundle must be
  /// specified in the [desiredExtras] list. If this list is empty, then
  /// [Notifications.extras] will also be empty. If value of the matched entry
  /// is not of type string or is null, then that entry will be skipped.
  ///
  /// See: https://developer.android.com/reference/kotlin/androidx/core/app/NotificationManagerCompat?hl=en#getActiveNotifications()
  Future<List<StatusBarNotification>> getActiveNotifications({required List<String> desiredExtras}) async {
    final String pigeonVar_channelName = 'dev.flutter.pigeon.zulip.AndroidNotificationHostApi.getActiveNotifications$pigeonVar_messageChannelSuffix';
    final BasicMessageChannel<Object?> pigeonVar_channel = BasicMessageChannel<Object?>(
      pigeonVar_channelName,
      pigeonChannelCodec,
      binaryMessenger: pigeonVar_binaryMessenger,
    );
    final Future<Object?> pigeonVar_sendFuture = pigeonVar_channel.send(<Object?>[desiredExtras]);
    final List<Object?>? pigeonVar_replyList =
        await pigeonVar_sendFuture as List<Object?>?;
    if (pigeonVar_replyList == null) {
      throw _createConnectionError(pigeonVar_channelName);
    } else if (pigeonVar_replyList.length > 1) {
      throw PlatformException(
        code: pigeonVar_replyList[0]! as String,
        message: pigeonVar_replyList[1] as String?,
        details: pigeonVar_replyList[2],
      );
    } else if (pigeonVar_replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (pigeonVar_replyList[0] as List<Object?>?)!.cast<StatusBarNotification>();
    }
  }

  /// Corresponds to `androidx.core.app.NotificationManagerCompat.cancel`.
  ///
  /// See: https://developer.android.com/reference/kotlin/androidx/core/app/NotificationManagerCompat?hl=en#cancel(java.lang.String,int)
  Future<void> cancel({String? tag, required int id}) async {
    final String pigeonVar_channelName = 'dev.flutter.pigeon.zulip.AndroidNotificationHostApi.cancel$pigeonVar_messageChannelSuffix';
    final BasicMessageChannel<Object?> pigeonVar_channel = BasicMessageChannel<Object?>(
      pigeonVar_channelName,
      pigeonChannelCodec,
      binaryMessenger: pigeonVar_binaryMessenger,
    );
    final Future<Object?> pigeonVar_sendFuture = pigeonVar_channel.send(<Object?>[tag, id]);
    final List<Object?>? pigeonVar_replyList =
        await pigeonVar_sendFuture as List<Object?>?;
    if (pigeonVar_replyList == null) {
      throw _createConnectionError(pigeonVar_channelName);
    } else if (pigeonVar_replyList.length > 1) {
      throw PlatformException(
        code: pigeonVar_replyList[0]! as String,
        message: pigeonVar_replyList[1] as String?,
        details: pigeonVar_replyList[2],
      );
    } else {
      return;
    }
  }
}
