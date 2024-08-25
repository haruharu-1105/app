// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'viewer_notifications.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GViewerNotificationsData> _$gViewerNotificationsDataSerializer =
    new _$GViewerNotificationsDataSerializer();
Serializer<GViewerNotificationsData_viewer>
    _$gViewerNotificationsDataViewerSerializer =
    new _$GViewerNotificationsData_viewerSerializer();
Serializer<GViewerNotificationsData_viewer_notifications__base>
    _$gViewerNotificationsDataViewerNotificationsBaseSerializer =
    new _$GViewerNotificationsData_viewer_notifications__baseSerializer();
Serializer<
        GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode>
    _$gViewerNotificationsDataViewerNotificationsAsLikedWorkNotificationNodeSerializer =
    new _$GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNodeSerializer();
Serializer<
        GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work>
    _$gViewerNotificationsDataViewerNotificationsAsLikedWorkNotificationNodeWorkSerializer =
    new _$GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_workSerializer();
Serializer<
        GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_user>
    _$gViewerNotificationsDataViewerNotificationsAsLikedWorkNotificationNodeUserSerializer =
    new _$GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_userSerializer();
Serializer<
        GViewerNotificationsData_viewer_notifications__asLikedWorksSummaryNotificationNode>
    _$gViewerNotificationsDataViewerNotificationsAsLikedWorksSummaryNotificationNodeSerializer =
    new _$GViewerNotificationsData_viewer_notifications__asLikedWorksSummaryNotificationNodeSerializer();
Serializer<
        GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode>
    _$gViewerNotificationsDataViewerNotificationsAsWorkAwardNotificationNodeSerializer =
    new _$GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNodeSerializer();
Serializer<
        GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work>
    _$gViewerNotificationsDataViewerNotificationsAsWorkAwardNotificationNodeWorkSerializer =
    new _$GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_workSerializer();
Serializer<
        GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode>
    _$gViewerNotificationsDataViewerNotificationsAsWorkCommentNotificationNodeSerializer =
    new _$GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNodeSerializer();
Serializer<
        GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work>
    _$gViewerNotificationsDataViewerNotificationsAsWorkCommentNotificationNodeWorkSerializer =
    new _$GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_workSerializer();
Serializer<
        GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_user>
    _$gViewerNotificationsDataViewerNotificationsAsWorkCommentNotificationNodeUserSerializer =
    new _$GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_userSerializer();
Serializer<
        GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_sticker>
    _$gViewerNotificationsDataViewerNotificationsAsWorkCommentNotificationNodeStickerSerializer =
    new _$GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_stickerSerializer();
Serializer<
        GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode>
    _$gViewerNotificationsDataViewerNotificationsAsWorkCommentReplyNotificationNodeSerializer =
    new _$GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNodeSerializer();
Serializer<
        GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work>
    _$gViewerNotificationsDataViewerNotificationsAsWorkCommentReplyNotificationNodeWorkSerializer =
    new _$GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_workSerializer();
Serializer<
        GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_user>
    _$gViewerNotificationsDataViewerNotificationsAsWorkCommentReplyNotificationNodeUserSerializer =
    new _$GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_userSerializer();
Serializer<
        GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_sticker>
    _$gViewerNotificationsDataViewerNotificationsAsWorkCommentReplyNotificationNodeStickerSerializer =
    new _$GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_stickerSerializer();
Serializer<
        GViewerNotificationsData_viewer_notifications__asFollowNotificationNode>
    _$gViewerNotificationsDataViewerNotificationsAsFollowNotificationNodeSerializer =
    new _$GViewerNotificationsData_viewer_notifications__asFollowNotificationNodeSerializer();
Serializer<
        GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_user>
    _$gViewerNotificationsDataViewerNotificationsAsFollowNotificationNodeUserSerializer =
    new _$GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_userSerializer();

class _$GViewerNotificationsDataSerializer
    implements StructuredSerializer<GViewerNotificationsData> {
  @override
  final Iterable<Type> types = const [
    GViewerNotificationsData,
    _$GViewerNotificationsData
  ];
  @override
  final String wireName = 'GViewerNotificationsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GViewerNotificationsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.viewer;
    if (value != null) {
      result
        ..add('viewer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GViewerNotificationsData_viewer)));
    }
    return result;
  }

  @override
  GViewerNotificationsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GViewerNotificationsDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'viewer':
          result.viewer.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GViewerNotificationsData_viewer))!
              as GViewerNotificationsData_viewer);
          break;
      }
    }

    return result.build();
  }
}

class _$GViewerNotificationsData_viewerSerializer
    implements StructuredSerializer<GViewerNotificationsData_viewer> {
  @override
  final Iterable<Type> types = const [
    GViewerNotificationsData_viewer,
    _$GViewerNotificationsData_viewer
  ];
  @override
  final String wireName = 'GViewerNotificationsData_viewer';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GViewerNotificationsData_viewer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'notifications',
      serializers.serialize(object.notifications,
          specifiedType: const FullType(BuiltList, const [
            const FullType(GViewerNotificationsData_viewer_notifications)
          ])),
    ];

    return result;
  }

  @override
  GViewerNotificationsData_viewer deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GViewerNotificationsData_viewerBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'notifications':
          result.notifications.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GViewerNotificationsData_viewer_notifications)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GViewerNotificationsData_viewer_notifications__baseSerializer
    implements
        StructuredSerializer<
            GViewerNotificationsData_viewer_notifications__base> {
  @override
  final Iterable<Type> types = const [
    GViewerNotificationsData_viewer_notifications__base,
    _$GViewerNotificationsData_viewer_notifications__base
  ];
  @override
  final String wireName = 'GViewerNotificationsData_viewer_notifications__base';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GViewerNotificationsData_viewer_notifications__base object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GViewerNotificationsData_viewer_notifications__base deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GViewerNotificationsData_viewer_notifications__baseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNodeSerializer
    implements
        StructuredSerializer<
            GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode> {
  @override
  final Iterable<Type> types = const [
    GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode,
    _$GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode
  ];
  @override
  final String wireName =
      'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(int)),
      'isAnonymous',
      serializers.serialize(object.isAnonymous,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.work;
    if (value != null) {
      result
        ..add('work')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_user)));
    }
    return result;
  }

  @override
  GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNodeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'isAnonymous':
          result.isAnonymous = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'work':
          result.work.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work))!
              as GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work);
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_user))!
              as GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_user);
          break;
      }
    }

    return result.build();
  }
}

class _$GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_workSerializer
    implements
        StructuredSerializer<
            GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work> {
  @override
  final Iterable<Type> types = const [
    GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work,
    _$GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work
  ];
  @override
  final String wireName =
      'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'likesCount',
      serializers.serialize(object.likesCount,
          specifiedType: const FullType(int)),
      'commentsCount',
      serializers.serialize(object.commentsCount,
          specifiedType: const FullType(int)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(int)),
      'imageURL',
      serializers.serialize(object.imageURL,
          specifiedType: const FullType(String)),
      'imageWidth',
      serializers.serialize(object.imageWidth,
          specifiedType: const FullType(int)),
      'imageHeight',
      serializers.serialize(object.imageHeight,
          specifiedType: const FullType(int)),
      'largeThumbnailImageURL',
      serializers.serialize(object.largeThumbnailImageURL,
          specifiedType: const FullType(String)),
      'largeThumbnailImageWidth',
      serializers.serialize(object.largeThumbnailImageWidth,
          specifiedType: const FullType(int)),
      'largeThumbnailImageHeight',
      serializers.serialize(object.largeThumbnailImageHeight,
          specifiedType: const FullType(int)),
      'smallThumbnailImageURL',
      serializers.serialize(object.smallThumbnailImageURL,
          specifiedType: const FullType(String)),
      'smallThumbnailImageWidth',
      serializers.serialize(object.smallThumbnailImageWidth,
          specifiedType: const FullType(int)),
      'smallThumbnailImageHeight',
      serializers.serialize(object.smallThumbnailImageHeight,
          specifiedType: const FullType(int)),
      'imageAspectRatio',
      serializers.serialize(object.imageAspectRatio,
          specifiedType: const FullType(double)),
    ];
    Object? value;
    value = object.thumbnailImagePosition;
    if (value != null) {
      result
        ..add('thumbnailImagePosition')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_workBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'likesCount':
          result.likesCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'commentsCount':
          result.commentsCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'imageURL':
          result.imageURL = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'imageWidth':
          result.imageWidth = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'imageHeight':
          result.imageHeight = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'largeThumbnailImageURL':
          result.largeThumbnailImageURL = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'largeThumbnailImageWidth':
          result.largeThumbnailImageWidth = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'largeThumbnailImageHeight':
          result.largeThumbnailImageHeight = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'smallThumbnailImageURL':
          result.smallThumbnailImageURL = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'smallThumbnailImageWidth':
          result.smallThumbnailImageWidth = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'smallThumbnailImageHeight':
          result.smallThumbnailImageHeight = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'thumbnailImagePosition':
          result.thumbnailImagePosition = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'imageAspectRatio':
          result.imageAspectRatio = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_userSerializer
    implements
        StructuredSerializer<
            GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_user> {
  @override
  final Iterable<Type> types = const [
    GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_user,
    _$GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_user
  ];
  @override
  final String wireName =
      'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_user';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_user
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'login',
      serializers.serialize(object.login,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.iconUrl;
    if (value != null) {
      result
        ..add('iconUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_user
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_userBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'login':
          result.login = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'iconUrl':
          result.iconUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GViewerNotificationsData_viewer_notifications__asLikedWorksSummaryNotificationNodeSerializer
    implements
        StructuredSerializer<
            GViewerNotificationsData_viewer_notifications__asLikedWorksSummaryNotificationNode> {
  @override
  final Iterable<Type> types = const [
    GViewerNotificationsData_viewer_notifications__asLikedWorksSummaryNotificationNode,
    _$GViewerNotificationsData_viewer_notifications__asLikedWorksSummaryNotificationNode
  ];
  @override
  final String wireName =
      'GViewerNotificationsData_viewer_notifications__asLikedWorksSummaryNotificationNode';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GViewerNotificationsData_viewer_notifications__asLikedWorksSummaryNotificationNode
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.message;
    if (value != null) {
      result
        ..add('message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GViewerNotificationsData_viewer_notifications__asLikedWorksSummaryNotificationNode
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GViewerNotificationsData_viewer_notifications__asLikedWorksSummaryNotificationNodeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNodeSerializer
    implements
        StructuredSerializer<
            GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode> {
  @override
  final Iterable<Type> types = const [
    GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode,
    _$GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode
  ];
  @override
  final String wireName =
      'GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.message;
    if (value != null) {
      result
        ..add('message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.work;
    if (value != null) {
      result
        ..add('work')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work)));
    }
    return result;
  }

  @override
  GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNodeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'work':
          result.work.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work))!
              as GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work);
          break;
      }
    }

    return result.build();
  }
}

class _$GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_workSerializer
    implements
        StructuredSerializer<
            GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work> {
  @override
  final Iterable<Type> types = const [
    GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work,
    _$GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work
  ];
  @override
  final String wireName =
      'GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'likesCount',
      serializers.serialize(object.likesCount,
          specifiedType: const FullType(int)),
      'commentsCount',
      serializers.serialize(object.commentsCount,
          specifiedType: const FullType(int)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(int)),
      'imageURL',
      serializers.serialize(object.imageURL,
          specifiedType: const FullType(String)),
      'imageWidth',
      serializers.serialize(object.imageWidth,
          specifiedType: const FullType(int)),
      'imageHeight',
      serializers.serialize(object.imageHeight,
          specifiedType: const FullType(int)),
      'largeThumbnailImageURL',
      serializers.serialize(object.largeThumbnailImageURL,
          specifiedType: const FullType(String)),
      'largeThumbnailImageWidth',
      serializers.serialize(object.largeThumbnailImageWidth,
          specifiedType: const FullType(int)),
      'largeThumbnailImageHeight',
      serializers.serialize(object.largeThumbnailImageHeight,
          specifiedType: const FullType(int)),
      'smallThumbnailImageURL',
      serializers.serialize(object.smallThumbnailImageURL,
          specifiedType: const FullType(String)),
      'smallThumbnailImageWidth',
      serializers.serialize(object.smallThumbnailImageWidth,
          specifiedType: const FullType(int)),
      'smallThumbnailImageHeight',
      serializers.serialize(object.smallThumbnailImageHeight,
          specifiedType: const FullType(int)),
      'imageAspectRatio',
      serializers.serialize(object.imageAspectRatio,
          specifiedType: const FullType(double)),
    ];
    Object? value;
    value = object.thumbnailImagePosition;
    if (value != null) {
      result
        ..add('thumbnailImagePosition')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_workBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'likesCount':
          result.likesCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'commentsCount':
          result.commentsCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'imageURL':
          result.imageURL = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'imageWidth':
          result.imageWidth = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'imageHeight':
          result.imageHeight = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'largeThumbnailImageURL':
          result.largeThumbnailImageURL = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'largeThumbnailImageWidth':
          result.largeThumbnailImageWidth = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'largeThumbnailImageHeight':
          result.largeThumbnailImageHeight = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'smallThumbnailImageURL':
          result.smallThumbnailImageURL = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'smallThumbnailImageWidth':
          result.smallThumbnailImageWidth = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'smallThumbnailImageHeight':
          result.smallThumbnailImageHeight = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'thumbnailImagePosition':
          result.thumbnailImagePosition = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'imageAspectRatio':
          result.imageAspectRatio = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNodeSerializer
    implements
        StructuredSerializer<
            GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode> {
  @override
  final Iterable<Type> types = const [
    GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode,
    _$GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode
  ];
  @override
  final String wireName =
      'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.message;
    if (value != null) {
      result
        ..add('message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.work;
    if (value != null) {
      result
        ..add('work')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_user)));
    }
    value = object.sticker;
    if (value != null) {
      result
        ..add('sticker')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_sticker)));
    }
    return result;
  }

  @override
  GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNodeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'work':
          result.work.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work))!
              as GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work);
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_user))!
              as GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_user);
          break;
        case 'sticker':
          result.sticker.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_sticker))!
              as GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_sticker);
          break;
      }
    }

    return result.build();
  }
}

class _$GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_workSerializer
    implements
        StructuredSerializer<
            GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work> {
  @override
  final Iterable<Type> types = const [
    GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work,
    _$GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work
  ];
  @override
  final String wireName =
      'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'likesCount',
      serializers.serialize(object.likesCount,
          specifiedType: const FullType(int)),
      'commentsCount',
      serializers.serialize(object.commentsCount,
          specifiedType: const FullType(int)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(int)),
      'imageURL',
      serializers.serialize(object.imageURL,
          specifiedType: const FullType(String)),
      'imageWidth',
      serializers.serialize(object.imageWidth,
          specifiedType: const FullType(int)),
      'imageHeight',
      serializers.serialize(object.imageHeight,
          specifiedType: const FullType(int)),
      'largeThumbnailImageURL',
      serializers.serialize(object.largeThumbnailImageURL,
          specifiedType: const FullType(String)),
      'largeThumbnailImageWidth',
      serializers.serialize(object.largeThumbnailImageWidth,
          specifiedType: const FullType(int)),
      'largeThumbnailImageHeight',
      serializers.serialize(object.largeThumbnailImageHeight,
          specifiedType: const FullType(int)),
      'smallThumbnailImageURL',
      serializers.serialize(object.smallThumbnailImageURL,
          specifiedType: const FullType(String)),
      'smallThumbnailImageWidth',
      serializers.serialize(object.smallThumbnailImageWidth,
          specifiedType: const FullType(int)),
      'smallThumbnailImageHeight',
      serializers.serialize(object.smallThumbnailImageHeight,
          specifiedType: const FullType(int)),
      'imageAspectRatio',
      serializers.serialize(object.imageAspectRatio,
          specifiedType: const FullType(double)),
    ];
    Object? value;
    value = object.thumbnailImagePosition;
    if (value != null) {
      result
        ..add('thumbnailImagePosition')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_workBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'likesCount':
          result.likesCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'commentsCount':
          result.commentsCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'imageURL':
          result.imageURL = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'imageWidth':
          result.imageWidth = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'imageHeight':
          result.imageHeight = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'largeThumbnailImageURL':
          result.largeThumbnailImageURL = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'largeThumbnailImageWidth':
          result.largeThumbnailImageWidth = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'largeThumbnailImageHeight':
          result.largeThumbnailImageHeight = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'smallThumbnailImageURL':
          result.smallThumbnailImageURL = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'smallThumbnailImageWidth':
          result.smallThumbnailImageWidth = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'smallThumbnailImageHeight':
          result.smallThumbnailImageHeight = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'thumbnailImagePosition':
          result.thumbnailImagePosition = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'imageAspectRatio':
          result.imageAspectRatio = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_userSerializer
    implements
        StructuredSerializer<
            GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_user> {
  @override
  final Iterable<Type> types = const [
    GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_user,
    _$GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_user
  ];
  @override
  final String wireName =
      'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_user';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_user
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'login',
      serializers.serialize(object.login,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.iconUrl;
    if (value != null) {
      result
        ..add('iconUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_user
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_userBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'login':
          result.login = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'iconUrl':
          result.iconUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_stickerSerializer
    implements
        StructuredSerializer<
            GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_sticker> {
  @override
  final Iterable<Type> types = const [
    GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_sticker,
    _$GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_sticker
  ];
  @override
  final String wireName =
      'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_sticker';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_sticker
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'likesCount',
      serializers.serialize(object.likesCount,
          specifiedType: const FullType(int)),
      'downloadsCount',
      serializers.serialize(object.downloadsCount,
          specifiedType: const FullType(int)),
      'usesCount',
      serializers.serialize(object.usesCount,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.imageUrl;
    if (value != null) {
      result
        ..add('imageUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_sticker
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_stickerBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'imageUrl':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'likesCount':
          result.likesCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'downloadsCount':
          result.downloadsCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'usesCount':
          result.usesCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNodeSerializer
    implements
        StructuredSerializer<
            GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode> {
  @override
  final Iterable<Type> types = const [
    GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode,
    _$GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode
  ];
  @override
  final String wireName =
      'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.message;
    if (value != null) {
      result
        ..add('message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.work;
    if (value != null) {
      result
        ..add('work')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_user)));
    }
    value = object.sticker;
    if (value != null) {
      result
        ..add('sticker')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_sticker)));
    }
    return result;
  }

  @override
  GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNodeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'work':
          result.work.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work))!
              as GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work);
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_user))!
              as GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_user);
          break;
        case 'sticker':
          result.sticker.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_sticker))!
              as GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_sticker);
          break;
      }
    }

    return result.build();
  }
}

class _$GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_workSerializer
    implements
        StructuredSerializer<
            GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work> {
  @override
  final Iterable<Type> types = const [
    GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work,
    _$GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work
  ];
  @override
  final String wireName =
      'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'likesCount',
      serializers.serialize(object.likesCount,
          specifiedType: const FullType(int)),
      'commentsCount',
      serializers.serialize(object.commentsCount,
          specifiedType: const FullType(int)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(int)),
      'imageURL',
      serializers.serialize(object.imageURL,
          specifiedType: const FullType(String)),
      'imageWidth',
      serializers.serialize(object.imageWidth,
          specifiedType: const FullType(int)),
      'imageHeight',
      serializers.serialize(object.imageHeight,
          specifiedType: const FullType(int)),
      'largeThumbnailImageURL',
      serializers.serialize(object.largeThumbnailImageURL,
          specifiedType: const FullType(String)),
      'largeThumbnailImageWidth',
      serializers.serialize(object.largeThumbnailImageWidth,
          specifiedType: const FullType(int)),
      'largeThumbnailImageHeight',
      serializers.serialize(object.largeThumbnailImageHeight,
          specifiedType: const FullType(int)),
      'smallThumbnailImageURL',
      serializers.serialize(object.smallThumbnailImageURL,
          specifiedType: const FullType(String)),
      'smallThumbnailImageWidth',
      serializers.serialize(object.smallThumbnailImageWidth,
          specifiedType: const FullType(int)),
      'smallThumbnailImageHeight',
      serializers.serialize(object.smallThumbnailImageHeight,
          specifiedType: const FullType(int)),
      'imageAspectRatio',
      serializers.serialize(object.imageAspectRatio,
          specifiedType: const FullType(double)),
    ];
    Object? value;
    value = object.thumbnailImagePosition;
    if (value != null) {
      result
        ..add('thumbnailImagePosition')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_workBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'likesCount':
          result.likesCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'commentsCount':
          result.commentsCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'imageURL':
          result.imageURL = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'imageWidth':
          result.imageWidth = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'imageHeight':
          result.imageHeight = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'largeThumbnailImageURL':
          result.largeThumbnailImageURL = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'largeThumbnailImageWidth':
          result.largeThumbnailImageWidth = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'largeThumbnailImageHeight':
          result.largeThumbnailImageHeight = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'smallThumbnailImageURL':
          result.smallThumbnailImageURL = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'smallThumbnailImageWidth':
          result.smallThumbnailImageWidth = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'smallThumbnailImageHeight':
          result.smallThumbnailImageHeight = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'thumbnailImagePosition':
          result.thumbnailImagePosition = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'imageAspectRatio':
          result.imageAspectRatio = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_userSerializer
    implements
        StructuredSerializer<
            GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_user> {
  @override
  final Iterable<Type> types = const [
    GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_user,
    _$GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_user
  ];
  @override
  final String wireName =
      'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_user';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_user
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'login',
      serializers.serialize(object.login,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.iconUrl;
    if (value != null) {
      result
        ..add('iconUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_user
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_userBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'login':
          result.login = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'iconUrl':
          result.iconUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_stickerSerializer
    implements
        StructuredSerializer<
            GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_sticker> {
  @override
  final Iterable<Type> types = const [
    GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_sticker,
    _$GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_sticker
  ];
  @override
  final String wireName =
      'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_sticker';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_sticker
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'likesCount',
      serializers.serialize(object.likesCount,
          specifiedType: const FullType(int)),
      'downloadsCount',
      serializers.serialize(object.downloadsCount,
          specifiedType: const FullType(int)),
      'usesCount',
      serializers.serialize(object.usesCount,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.imageUrl;
    if (value != null) {
      result
        ..add('imageUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_sticker
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_stickerBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'imageUrl':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'likesCount':
          result.likesCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'downloadsCount':
          result.downloadsCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'usesCount':
          result.usesCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GViewerNotificationsData_viewer_notifications__asFollowNotificationNodeSerializer
    implements
        StructuredSerializer<
            GViewerNotificationsData_viewer_notifications__asFollowNotificationNode> {
  @override
  final Iterable<Type> types = const [
    GViewerNotificationsData_viewer_notifications__asFollowNotificationNode,
    _$GViewerNotificationsData_viewer_notifications__asFollowNotificationNode
  ];
  @override
  final String wireName =
      'GViewerNotificationsData_viewer_notifications__asFollowNotificationNode';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GViewerNotificationsData_viewer_notifications__asFollowNotificationNode
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_user)));
    }
    return result;
  }

  @override
  GViewerNotificationsData_viewer_notifications__asFollowNotificationNode
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GViewerNotificationsData_viewer_notifications__asFollowNotificationNodeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_user))!
              as GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_user);
          break;
      }
    }

    return result.build();
  }
}

class _$GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_userSerializer
    implements
        StructuredSerializer<
            GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_user> {
  @override
  final Iterable<Type> types = const [
    GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_user,
    _$GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_user
  ];
  @override
  final String wireName =
      'GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_user';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_user
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'login',
      serializers.serialize(object.login,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.iconUrl;
    if (value != null) {
      result
        ..add('iconUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_user
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_userBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'login':
          result.login = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'iconUrl':
          result.iconUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GViewerNotificationsData extends GViewerNotificationsData {
  @override
  final String G__typename;
  @override
  final GViewerNotificationsData_viewer? viewer;

  factory _$GViewerNotificationsData(
          [void Function(GViewerNotificationsDataBuilder)? updates]) =>
      (new GViewerNotificationsDataBuilder()..update(updates))._build();

  _$GViewerNotificationsData._({required this.G__typename, this.viewer})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GViewerNotificationsData', 'G__typename');
  }

  @override
  GViewerNotificationsData rebuild(
          void Function(GViewerNotificationsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GViewerNotificationsDataBuilder toBuilder() =>
      new GViewerNotificationsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GViewerNotificationsData &&
        G__typename == other.G__typename &&
        viewer == other.viewer;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, viewer.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GViewerNotificationsData')
          ..add('G__typename', G__typename)
          ..add('viewer', viewer))
        .toString();
  }
}

class GViewerNotificationsDataBuilder
    implements
        Builder<GViewerNotificationsData, GViewerNotificationsDataBuilder> {
  _$GViewerNotificationsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GViewerNotificationsData_viewerBuilder? _viewer;
  GViewerNotificationsData_viewerBuilder get viewer =>
      _$this._viewer ??= new GViewerNotificationsData_viewerBuilder();
  set viewer(GViewerNotificationsData_viewerBuilder? viewer) =>
      _$this._viewer = viewer;

  GViewerNotificationsDataBuilder() {
    GViewerNotificationsData._initializeBuilder(this);
  }

  GViewerNotificationsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _viewer = $v.viewer?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GViewerNotificationsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GViewerNotificationsData;
  }

  @override
  void update(void Function(GViewerNotificationsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GViewerNotificationsData build() => _build();

  _$GViewerNotificationsData _build() {
    _$GViewerNotificationsData _$result;
    try {
      _$result = _$v ??
          new _$GViewerNotificationsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GViewerNotificationsData', 'G__typename'),
              viewer: _viewer?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'viewer';
        _viewer?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GViewerNotificationsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GViewerNotificationsData_viewer
    extends GViewerNotificationsData_viewer {
  @override
  final String G__typename;
  @override
  final BuiltList<GViewerNotificationsData_viewer_notifications> notifications;

  factory _$GViewerNotificationsData_viewer(
          [void Function(GViewerNotificationsData_viewerBuilder)? updates]) =>
      (new GViewerNotificationsData_viewerBuilder()..update(updates))._build();

  _$GViewerNotificationsData_viewer._(
      {required this.G__typename, required this.notifications})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GViewerNotificationsData_viewer', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        notifications, r'GViewerNotificationsData_viewer', 'notifications');
  }

  @override
  GViewerNotificationsData_viewer rebuild(
          void Function(GViewerNotificationsData_viewerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GViewerNotificationsData_viewerBuilder toBuilder() =>
      new GViewerNotificationsData_viewerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GViewerNotificationsData_viewer &&
        G__typename == other.G__typename &&
        notifications == other.notifications;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, notifications.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GViewerNotificationsData_viewer')
          ..add('G__typename', G__typename)
          ..add('notifications', notifications))
        .toString();
  }
}

class GViewerNotificationsData_viewerBuilder
    implements
        Builder<GViewerNotificationsData_viewer,
            GViewerNotificationsData_viewerBuilder> {
  _$GViewerNotificationsData_viewer? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GViewerNotificationsData_viewer_notifications>? _notifications;
  ListBuilder<GViewerNotificationsData_viewer_notifications>
      get notifications => _$this._notifications ??=
          new ListBuilder<GViewerNotificationsData_viewer_notifications>();
  set notifications(
          ListBuilder<GViewerNotificationsData_viewer_notifications>?
              notifications) =>
      _$this._notifications = notifications;

  GViewerNotificationsData_viewerBuilder() {
    GViewerNotificationsData_viewer._initializeBuilder(this);
  }

  GViewerNotificationsData_viewerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _notifications = $v.notifications.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GViewerNotificationsData_viewer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GViewerNotificationsData_viewer;
  }

  @override
  void update(void Function(GViewerNotificationsData_viewerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GViewerNotificationsData_viewer build() => _build();

  _$GViewerNotificationsData_viewer _build() {
    _$GViewerNotificationsData_viewer _$result;
    try {
      _$result = _$v ??
          new _$GViewerNotificationsData_viewer._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GViewerNotificationsData_viewer', 'G__typename'),
              notifications: notifications.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'notifications';
        notifications.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GViewerNotificationsData_viewer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GViewerNotificationsData_viewer_notifications__base
    extends GViewerNotificationsData_viewer_notifications__base {
  @override
  final String G__typename;

  factory _$GViewerNotificationsData_viewer_notifications__base(
          [void Function(
                  GViewerNotificationsData_viewer_notifications__baseBuilder)?
              updates]) =>
      (new GViewerNotificationsData_viewer_notifications__baseBuilder()
            ..update(updates))
          ._build();

  _$GViewerNotificationsData_viewer_notifications__base._(
      {required this.G__typename})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GViewerNotificationsData_viewer_notifications__base', 'G__typename');
  }

  @override
  GViewerNotificationsData_viewer_notifications__base rebuild(
          void Function(
                  GViewerNotificationsData_viewer_notifications__baseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GViewerNotificationsData_viewer_notifications__baseBuilder toBuilder() =>
      new GViewerNotificationsData_viewer_notifications__baseBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GViewerNotificationsData_viewer_notifications__base &&
        G__typename == other.G__typename;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GViewerNotificationsData_viewer_notifications__base')
          ..add('G__typename', G__typename))
        .toString();
  }
}

class GViewerNotificationsData_viewer_notifications__baseBuilder
    implements
        Builder<GViewerNotificationsData_viewer_notifications__base,
            GViewerNotificationsData_viewer_notifications__baseBuilder> {
  _$GViewerNotificationsData_viewer_notifications__base? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GViewerNotificationsData_viewer_notifications__baseBuilder() {
    GViewerNotificationsData_viewer_notifications__base._initializeBuilder(
        this);
  }

  GViewerNotificationsData_viewer_notifications__baseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GViewerNotificationsData_viewer_notifications__base other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GViewerNotificationsData_viewer_notifications__base;
  }

  @override
  void update(
      void Function(GViewerNotificationsData_viewer_notifications__baseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GViewerNotificationsData_viewer_notifications__base build() => _build();

  _$GViewerNotificationsData_viewer_notifications__base _build() {
    final _$result = _$v ??
        new _$GViewerNotificationsData_viewer_notifications__base._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GViewerNotificationsData_viewer_notifications__base',
                'G__typename'));
    replace(_$result);
    return _$result;
  }
}

class _$GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode
    extends GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final int createdAt;
  @override
  final bool isAnonymous;
  @override
  final GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work?
      work;
  @override
  final GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_user?
      user;

  factory _$GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode(
          [void Function(
                  GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNodeBuilder)?
              updates]) =>
      (new GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNodeBuilder()
            ..update(updates))
          ._build();

  _$GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode._(
      {required this.G__typename,
      required this.id,
      required this.createdAt,
      required this.isAnonymous,
      this.work,
      this.user})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        createdAt,
        r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode',
        'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        isAnonymous,
        r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode',
        'isAnonymous');
  }

  @override
  GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode
      rebuild(
              void Function(
                      GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNodeBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNodeBuilder
      toBuilder() =>
          new GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNodeBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode &&
        G__typename == other.G__typename &&
        id == other.id &&
        createdAt == other.createdAt &&
        isAnonymous == other.isAnonymous &&
        work == other.work &&
        user == other.user;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, isAnonymous.hashCode);
    _$hash = $jc(_$hash, work.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('createdAt', createdAt)
          ..add('isAnonymous', isAnonymous)
          ..add('work', work)
          ..add('user', user))
        .toString();
  }
}

class GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNodeBuilder
    implements
        Builder<
            GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode,
            GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNodeBuilder> {
  _$GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _createdAt;
  int? get createdAt => _$this._createdAt;
  set createdAt(int? createdAt) => _$this._createdAt = createdAt;

  bool? _isAnonymous;
  bool? get isAnonymous => _$this._isAnonymous;
  set isAnonymous(bool? isAnonymous) => _$this._isAnonymous = isAnonymous;

  GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_workBuilder?
      _work;
  GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_workBuilder
      get work => _$this._work ??=
          new GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_workBuilder();
  set work(
          GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_workBuilder?
              work) =>
      _$this._work = work;

  GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_userBuilder?
      _user;
  GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_userBuilder
      get user => _$this._user ??=
          new GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_userBuilder();
  set user(
          GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_userBuilder?
              user) =>
      _$this._user = user;

  GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNodeBuilder() {
    GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode
        ._initializeBuilder(this);
  }

  GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNodeBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _createdAt = $v.createdAt;
      _isAnonymous = $v.isAnonymous;
      _work = $v.work?.toBuilder();
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode;
  }

  @override
  void update(
      void Function(
              GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNodeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode
      build() => _build();

  _$GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode
      _build() {
    _$GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode
        _$result;
    try {
      _$result = _$v ??
          new _$GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode',
                  'id'),
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt,
                  r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode',
                  'createdAt'),
              isAnonymous: BuiltValueNullFieldError.checkNotNull(
                  isAnonymous,
                  r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode',
                  'isAnonymous'),
              work: _work?.build(),
              user: _user?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'work';
        _work?.build();
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work
    extends GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String title;
  @override
  final int likesCount;
  @override
  final int commentsCount;
  @override
  final int createdAt;
  @override
  final String imageURL;
  @override
  final int imageWidth;
  @override
  final int imageHeight;
  @override
  final String largeThumbnailImageURL;
  @override
  final int largeThumbnailImageWidth;
  @override
  final int largeThumbnailImageHeight;
  @override
  final String smallThumbnailImageURL;
  @override
  final int smallThumbnailImageWidth;
  @override
  final int smallThumbnailImageHeight;
  @override
  final double? thumbnailImagePosition;
  @override
  final double imageAspectRatio;

  factory _$GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work(
          [void Function(
                  GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_workBuilder)?
              updates]) =>
      (new GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_workBuilder()
            ..update(updates))
          ._build();

  _$GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work._(
      {required this.G__typename,
      required this.id,
      required this.title,
      required this.likesCount,
      required this.commentsCount,
      required this.createdAt,
      required this.imageURL,
      required this.imageWidth,
      required this.imageHeight,
      required this.largeThumbnailImageURL,
      required this.largeThumbnailImageWidth,
      required this.largeThumbnailImageHeight,
      required this.smallThumbnailImageURL,
      required this.smallThumbnailImageWidth,
      required this.smallThumbnailImageHeight,
      this.thumbnailImagePosition,
      required this.imageAspectRatio})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        title,
        r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work',
        'title');
    BuiltValueNullFieldError.checkNotNull(
        likesCount,
        r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work',
        'likesCount');
    BuiltValueNullFieldError.checkNotNull(
        commentsCount,
        r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work',
        'commentsCount');
    BuiltValueNullFieldError.checkNotNull(
        createdAt,
        r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work',
        'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        imageURL,
        r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work',
        'imageURL');
    BuiltValueNullFieldError.checkNotNull(
        imageWidth,
        r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work',
        'imageWidth');
    BuiltValueNullFieldError.checkNotNull(
        imageHeight,
        r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work',
        'imageHeight');
    BuiltValueNullFieldError.checkNotNull(
        largeThumbnailImageURL,
        r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work',
        'largeThumbnailImageURL');
    BuiltValueNullFieldError.checkNotNull(
        largeThumbnailImageWidth,
        r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work',
        'largeThumbnailImageWidth');
    BuiltValueNullFieldError.checkNotNull(
        largeThumbnailImageHeight,
        r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work',
        'largeThumbnailImageHeight');
    BuiltValueNullFieldError.checkNotNull(
        smallThumbnailImageURL,
        r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work',
        'smallThumbnailImageURL');
    BuiltValueNullFieldError.checkNotNull(
        smallThumbnailImageWidth,
        r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work',
        'smallThumbnailImageWidth');
    BuiltValueNullFieldError.checkNotNull(
        smallThumbnailImageHeight,
        r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work',
        'smallThumbnailImageHeight');
    BuiltValueNullFieldError.checkNotNull(
        imageAspectRatio,
        r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work',
        'imageAspectRatio');
  }

  @override
  GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work
      rebuild(
              void Function(
                      GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_workBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_workBuilder
      toBuilder() =>
          new GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_workBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work &&
        G__typename == other.G__typename &&
        id == other.id &&
        title == other.title &&
        likesCount == other.likesCount &&
        commentsCount == other.commentsCount &&
        createdAt == other.createdAt &&
        imageURL == other.imageURL &&
        imageWidth == other.imageWidth &&
        imageHeight == other.imageHeight &&
        largeThumbnailImageURL == other.largeThumbnailImageURL &&
        largeThumbnailImageWidth == other.largeThumbnailImageWidth &&
        largeThumbnailImageHeight == other.largeThumbnailImageHeight &&
        smallThumbnailImageURL == other.smallThumbnailImageURL &&
        smallThumbnailImageWidth == other.smallThumbnailImageWidth &&
        smallThumbnailImageHeight == other.smallThumbnailImageHeight &&
        thumbnailImagePosition == other.thumbnailImagePosition &&
        imageAspectRatio == other.imageAspectRatio;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, likesCount.hashCode);
    _$hash = $jc(_$hash, commentsCount.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, imageURL.hashCode);
    _$hash = $jc(_$hash, imageWidth.hashCode);
    _$hash = $jc(_$hash, imageHeight.hashCode);
    _$hash = $jc(_$hash, largeThumbnailImageURL.hashCode);
    _$hash = $jc(_$hash, largeThumbnailImageWidth.hashCode);
    _$hash = $jc(_$hash, largeThumbnailImageHeight.hashCode);
    _$hash = $jc(_$hash, smallThumbnailImageURL.hashCode);
    _$hash = $jc(_$hash, smallThumbnailImageWidth.hashCode);
    _$hash = $jc(_$hash, smallThumbnailImageHeight.hashCode);
    _$hash = $jc(_$hash, thumbnailImagePosition.hashCode);
    _$hash = $jc(_$hash, imageAspectRatio.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title)
          ..add('likesCount', likesCount)
          ..add('commentsCount', commentsCount)
          ..add('createdAt', createdAt)
          ..add('imageURL', imageURL)
          ..add('imageWidth', imageWidth)
          ..add('imageHeight', imageHeight)
          ..add('largeThumbnailImageURL', largeThumbnailImageURL)
          ..add('largeThumbnailImageWidth', largeThumbnailImageWidth)
          ..add('largeThumbnailImageHeight', largeThumbnailImageHeight)
          ..add('smallThumbnailImageURL', smallThumbnailImageURL)
          ..add('smallThumbnailImageWidth', smallThumbnailImageWidth)
          ..add('smallThumbnailImageHeight', smallThumbnailImageHeight)
          ..add('thumbnailImagePosition', thumbnailImagePosition)
          ..add('imageAspectRatio', imageAspectRatio))
        .toString();
  }
}

class GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_workBuilder
    implements
        Builder<
            GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work,
            GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_workBuilder> {
  _$GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  int? _likesCount;
  int? get likesCount => _$this._likesCount;
  set likesCount(int? likesCount) => _$this._likesCount = likesCount;

  int? _commentsCount;
  int? get commentsCount => _$this._commentsCount;
  set commentsCount(int? commentsCount) =>
      _$this._commentsCount = commentsCount;

  int? _createdAt;
  int? get createdAt => _$this._createdAt;
  set createdAt(int? createdAt) => _$this._createdAt = createdAt;

  String? _imageURL;
  String? get imageURL => _$this._imageURL;
  set imageURL(String? imageURL) => _$this._imageURL = imageURL;

  int? _imageWidth;
  int? get imageWidth => _$this._imageWidth;
  set imageWidth(int? imageWidth) => _$this._imageWidth = imageWidth;

  int? _imageHeight;
  int? get imageHeight => _$this._imageHeight;
  set imageHeight(int? imageHeight) => _$this._imageHeight = imageHeight;

  String? _largeThumbnailImageURL;
  String? get largeThumbnailImageURL => _$this._largeThumbnailImageURL;
  set largeThumbnailImageURL(String? largeThumbnailImageURL) =>
      _$this._largeThumbnailImageURL = largeThumbnailImageURL;

  int? _largeThumbnailImageWidth;
  int? get largeThumbnailImageWidth => _$this._largeThumbnailImageWidth;
  set largeThumbnailImageWidth(int? largeThumbnailImageWidth) =>
      _$this._largeThumbnailImageWidth = largeThumbnailImageWidth;

  int? _largeThumbnailImageHeight;
  int? get largeThumbnailImageHeight => _$this._largeThumbnailImageHeight;
  set largeThumbnailImageHeight(int? largeThumbnailImageHeight) =>
      _$this._largeThumbnailImageHeight = largeThumbnailImageHeight;

  String? _smallThumbnailImageURL;
  String? get smallThumbnailImageURL => _$this._smallThumbnailImageURL;
  set smallThumbnailImageURL(String? smallThumbnailImageURL) =>
      _$this._smallThumbnailImageURL = smallThumbnailImageURL;

  int? _smallThumbnailImageWidth;
  int? get smallThumbnailImageWidth => _$this._smallThumbnailImageWidth;
  set smallThumbnailImageWidth(int? smallThumbnailImageWidth) =>
      _$this._smallThumbnailImageWidth = smallThumbnailImageWidth;

  int? _smallThumbnailImageHeight;
  int? get smallThumbnailImageHeight => _$this._smallThumbnailImageHeight;
  set smallThumbnailImageHeight(int? smallThumbnailImageHeight) =>
      _$this._smallThumbnailImageHeight = smallThumbnailImageHeight;

  double? _thumbnailImagePosition;
  double? get thumbnailImagePosition => _$this._thumbnailImagePosition;
  set thumbnailImagePosition(double? thumbnailImagePosition) =>
      _$this._thumbnailImagePosition = thumbnailImagePosition;

  double? _imageAspectRatio;
  double? get imageAspectRatio => _$this._imageAspectRatio;
  set imageAspectRatio(double? imageAspectRatio) =>
      _$this._imageAspectRatio = imageAspectRatio;

  GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_workBuilder() {
    GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work
        ._initializeBuilder(this);
  }

  GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_workBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _title = $v.title;
      _likesCount = $v.likesCount;
      _commentsCount = $v.commentsCount;
      _createdAt = $v.createdAt;
      _imageURL = $v.imageURL;
      _imageWidth = $v.imageWidth;
      _imageHeight = $v.imageHeight;
      _largeThumbnailImageURL = $v.largeThumbnailImageURL;
      _largeThumbnailImageWidth = $v.largeThumbnailImageWidth;
      _largeThumbnailImageHeight = $v.largeThumbnailImageHeight;
      _smallThumbnailImageURL = $v.smallThumbnailImageURL;
      _smallThumbnailImageWidth = $v.smallThumbnailImageWidth;
      _smallThumbnailImageHeight = $v.smallThumbnailImageHeight;
      _thumbnailImagePosition = $v.thumbnailImagePosition;
      _imageAspectRatio = $v.imageAspectRatio;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work;
  }

  @override
  void update(
      void Function(
              GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_workBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work
      build() => _build();

  _$GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work
      _build() {
    final _$result = _$v ??
        new _$GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work', 'id'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work', 'title'),
            likesCount: BuiltValueNullFieldError.checkNotNull(
                likesCount,
                r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work',
                'likesCount'),
            commentsCount: BuiltValueNullFieldError.checkNotNull(
                commentsCount,
                r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work',
                'commentsCount'),
            createdAt: BuiltValueNullFieldError.checkNotNull(createdAt, r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work', 'createdAt'),
            imageURL: BuiltValueNullFieldError.checkNotNull(imageURL, r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work', 'imageURL'),
            imageWidth: BuiltValueNullFieldError.checkNotNull(imageWidth, r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work', 'imageWidth'),
            imageHeight: BuiltValueNullFieldError.checkNotNull(imageHeight, r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work', 'imageHeight'),
            largeThumbnailImageURL: BuiltValueNullFieldError.checkNotNull(largeThumbnailImageURL, r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work', 'largeThumbnailImageURL'),
            largeThumbnailImageWidth: BuiltValueNullFieldError.checkNotNull(largeThumbnailImageWidth, r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work', 'largeThumbnailImageWidth'),
            largeThumbnailImageHeight: BuiltValueNullFieldError.checkNotNull(largeThumbnailImageHeight, r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work', 'largeThumbnailImageHeight'),
            smallThumbnailImageURL: BuiltValueNullFieldError.checkNotNull(smallThumbnailImageURL, r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work', 'smallThumbnailImageURL'),
            smallThumbnailImageWidth: BuiltValueNullFieldError.checkNotNull(smallThumbnailImageWidth, r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work', 'smallThumbnailImageWidth'),
            smallThumbnailImageHeight: BuiltValueNullFieldError.checkNotNull(smallThumbnailImageHeight, r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work', 'smallThumbnailImageHeight'),
            thumbnailImagePosition: thumbnailImagePosition,
            imageAspectRatio: BuiltValueNullFieldError.checkNotNull(imageAspectRatio, r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_work', 'imageAspectRatio'));
    replace(_$result);
    return _$result;
  }
}

class _$GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_user
    extends GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_user {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String login;
  @override
  final String name;
  @override
  final String? iconUrl;

  factory _$GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_user(
          [void Function(
                  GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_userBuilder)?
              updates]) =>
      (new GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_userBuilder()
            ..update(updates))
          ._build();

  _$GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_user._(
      {required this.G__typename,
      required this.id,
      required this.login,
      required this.name,
      this.iconUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_user',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_user',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        login,
        r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_user',
        'login');
    BuiltValueNullFieldError.checkNotNull(
        name,
        r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_user',
        'name');
  }

  @override
  GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_user
      rebuild(
              void Function(
                      GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_userBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_userBuilder
      toBuilder() =>
          new GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_userBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_user &&
        G__typename == other.G__typename &&
        id == other.id &&
        login == other.login &&
        name == other.name &&
        iconUrl == other.iconUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, login.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, iconUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_user')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('login', login)
          ..add('name', name)
          ..add('iconUrl', iconUrl))
        .toString();
  }
}

class GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_userBuilder
    implements
        Builder<
            GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_user,
            GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_userBuilder> {
  _$GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_user?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _login;
  String? get login => _$this._login;
  set login(String? login) => _$this._login = login;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _iconUrl;
  String? get iconUrl => _$this._iconUrl;
  set iconUrl(String? iconUrl) => _$this._iconUrl = iconUrl;

  GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_userBuilder() {
    GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_user
        ._initializeBuilder(this);
  }

  GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_userBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _login = $v.login;
      _name = $v.name;
      _iconUrl = $v.iconUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_user
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_user;
  }

  @override
  void update(
      void Function(
              GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_userBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_user
      build() => _build();

  _$GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_user
      _build() {
    final _$result = _$v ??
        new _$GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_user._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_user',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(id,
                r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_user', 'id'),
            login: BuiltValueNullFieldError.checkNotNull(
                login,
                r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_user',
                'login'),
            name: BuiltValueNullFieldError.checkNotNull(
                name,
                r'GViewerNotificationsData_viewer_notifications__asLikedWorkNotificationNode_user',
                'name'),
            iconUrl: iconUrl);
    replace(_$result);
    return _$result;
  }
}

class _$GViewerNotificationsData_viewer_notifications__asLikedWorksSummaryNotificationNode
    extends GViewerNotificationsData_viewer_notifications__asLikedWorksSummaryNotificationNode {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final int createdAt;
  @override
  final String? message;

  factory _$GViewerNotificationsData_viewer_notifications__asLikedWorksSummaryNotificationNode(
          [void Function(
                  GViewerNotificationsData_viewer_notifications__asLikedWorksSummaryNotificationNodeBuilder)?
              updates]) =>
      (new GViewerNotificationsData_viewer_notifications__asLikedWorksSummaryNotificationNodeBuilder()
            ..update(updates))
          ._build();

  _$GViewerNotificationsData_viewer_notifications__asLikedWorksSummaryNotificationNode._(
      {required this.G__typename,
      required this.id,
      required this.createdAt,
      this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GViewerNotificationsData_viewer_notifications__asLikedWorksSummaryNotificationNode',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GViewerNotificationsData_viewer_notifications__asLikedWorksSummaryNotificationNode',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        createdAt,
        r'GViewerNotificationsData_viewer_notifications__asLikedWorksSummaryNotificationNode',
        'createdAt');
  }

  @override
  GViewerNotificationsData_viewer_notifications__asLikedWorksSummaryNotificationNode
      rebuild(
              void Function(
                      GViewerNotificationsData_viewer_notifications__asLikedWorksSummaryNotificationNodeBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GViewerNotificationsData_viewer_notifications__asLikedWorksSummaryNotificationNodeBuilder
      toBuilder() =>
          new GViewerNotificationsData_viewer_notifications__asLikedWorksSummaryNotificationNodeBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GViewerNotificationsData_viewer_notifications__asLikedWorksSummaryNotificationNode &&
        G__typename == other.G__typename &&
        id == other.id &&
        createdAt == other.createdAt &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GViewerNotificationsData_viewer_notifications__asLikedWorksSummaryNotificationNode')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('createdAt', createdAt)
          ..add('message', message))
        .toString();
  }
}

class GViewerNotificationsData_viewer_notifications__asLikedWorksSummaryNotificationNodeBuilder
    implements
        Builder<
            GViewerNotificationsData_viewer_notifications__asLikedWorksSummaryNotificationNode,
            GViewerNotificationsData_viewer_notifications__asLikedWorksSummaryNotificationNodeBuilder> {
  _$GViewerNotificationsData_viewer_notifications__asLikedWorksSummaryNotificationNode?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _createdAt;
  int? get createdAt => _$this._createdAt;
  set createdAt(int? createdAt) => _$this._createdAt = createdAt;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GViewerNotificationsData_viewer_notifications__asLikedWorksSummaryNotificationNodeBuilder() {
    GViewerNotificationsData_viewer_notifications__asLikedWorksSummaryNotificationNode
        ._initializeBuilder(this);
  }

  GViewerNotificationsData_viewer_notifications__asLikedWorksSummaryNotificationNodeBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _createdAt = $v.createdAt;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GViewerNotificationsData_viewer_notifications__asLikedWorksSummaryNotificationNode
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GViewerNotificationsData_viewer_notifications__asLikedWorksSummaryNotificationNode;
  }

  @override
  void update(
      void Function(
              GViewerNotificationsData_viewer_notifications__asLikedWorksSummaryNotificationNodeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GViewerNotificationsData_viewer_notifications__asLikedWorksSummaryNotificationNode
      build() => _build();

  _$GViewerNotificationsData_viewer_notifications__asLikedWorksSummaryNotificationNode
      _build() {
    final _$result = _$v ??
        new _$GViewerNotificationsData_viewer_notifications__asLikedWorksSummaryNotificationNode._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GViewerNotificationsData_viewer_notifications__asLikedWorksSummaryNotificationNode',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                r'GViewerNotificationsData_viewer_notifications__asLikedWorksSummaryNotificationNode',
                'id'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt,
                r'GViewerNotificationsData_viewer_notifications__asLikedWorksSummaryNotificationNode',
                'createdAt'),
            message: message);
    replace(_$result);
    return _$result;
  }
}

class _$GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode
    extends GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final int createdAt;
  @override
  final String? message;
  @override
  final GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work?
      work;

  factory _$GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode(
          [void Function(
                  GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNodeBuilder)?
              updates]) =>
      (new GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNodeBuilder()
            ..update(updates))
          ._build();

  _$GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode._(
      {required this.G__typename,
      required this.id,
      required this.createdAt,
      this.message,
      this.work})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        createdAt,
        r'GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode',
        'createdAt');
  }

  @override
  GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode
      rebuild(
              void Function(
                      GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNodeBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNodeBuilder
      toBuilder() =>
          new GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNodeBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode &&
        G__typename == other.G__typename &&
        id == other.id &&
        createdAt == other.createdAt &&
        message == other.message &&
        work == other.work;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, work.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('createdAt', createdAt)
          ..add('message', message)
          ..add('work', work))
        .toString();
  }
}

class GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNodeBuilder
    implements
        Builder<
            GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode,
            GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNodeBuilder> {
  _$GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _createdAt;
  int? get createdAt => _$this._createdAt;
  set createdAt(int? createdAt) => _$this._createdAt = createdAt;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_workBuilder?
      _work;
  GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_workBuilder
      get work => _$this._work ??=
          new GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_workBuilder();
  set work(
          GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_workBuilder?
              work) =>
      _$this._work = work;

  GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNodeBuilder() {
    GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode
        ._initializeBuilder(this);
  }

  GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNodeBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _createdAt = $v.createdAt;
      _message = $v.message;
      _work = $v.work?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode;
  }

  @override
  void update(
      void Function(
              GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNodeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode
      build() => _build();

  _$GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode
      _build() {
    _$GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode
        _$result;
    try {
      _$result = _$v ??
          new _$GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode',
                  'id'),
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt,
                  r'GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode',
                  'createdAt'),
              message: message,
              work: _work?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'work';
        _work?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work
    extends GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String title;
  @override
  final int likesCount;
  @override
  final int commentsCount;
  @override
  final int createdAt;
  @override
  final String imageURL;
  @override
  final int imageWidth;
  @override
  final int imageHeight;
  @override
  final String largeThumbnailImageURL;
  @override
  final int largeThumbnailImageWidth;
  @override
  final int largeThumbnailImageHeight;
  @override
  final String smallThumbnailImageURL;
  @override
  final int smallThumbnailImageWidth;
  @override
  final int smallThumbnailImageHeight;
  @override
  final double? thumbnailImagePosition;
  @override
  final double imageAspectRatio;

  factory _$GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work(
          [void Function(
                  GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_workBuilder)?
              updates]) =>
      (new GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_workBuilder()
            ..update(updates))
          ._build();

  _$GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work._(
      {required this.G__typename,
      required this.id,
      required this.title,
      required this.likesCount,
      required this.commentsCount,
      required this.createdAt,
      required this.imageURL,
      required this.imageWidth,
      required this.imageHeight,
      required this.largeThumbnailImageURL,
      required this.largeThumbnailImageWidth,
      required this.largeThumbnailImageHeight,
      required this.smallThumbnailImageURL,
      required this.smallThumbnailImageWidth,
      required this.smallThumbnailImageHeight,
      this.thumbnailImagePosition,
      required this.imageAspectRatio})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        title,
        r'GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work',
        'title');
    BuiltValueNullFieldError.checkNotNull(
        likesCount,
        r'GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work',
        'likesCount');
    BuiltValueNullFieldError.checkNotNull(
        commentsCount,
        r'GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work',
        'commentsCount');
    BuiltValueNullFieldError.checkNotNull(
        createdAt,
        r'GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work',
        'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        imageURL,
        r'GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work',
        'imageURL');
    BuiltValueNullFieldError.checkNotNull(
        imageWidth,
        r'GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work',
        'imageWidth');
    BuiltValueNullFieldError.checkNotNull(
        imageHeight,
        r'GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work',
        'imageHeight');
    BuiltValueNullFieldError.checkNotNull(
        largeThumbnailImageURL,
        r'GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work',
        'largeThumbnailImageURL');
    BuiltValueNullFieldError.checkNotNull(
        largeThumbnailImageWidth,
        r'GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work',
        'largeThumbnailImageWidth');
    BuiltValueNullFieldError.checkNotNull(
        largeThumbnailImageHeight,
        r'GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work',
        'largeThumbnailImageHeight');
    BuiltValueNullFieldError.checkNotNull(
        smallThumbnailImageURL,
        r'GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work',
        'smallThumbnailImageURL');
    BuiltValueNullFieldError.checkNotNull(
        smallThumbnailImageWidth,
        r'GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work',
        'smallThumbnailImageWidth');
    BuiltValueNullFieldError.checkNotNull(
        smallThumbnailImageHeight,
        r'GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work',
        'smallThumbnailImageHeight');
    BuiltValueNullFieldError.checkNotNull(
        imageAspectRatio,
        r'GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work',
        'imageAspectRatio');
  }

  @override
  GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work
      rebuild(
              void Function(
                      GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_workBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_workBuilder
      toBuilder() =>
          new GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_workBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work &&
        G__typename == other.G__typename &&
        id == other.id &&
        title == other.title &&
        likesCount == other.likesCount &&
        commentsCount == other.commentsCount &&
        createdAt == other.createdAt &&
        imageURL == other.imageURL &&
        imageWidth == other.imageWidth &&
        imageHeight == other.imageHeight &&
        largeThumbnailImageURL == other.largeThumbnailImageURL &&
        largeThumbnailImageWidth == other.largeThumbnailImageWidth &&
        largeThumbnailImageHeight == other.largeThumbnailImageHeight &&
        smallThumbnailImageURL == other.smallThumbnailImageURL &&
        smallThumbnailImageWidth == other.smallThumbnailImageWidth &&
        smallThumbnailImageHeight == other.smallThumbnailImageHeight &&
        thumbnailImagePosition == other.thumbnailImagePosition &&
        imageAspectRatio == other.imageAspectRatio;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, likesCount.hashCode);
    _$hash = $jc(_$hash, commentsCount.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, imageURL.hashCode);
    _$hash = $jc(_$hash, imageWidth.hashCode);
    _$hash = $jc(_$hash, imageHeight.hashCode);
    _$hash = $jc(_$hash, largeThumbnailImageURL.hashCode);
    _$hash = $jc(_$hash, largeThumbnailImageWidth.hashCode);
    _$hash = $jc(_$hash, largeThumbnailImageHeight.hashCode);
    _$hash = $jc(_$hash, smallThumbnailImageURL.hashCode);
    _$hash = $jc(_$hash, smallThumbnailImageWidth.hashCode);
    _$hash = $jc(_$hash, smallThumbnailImageHeight.hashCode);
    _$hash = $jc(_$hash, thumbnailImagePosition.hashCode);
    _$hash = $jc(_$hash, imageAspectRatio.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title)
          ..add('likesCount', likesCount)
          ..add('commentsCount', commentsCount)
          ..add('createdAt', createdAt)
          ..add('imageURL', imageURL)
          ..add('imageWidth', imageWidth)
          ..add('imageHeight', imageHeight)
          ..add('largeThumbnailImageURL', largeThumbnailImageURL)
          ..add('largeThumbnailImageWidth', largeThumbnailImageWidth)
          ..add('largeThumbnailImageHeight', largeThumbnailImageHeight)
          ..add('smallThumbnailImageURL', smallThumbnailImageURL)
          ..add('smallThumbnailImageWidth', smallThumbnailImageWidth)
          ..add('smallThumbnailImageHeight', smallThumbnailImageHeight)
          ..add('thumbnailImagePosition', thumbnailImagePosition)
          ..add('imageAspectRatio', imageAspectRatio))
        .toString();
  }
}

class GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_workBuilder
    implements
        Builder<
            GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work,
            GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_workBuilder> {
  _$GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  int? _likesCount;
  int? get likesCount => _$this._likesCount;
  set likesCount(int? likesCount) => _$this._likesCount = likesCount;

  int? _commentsCount;
  int? get commentsCount => _$this._commentsCount;
  set commentsCount(int? commentsCount) =>
      _$this._commentsCount = commentsCount;

  int? _createdAt;
  int? get createdAt => _$this._createdAt;
  set createdAt(int? createdAt) => _$this._createdAt = createdAt;

  String? _imageURL;
  String? get imageURL => _$this._imageURL;
  set imageURL(String? imageURL) => _$this._imageURL = imageURL;

  int? _imageWidth;
  int? get imageWidth => _$this._imageWidth;
  set imageWidth(int? imageWidth) => _$this._imageWidth = imageWidth;

  int? _imageHeight;
  int? get imageHeight => _$this._imageHeight;
  set imageHeight(int? imageHeight) => _$this._imageHeight = imageHeight;

  String? _largeThumbnailImageURL;
  String? get largeThumbnailImageURL => _$this._largeThumbnailImageURL;
  set largeThumbnailImageURL(String? largeThumbnailImageURL) =>
      _$this._largeThumbnailImageURL = largeThumbnailImageURL;

  int? _largeThumbnailImageWidth;
  int? get largeThumbnailImageWidth => _$this._largeThumbnailImageWidth;
  set largeThumbnailImageWidth(int? largeThumbnailImageWidth) =>
      _$this._largeThumbnailImageWidth = largeThumbnailImageWidth;

  int? _largeThumbnailImageHeight;
  int? get largeThumbnailImageHeight => _$this._largeThumbnailImageHeight;
  set largeThumbnailImageHeight(int? largeThumbnailImageHeight) =>
      _$this._largeThumbnailImageHeight = largeThumbnailImageHeight;

  String? _smallThumbnailImageURL;
  String? get smallThumbnailImageURL => _$this._smallThumbnailImageURL;
  set smallThumbnailImageURL(String? smallThumbnailImageURL) =>
      _$this._smallThumbnailImageURL = smallThumbnailImageURL;

  int? _smallThumbnailImageWidth;
  int? get smallThumbnailImageWidth => _$this._smallThumbnailImageWidth;
  set smallThumbnailImageWidth(int? smallThumbnailImageWidth) =>
      _$this._smallThumbnailImageWidth = smallThumbnailImageWidth;

  int? _smallThumbnailImageHeight;
  int? get smallThumbnailImageHeight => _$this._smallThumbnailImageHeight;
  set smallThumbnailImageHeight(int? smallThumbnailImageHeight) =>
      _$this._smallThumbnailImageHeight = smallThumbnailImageHeight;

  double? _thumbnailImagePosition;
  double? get thumbnailImagePosition => _$this._thumbnailImagePosition;
  set thumbnailImagePosition(double? thumbnailImagePosition) =>
      _$this._thumbnailImagePosition = thumbnailImagePosition;

  double? _imageAspectRatio;
  double? get imageAspectRatio => _$this._imageAspectRatio;
  set imageAspectRatio(double? imageAspectRatio) =>
      _$this._imageAspectRatio = imageAspectRatio;

  GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_workBuilder() {
    GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work
        ._initializeBuilder(this);
  }

  GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_workBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _title = $v.title;
      _likesCount = $v.likesCount;
      _commentsCount = $v.commentsCount;
      _createdAt = $v.createdAt;
      _imageURL = $v.imageURL;
      _imageWidth = $v.imageWidth;
      _imageHeight = $v.imageHeight;
      _largeThumbnailImageURL = $v.largeThumbnailImageURL;
      _largeThumbnailImageWidth = $v.largeThumbnailImageWidth;
      _largeThumbnailImageHeight = $v.largeThumbnailImageHeight;
      _smallThumbnailImageURL = $v.smallThumbnailImageURL;
      _smallThumbnailImageWidth = $v.smallThumbnailImageWidth;
      _smallThumbnailImageHeight = $v.smallThumbnailImageHeight;
      _thumbnailImagePosition = $v.thumbnailImagePosition;
      _imageAspectRatio = $v.imageAspectRatio;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work;
  }

  @override
  void update(
      void Function(
              GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_workBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work
      build() => _build();

  _$GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work
      _build() {
    final _$result = _$v ??
        new _$GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work', 'id'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work', 'title'),
            likesCount: BuiltValueNullFieldError.checkNotNull(
                likesCount,
                r'GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work',
                'likesCount'),
            commentsCount: BuiltValueNullFieldError.checkNotNull(
                commentsCount,
                r'GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work',
                'commentsCount'),
            createdAt: BuiltValueNullFieldError.checkNotNull(createdAt, r'GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work', 'createdAt'),
            imageURL: BuiltValueNullFieldError.checkNotNull(imageURL, r'GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work', 'imageURL'),
            imageWidth: BuiltValueNullFieldError.checkNotNull(imageWidth, r'GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work', 'imageWidth'),
            imageHeight: BuiltValueNullFieldError.checkNotNull(imageHeight, r'GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work', 'imageHeight'),
            largeThumbnailImageURL: BuiltValueNullFieldError.checkNotNull(largeThumbnailImageURL, r'GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work', 'largeThumbnailImageURL'),
            largeThumbnailImageWidth: BuiltValueNullFieldError.checkNotNull(largeThumbnailImageWidth, r'GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work', 'largeThumbnailImageWidth'),
            largeThumbnailImageHeight: BuiltValueNullFieldError.checkNotNull(largeThumbnailImageHeight, r'GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work', 'largeThumbnailImageHeight'),
            smallThumbnailImageURL: BuiltValueNullFieldError.checkNotNull(smallThumbnailImageURL, r'GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work', 'smallThumbnailImageURL'),
            smallThumbnailImageWidth: BuiltValueNullFieldError.checkNotNull(smallThumbnailImageWidth, r'GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work', 'smallThumbnailImageWidth'),
            smallThumbnailImageHeight: BuiltValueNullFieldError.checkNotNull(smallThumbnailImageHeight, r'GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work', 'smallThumbnailImageHeight'),
            thumbnailImagePosition: thumbnailImagePosition,
            imageAspectRatio: BuiltValueNullFieldError.checkNotNull(imageAspectRatio, r'GViewerNotificationsData_viewer_notifications__asWorkAwardNotificationNode_work', 'imageAspectRatio'));
    replace(_$result);
    return _$result;
  }
}

class _$GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode
    extends GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final int createdAt;
  @override
  final String? message;
  @override
  final GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work?
      work;
  @override
  final GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_user?
      user;
  @override
  final GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_sticker?
      sticker;

  factory _$GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode(
          [void Function(
                  GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNodeBuilder)?
              updates]) =>
      (new GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNodeBuilder()
            ..update(updates))
          ._build();

  _$GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode._(
      {required this.G__typename,
      required this.id,
      required this.createdAt,
      this.message,
      this.work,
      this.user,
      this.sticker})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        createdAt,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode',
        'createdAt');
  }

  @override
  GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode
      rebuild(
              void Function(
                      GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNodeBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNodeBuilder
      toBuilder() =>
          new GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNodeBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode &&
        G__typename == other.G__typename &&
        id == other.id &&
        createdAt == other.createdAt &&
        message == other.message &&
        work == other.work &&
        user == other.user &&
        sticker == other.sticker;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, work.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, sticker.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('createdAt', createdAt)
          ..add('message', message)
          ..add('work', work)
          ..add('user', user)
          ..add('sticker', sticker))
        .toString();
  }
}

class GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNodeBuilder
    implements
        Builder<
            GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode,
            GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNodeBuilder> {
  _$GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _createdAt;
  int? get createdAt => _$this._createdAt;
  set createdAt(int? createdAt) => _$this._createdAt = createdAt;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_workBuilder?
      _work;
  GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_workBuilder
      get work => _$this._work ??=
          new GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_workBuilder();
  set work(
          GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_workBuilder?
              work) =>
      _$this._work = work;

  GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_userBuilder?
      _user;
  GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_userBuilder
      get user => _$this._user ??=
          new GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_userBuilder();
  set user(
          GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_userBuilder?
              user) =>
      _$this._user = user;

  GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_stickerBuilder?
      _sticker;
  GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_stickerBuilder
      get sticker => _$this._sticker ??=
          new GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_stickerBuilder();
  set sticker(
          GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_stickerBuilder?
              sticker) =>
      _$this._sticker = sticker;

  GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNodeBuilder() {
    GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode
        ._initializeBuilder(this);
  }

  GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNodeBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _createdAt = $v.createdAt;
      _message = $v.message;
      _work = $v.work?.toBuilder();
      _user = $v.user?.toBuilder();
      _sticker = $v.sticker?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode;
  }

  @override
  void update(
      void Function(
              GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNodeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode
      build() => _build();

  _$GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode
      _build() {
    _$GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode
        _$result;
    try {
      _$result = _$v ??
          new _$GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode',
                  'id'),
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt,
                  r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode',
                  'createdAt'),
              message: message,
              work: _work?.build(),
              user: _user?.build(),
              sticker: _sticker?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'work';
        _work?.build();
        _$failedField = 'user';
        _user?.build();
        _$failedField = 'sticker';
        _sticker?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work
    extends GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String title;
  @override
  final int likesCount;
  @override
  final int commentsCount;
  @override
  final int createdAt;
  @override
  final String imageURL;
  @override
  final int imageWidth;
  @override
  final int imageHeight;
  @override
  final String largeThumbnailImageURL;
  @override
  final int largeThumbnailImageWidth;
  @override
  final int largeThumbnailImageHeight;
  @override
  final String smallThumbnailImageURL;
  @override
  final int smallThumbnailImageWidth;
  @override
  final int smallThumbnailImageHeight;
  @override
  final double? thumbnailImagePosition;
  @override
  final double imageAspectRatio;

  factory _$GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work(
          [void Function(
                  GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_workBuilder)?
              updates]) =>
      (new GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_workBuilder()
            ..update(updates))
          ._build();

  _$GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work._(
      {required this.G__typename,
      required this.id,
      required this.title,
      required this.likesCount,
      required this.commentsCount,
      required this.createdAt,
      required this.imageURL,
      required this.imageWidth,
      required this.imageHeight,
      required this.largeThumbnailImageURL,
      required this.largeThumbnailImageWidth,
      required this.largeThumbnailImageHeight,
      required this.smallThumbnailImageURL,
      required this.smallThumbnailImageWidth,
      required this.smallThumbnailImageHeight,
      this.thumbnailImagePosition,
      required this.imageAspectRatio})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        title,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work',
        'title');
    BuiltValueNullFieldError.checkNotNull(
        likesCount,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work',
        'likesCount');
    BuiltValueNullFieldError.checkNotNull(
        commentsCount,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work',
        'commentsCount');
    BuiltValueNullFieldError.checkNotNull(
        createdAt,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work',
        'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        imageURL,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work',
        'imageURL');
    BuiltValueNullFieldError.checkNotNull(
        imageWidth,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work',
        'imageWidth');
    BuiltValueNullFieldError.checkNotNull(
        imageHeight,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work',
        'imageHeight');
    BuiltValueNullFieldError.checkNotNull(
        largeThumbnailImageURL,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work',
        'largeThumbnailImageURL');
    BuiltValueNullFieldError.checkNotNull(
        largeThumbnailImageWidth,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work',
        'largeThumbnailImageWidth');
    BuiltValueNullFieldError.checkNotNull(
        largeThumbnailImageHeight,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work',
        'largeThumbnailImageHeight');
    BuiltValueNullFieldError.checkNotNull(
        smallThumbnailImageURL,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work',
        'smallThumbnailImageURL');
    BuiltValueNullFieldError.checkNotNull(
        smallThumbnailImageWidth,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work',
        'smallThumbnailImageWidth');
    BuiltValueNullFieldError.checkNotNull(
        smallThumbnailImageHeight,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work',
        'smallThumbnailImageHeight');
    BuiltValueNullFieldError.checkNotNull(
        imageAspectRatio,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work',
        'imageAspectRatio');
  }

  @override
  GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work
      rebuild(
              void Function(
                      GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_workBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_workBuilder
      toBuilder() =>
          new GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_workBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work &&
        G__typename == other.G__typename &&
        id == other.id &&
        title == other.title &&
        likesCount == other.likesCount &&
        commentsCount == other.commentsCount &&
        createdAt == other.createdAt &&
        imageURL == other.imageURL &&
        imageWidth == other.imageWidth &&
        imageHeight == other.imageHeight &&
        largeThumbnailImageURL == other.largeThumbnailImageURL &&
        largeThumbnailImageWidth == other.largeThumbnailImageWidth &&
        largeThumbnailImageHeight == other.largeThumbnailImageHeight &&
        smallThumbnailImageURL == other.smallThumbnailImageURL &&
        smallThumbnailImageWidth == other.smallThumbnailImageWidth &&
        smallThumbnailImageHeight == other.smallThumbnailImageHeight &&
        thumbnailImagePosition == other.thumbnailImagePosition &&
        imageAspectRatio == other.imageAspectRatio;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, likesCount.hashCode);
    _$hash = $jc(_$hash, commentsCount.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, imageURL.hashCode);
    _$hash = $jc(_$hash, imageWidth.hashCode);
    _$hash = $jc(_$hash, imageHeight.hashCode);
    _$hash = $jc(_$hash, largeThumbnailImageURL.hashCode);
    _$hash = $jc(_$hash, largeThumbnailImageWidth.hashCode);
    _$hash = $jc(_$hash, largeThumbnailImageHeight.hashCode);
    _$hash = $jc(_$hash, smallThumbnailImageURL.hashCode);
    _$hash = $jc(_$hash, smallThumbnailImageWidth.hashCode);
    _$hash = $jc(_$hash, smallThumbnailImageHeight.hashCode);
    _$hash = $jc(_$hash, thumbnailImagePosition.hashCode);
    _$hash = $jc(_$hash, imageAspectRatio.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title)
          ..add('likesCount', likesCount)
          ..add('commentsCount', commentsCount)
          ..add('createdAt', createdAt)
          ..add('imageURL', imageURL)
          ..add('imageWidth', imageWidth)
          ..add('imageHeight', imageHeight)
          ..add('largeThumbnailImageURL', largeThumbnailImageURL)
          ..add('largeThumbnailImageWidth', largeThumbnailImageWidth)
          ..add('largeThumbnailImageHeight', largeThumbnailImageHeight)
          ..add('smallThumbnailImageURL', smallThumbnailImageURL)
          ..add('smallThumbnailImageWidth', smallThumbnailImageWidth)
          ..add('smallThumbnailImageHeight', smallThumbnailImageHeight)
          ..add('thumbnailImagePosition', thumbnailImagePosition)
          ..add('imageAspectRatio', imageAspectRatio))
        .toString();
  }
}

class GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_workBuilder
    implements
        Builder<
            GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work,
            GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_workBuilder> {
  _$GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  int? _likesCount;
  int? get likesCount => _$this._likesCount;
  set likesCount(int? likesCount) => _$this._likesCount = likesCount;

  int? _commentsCount;
  int? get commentsCount => _$this._commentsCount;
  set commentsCount(int? commentsCount) =>
      _$this._commentsCount = commentsCount;

  int? _createdAt;
  int? get createdAt => _$this._createdAt;
  set createdAt(int? createdAt) => _$this._createdAt = createdAt;

  String? _imageURL;
  String? get imageURL => _$this._imageURL;
  set imageURL(String? imageURL) => _$this._imageURL = imageURL;

  int? _imageWidth;
  int? get imageWidth => _$this._imageWidth;
  set imageWidth(int? imageWidth) => _$this._imageWidth = imageWidth;

  int? _imageHeight;
  int? get imageHeight => _$this._imageHeight;
  set imageHeight(int? imageHeight) => _$this._imageHeight = imageHeight;

  String? _largeThumbnailImageURL;
  String? get largeThumbnailImageURL => _$this._largeThumbnailImageURL;
  set largeThumbnailImageURL(String? largeThumbnailImageURL) =>
      _$this._largeThumbnailImageURL = largeThumbnailImageURL;

  int? _largeThumbnailImageWidth;
  int? get largeThumbnailImageWidth => _$this._largeThumbnailImageWidth;
  set largeThumbnailImageWidth(int? largeThumbnailImageWidth) =>
      _$this._largeThumbnailImageWidth = largeThumbnailImageWidth;

  int? _largeThumbnailImageHeight;
  int? get largeThumbnailImageHeight => _$this._largeThumbnailImageHeight;
  set largeThumbnailImageHeight(int? largeThumbnailImageHeight) =>
      _$this._largeThumbnailImageHeight = largeThumbnailImageHeight;

  String? _smallThumbnailImageURL;
  String? get smallThumbnailImageURL => _$this._smallThumbnailImageURL;
  set smallThumbnailImageURL(String? smallThumbnailImageURL) =>
      _$this._smallThumbnailImageURL = smallThumbnailImageURL;

  int? _smallThumbnailImageWidth;
  int? get smallThumbnailImageWidth => _$this._smallThumbnailImageWidth;
  set smallThumbnailImageWidth(int? smallThumbnailImageWidth) =>
      _$this._smallThumbnailImageWidth = smallThumbnailImageWidth;

  int? _smallThumbnailImageHeight;
  int? get smallThumbnailImageHeight => _$this._smallThumbnailImageHeight;
  set smallThumbnailImageHeight(int? smallThumbnailImageHeight) =>
      _$this._smallThumbnailImageHeight = smallThumbnailImageHeight;

  double? _thumbnailImagePosition;
  double? get thumbnailImagePosition => _$this._thumbnailImagePosition;
  set thumbnailImagePosition(double? thumbnailImagePosition) =>
      _$this._thumbnailImagePosition = thumbnailImagePosition;

  double? _imageAspectRatio;
  double? get imageAspectRatio => _$this._imageAspectRatio;
  set imageAspectRatio(double? imageAspectRatio) =>
      _$this._imageAspectRatio = imageAspectRatio;

  GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_workBuilder() {
    GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work
        ._initializeBuilder(this);
  }

  GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_workBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _title = $v.title;
      _likesCount = $v.likesCount;
      _commentsCount = $v.commentsCount;
      _createdAt = $v.createdAt;
      _imageURL = $v.imageURL;
      _imageWidth = $v.imageWidth;
      _imageHeight = $v.imageHeight;
      _largeThumbnailImageURL = $v.largeThumbnailImageURL;
      _largeThumbnailImageWidth = $v.largeThumbnailImageWidth;
      _largeThumbnailImageHeight = $v.largeThumbnailImageHeight;
      _smallThumbnailImageURL = $v.smallThumbnailImageURL;
      _smallThumbnailImageWidth = $v.smallThumbnailImageWidth;
      _smallThumbnailImageHeight = $v.smallThumbnailImageHeight;
      _thumbnailImagePosition = $v.thumbnailImagePosition;
      _imageAspectRatio = $v.imageAspectRatio;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work;
  }

  @override
  void update(
      void Function(
              GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_workBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work
      build() => _build();

  _$GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work
      _build() {
    final _$result = _$v ??
        new _$GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work', 'id'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work', 'title'),
            likesCount: BuiltValueNullFieldError.checkNotNull(
                likesCount,
                r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work',
                'likesCount'),
            commentsCount: BuiltValueNullFieldError.checkNotNull(
                commentsCount,
                r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work',
                'commentsCount'),
            createdAt: BuiltValueNullFieldError.checkNotNull(createdAt, r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work', 'createdAt'),
            imageURL: BuiltValueNullFieldError.checkNotNull(imageURL, r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work', 'imageURL'),
            imageWidth: BuiltValueNullFieldError.checkNotNull(imageWidth, r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work', 'imageWidth'),
            imageHeight: BuiltValueNullFieldError.checkNotNull(imageHeight, r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work', 'imageHeight'),
            largeThumbnailImageURL: BuiltValueNullFieldError.checkNotNull(largeThumbnailImageURL, r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work', 'largeThumbnailImageURL'),
            largeThumbnailImageWidth: BuiltValueNullFieldError.checkNotNull(largeThumbnailImageWidth, r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work', 'largeThumbnailImageWidth'),
            largeThumbnailImageHeight: BuiltValueNullFieldError.checkNotNull(largeThumbnailImageHeight, r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work', 'largeThumbnailImageHeight'),
            smallThumbnailImageURL: BuiltValueNullFieldError.checkNotNull(smallThumbnailImageURL, r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work', 'smallThumbnailImageURL'),
            smallThumbnailImageWidth: BuiltValueNullFieldError.checkNotNull(smallThumbnailImageWidth, r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work', 'smallThumbnailImageWidth'),
            smallThumbnailImageHeight: BuiltValueNullFieldError.checkNotNull(smallThumbnailImageHeight, r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work', 'smallThumbnailImageHeight'),
            thumbnailImagePosition: thumbnailImagePosition,
            imageAspectRatio: BuiltValueNullFieldError.checkNotNull(imageAspectRatio, r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_work', 'imageAspectRatio'));
    replace(_$result);
    return _$result;
  }
}

class _$GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_user
    extends GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_user {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String login;
  @override
  final String name;
  @override
  final String? iconUrl;

  factory _$GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_user(
          [void Function(
                  GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_userBuilder)?
              updates]) =>
      (new GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_userBuilder()
            ..update(updates))
          ._build();

  _$GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_user._(
      {required this.G__typename,
      required this.id,
      required this.login,
      required this.name,
      this.iconUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_user',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_user',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        login,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_user',
        'login');
    BuiltValueNullFieldError.checkNotNull(
        name,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_user',
        'name');
  }

  @override
  GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_user
      rebuild(
              void Function(
                      GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_userBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_userBuilder
      toBuilder() =>
          new GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_userBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_user &&
        G__typename == other.G__typename &&
        id == other.id &&
        login == other.login &&
        name == other.name &&
        iconUrl == other.iconUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, login.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, iconUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_user')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('login', login)
          ..add('name', name)
          ..add('iconUrl', iconUrl))
        .toString();
  }
}

class GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_userBuilder
    implements
        Builder<
            GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_user,
            GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_userBuilder> {
  _$GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_user?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _login;
  String? get login => _$this._login;
  set login(String? login) => _$this._login = login;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _iconUrl;
  String? get iconUrl => _$this._iconUrl;
  set iconUrl(String? iconUrl) => _$this._iconUrl = iconUrl;

  GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_userBuilder() {
    GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_user
        ._initializeBuilder(this);
  }

  GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_userBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _login = $v.login;
      _name = $v.name;
      _iconUrl = $v.iconUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_user
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_user;
  }

  @override
  void update(
      void Function(
              GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_userBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_user
      build() => _build();

  _$GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_user
      _build() {
    final _$result = _$v ??
        new _$GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_user._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_user',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(id,
                r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_user', 'id'),
            login: BuiltValueNullFieldError.checkNotNull(
                login,
                r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_user',
                'login'),
            name: BuiltValueNullFieldError.checkNotNull(
                name,
                r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_user',
                'name'),
            iconUrl: iconUrl);
    replace(_$result);
    return _$result;
  }
}

class _$GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_sticker
    extends GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_sticker {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String title;
  @override
  final String? imageUrl;
  @override
  final int likesCount;
  @override
  final int downloadsCount;
  @override
  final int usesCount;

  factory _$GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_sticker(
          [void Function(
                  GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_stickerBuilder)?
              updates]) =>
      (new GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_stickerBuilder()
            ..update(updates))
          ._build();

  _$GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_sticker._(
      {required this.G__typename,
      required this.id,
      required this.title,
      this.imageUrl,
      required this.likesCount,
      required this.downloadsCount,
      required this.usesCount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_sticker',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_sticker',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        title,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_sticker',
        'title');
    BuiltValueNullFieldError.checkNotNull(
        likesCount,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_sticker',
        'likesCount');
    BuiltValueNullFieldError.checkNotNull(
        downloadsCount,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_sticker',
        'downloadsCount');
    BuiltValueNullFieldError.checkNotNull(
        usesCount,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_sticker',
        'usesCount');
  }

  @override
  GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_sticker
      rebuild(
              void Function(
                      GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_stickerBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_stickerBuilder
      toBuilder() =>
          new GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_stickerBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_sticker &&
        G__typename == other.G__typename &&
        id == other.id &&
        title == other.title &&
        imageUrl == other.imageUrl &&
        likesCount == other.likesCount &&
        downloadsCount == other.downloadsCount &&
        usesCount == other.usesCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jc(_$hash, likesCount.hashCode);
    _$hash = $jc(_$hash, downloadsCount.hashCode);
    _$hash = $jc(_$hash, usesCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_sticker')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title)
          ..add('imageUrl', imageUrl)
          ..add('likesCount', likesCount)
          ..add('downloadsCount', downloadsCount)
          ..add('usesCount', usesCount))
        .toString();
  }
}

class GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_stickerBuilder
    implements
        Builder<
            GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_sticker,
            GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_stickerBuilder> {
  _$GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_sticker?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  int? _likesCount;
  int? get likesCount => _$this._likesCount;
  set likesCount(int? likesCount) => _$this._likesCount = likesCount;

  int? _downloadsCount;
  int? get downloadsCount => _$this._downloadsCount;
  set downloadsCount(int? downloadsCount) =>
      _$this._downloadsCount = downloadsCount;

  int? _usesCount;
  int? get usesCount => _$this._usesCount;
  set usesCount(int? usesCount) => _$this._usesCount = usesCount;

  GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_stickerBuilder() {
    GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_sticker
        ._initializeBuilder(this);
  }

  GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_stickerBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _title = $v.title;
      _imageUrl = $v.imageUrl;
      _likesCount = $v.likesCount;
      _downloadsCount = $v.downloadsCount;
      _usesCount = $v.usesCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_sticker
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_sticker;
  }

  @override
  void update(
      void Function(
              GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_stickerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_sticker
      build() => _build();

  _$GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_sticker
      _build() {
    final _$result = _$v ??
        new _$GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_sticker._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_sticker',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_sticker', 'id'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_sticker', 'title'),
            imageUrl: imageUrl,
            likesCount: BuiltValueNullFieldError.checkNotNull(
                likesCount, r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_sticker', 'likesCount'),
            downloadsCount: BuiltValueNullFieldError.checkNotNull(
                downloadsCount,
                r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_sticker',
                'downloadsCount'),
            usesCount: BuiltValueNullFieldError.checkNotNull(
                usesCount, r'GViewerNotificationsData_viewer_notifications__asWorkCommentNotificationNode_sticker', 'usesCount'));
    replace(_$result);
    return _$result;
  }
}

class _$GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode
    extends GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final int createdAt;
  @override
  final String? message;
  @override
  final GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work?
      work;
  @override
  final GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_user?
      user;
  @override
  final GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_sticker?
      sticker;

  factory _$GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode(
          [void Function(
                  GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNodeBuilder)?
              updates]) =>
      (new GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNodeBuilder()
            ..update(updates))
          ._build();

  _$GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode._(
      {required this.G__typename,
      required this.id,
      required this.createdAt,
      this.message,
      this.work,
      this.user,
      this.sticker})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        createdAt,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode',
        'createdAt');
  }

  @override
  GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode
      rebuild(
              void Function(
                      GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNodeBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNodeBuilder
      toBuilder() =>
          new GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNodeBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode &&
        G__typename == other.G__typename &&
        id == other.id &&
        createdAt == other.createdAt &&
        message == other.message &&
        work == other.work &&
        user == other.user &&
        sticker == other.sticker;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, work.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, sticker.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('createdAt', createdAt)
          ..add('message', message)
          ..add('work', work)
          ..add('user', user)
          ..add('sticker', sticker))
        .toString();
  }
}

class GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNodeBuilder
    implements
        Builder<
            GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode,
            GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNodeBuilder> {
  _$GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _createdAt;
  int? get createdAt => _$this._createdAt;
  set createdAt(int? createdAt) => _$this._createdAt = createdAt;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_workBuilder?
      _work;
  GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_workBuilder
      get work => _$this._work ??=
          new GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_workBuilder();
  set work(
          GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_workBuilder?
              work) =>
      _$this._work = work;

  GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_userBuilder?
      _user;
  GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_userBuilder
      get user => _$this._user ??=
          new GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_userBuilder();
  set user(
          GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_userBuilder?
              user) =>
      _$this._user = user;

  GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_stickerBuilder?
      _sticker;
  GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_stickerBuilder
      get sticker => _$this._sticker ??=
          new GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_stickerBuilder();
  set sticker(
          GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_stickerBuilder?
              sticker) =>
      _$this._sticker = sticker;

  GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNodeBuilder() {
    GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode
        ._initializeBuilder(this);
  }

  GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNodeBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _createdAt = $v.createdAt;
      _message = $v.message;
      _work = $v.work?.toBuilder();
      _user = $v.user?.toBuilder();
      _sticker = $v.sticker?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode;
  }

  @override
  void update(
      void Function(
              GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNodeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode
      build() => _build();

  _$GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode
      _build() {
    _$GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode
        _$result;
    try {
      _$result = _$v ??
          new _$GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode',
                  'id'),
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt,
                  r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode',
                  'createdAt'),
              message: message,
              work: _work?.build(),
              user: _user?.build(),
              sticker: _sticker?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'work';
        _work?.build();
        _$failedField = 'user';
        _user?.build();
        _$failedField = 'sticker';
        _sticker?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work
    extends GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String title;
  @override
  final int likesCount;
  @override
  final int commentsCount;
  @override
  final int createdAt;
  @override
  final String imageURL;
  @override
  final int imageWidth;
  @override
  final int imageHeight;
  @override
  final String largeThumbnailImageURL;
  @override
  final int largeThumbnailImageWidth;
  @override
  final int largeThumbnailImageHeight;
  @override
  final String smallThumbnailImageURL;
  @override
  final int smallThumbnailImageWidth;
  @override
  final int smallThumbnailImageHeight;
  @override
  final double? thumbnailImagePosition;
  @override
  final double imageAspectRatio;

  factory _$GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work(
          [void Function(
                  GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_workBuilder)?
              updates]) =>
      (new GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_workBuilder()
            ..update(updates))
          ._build();

  _$GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work._(
      {required this.G__typename,
      required this.id,
      required this.title,
      required this.likesCount,
      required this.commentsCount,
      required this.createdAt,
      required this.imageURL,
      required this.imageWidth,
      required this.imageHeight,
      required this.largeThumbnailImageURL,
      required this.largeThumbnailImageWidth,
      required this.largeThumbnailImageHeight,
      required this.smallThumbnailImageURL,
      required this.smallThumbnailImageWidth,
      required this.smallThumbnailImageHeight,
      this.thumbnailImagePosition,
      required this.imageAspectRatio})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        title,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work',
        'title');
    BuiltValueNullFieldError.checkNotNull(
        likesCount,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work',
        'likesCount');
    BuiltValueNullFieldError.checkNotNull(
        commentsCount,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work',
        'commentsCount');
    BuiltValueNullFieldError.checkNotNull(
        createdAt,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work',
        'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        imageURL,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work',
        'imageURL');
    BuiltValueNullFieldError.checkNotNull(
        imageWidth,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work',
        'imageWidth');
    BuiltValueNullFieldError.checkNotNull(
        imageHeight,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work',
        'imageHeight');
    BuiltValueNullFieldError.checkNotNull(
        largeThumbnailImageURL,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work',
        'largeThumbnailImageURL');
    BuiltValueNullFieldError.checkNotNull(
        largeThumbnailImageWidth,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work',
        'largeThumbnailImageWidth');
    BuiltValueNullFieldError.checkNotNull(
        largeThumbnailImageHeight,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work',
        'largeThumbnailImageHeight');
    BuiltValueNullFieldError.checkNotNull(
        smallThumbnailImageURL,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work',
        'smallThumbnailImageURL');
    BuiltValueNullFieldError.checkNotNull(
        smallThumbnailImageWidth,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work',
        'smallThumbnailImageWidth');
    BuiltValueNullFieldError.checkNotNull(
        smallThumbnailImageHeight,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work',
        'smallThumbnailImageHeight');
    BuiltValueNullFieldError.checkNotNull(
        imageAspectRatio,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work',
        'imageAspectRatio');
  }

  @override
  GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work
      rebuild(
              void Function(
                      GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_workBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_workBuilder
      toBuilder() =>
          new GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_workBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work &&
        G__typename == other.G__typename &&
        id == other.id &&
        title == other.title &&
        likesCount == other.likesCount &&
        commentsCount == other.commentsCount &&
        createdAt == other.createdAt &&
        imageURL == other.imageURL &&
        imageWidth == other.imageWidth &&
        imageHeight == other.imageHeight &&
        largeThumbnailImageURL == other.largeThumbnailImageURL &&
        largeThumbnailImageWidth == other.largeThumbnailImageWidth &&
        largeThumbnailImageHeight == other.largeThumbnailImageHeight &&
        smallThumbnailImageURL == other.smallThumbnailImageURL &&
        smallThumbnailImageWidth == other.smallThumbnailImageWidth &&
        smallThumbnailImageHeight == other.smallThumbnailImageHeight &&
        thumbnailImagePosition == other.thumbnailImagePosition &&
        imageAspectRatio == other.imageAspectRatio;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, likesCount.hashCode);
    _$hash = $jc(_$hash, commentsCount.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, imageURL.hashCode);
    _$hash = $jc(_$hash, imageWidth.hashCode);
    _$hash = $jc(_$hash, imageHeight.hashCode);
    _$hash = $jc(_$hash, largeThumbnailImageURL.hashCode);
    _$hash = $jc(_$hash, largeThumbnailImageWidth.hashCode);
    _$hash = $jc(_$hash, largeThumbnailImageHeight.hashCode);
    _$hash = $jc(_$hash, smallThumbnailImageURL.hashCode);
    _$hash = $jc(_$hash, smallThumbnailImageWidth.hashCode);
    _$hash = $jc(_$hash, smallThumbnailImageHeight.hashCode);
    _$hash = $jc(_$hash, thumbnailImagePosition.hashCode);
    _$hash = $jc(_$hash, imageAspectRatio.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title)
          ..add('likesCount', likesCount)
          ..add('commentsCount', commentsCount)
          ..add('createdAt', createdAt)
          ..add('imageURL', imageURL)
          ..add('imageWidth', imageWidth)
          ..add('imageHeight', imageHeight)
          ..add('largeThumbnailImageURL', largeThumbnailImageURL)
          ..add('largeThumbnailImageWidth', largeThumbnailImageWidth)
          ..add('largeThumbnailImageHeight', largeThumbnailImageHeight)
          ..add('smallThumbnailImageURL', smallThumbnailImageURL)
          ..add('smallThumbnailImageWidth', smallThumbnailImageWidth)
          ..add('smallThumbnailImageHeight', smallThumbnailImageHeight)
          ..add('thumbnailImagePosition', thumbnailImagePosition)
          ..add('imageAspectRatio', imageAspectRatio))
        .toString();
  }
}

class GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_workBuilder
    implements
        Builder<
            GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work,
            GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_workBuilder> {
  _$GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  int? _likesCount;
  int? get likesCount => _$this._likesCount;
  set likesCount(int? likesCount) => _$this._likesCount = likesCount;

  int? _commentsCount;
  int? get commentsCount => _$this._commentsCount;
  set commentsCount(int? commentsCount) =>
      _$this._commentsCount = commentsCount;

  int? _createdAt;
  int? get createdAt => _$this._createdAt;
  set createdAt(int? createdAt) => _$this._createdAt = createdAt;

  String? _imageURL;
  String? get imageURL => _$this._imageURL;
  set imageURL(String? imageURL) => _$this._imageURL = imageURL;

  int? _imageWidth;
  int? get imageWidth => _$this._imageWidth;
  set imageWidth(int? imageWidth) => _$this._imageWidth = imageWidth;

  int? _imageHeight;
  int? get imageHeight => _$this._imageHeight;
  set imageHeight(int? imageHeight) => _$this._imageHeight = imageHeight;

  String? _largeThumbnailImageURL;
  String? get largeThumbnailImageURL => _$this._largeThumbnailImageURL;
  set largeThumbnailImageURL(String? largeThumbnailImageURL) =>
      _$this._largeThumbnailImageURL = largeThumbnailImageURL;

  int? _largeThumbnailImageWidth;
  int? get largeThumbnailImageWidth => _$this._largeThumbnailImageWidth;
  set largeThumbnailImageWidth(int? largeThumbnailImageWidth) =>
      _$this._largeThumbnailImageWidth = largeThumbnailImageWidth;

  int? _largeThumbnailImageHeight;
  int? get largeThumbnailImageHeight => _$this._largeThumbnailImageHeight;
  set largeThumbnailImageHeight(int? largeThumbnailImageHeight) =>
      _$this._largeThumbnailImageHeight = largeThumbnailImageHeight;

  String? _smallThumbnailImageURL;
  String? get smallThumbnailImageURL => _$this._smallThumbnailImageURL;
  set smallThumbnailImageURL(String? smallThumbnailImageURL) =>
      _$this._smallThumbnailImageURL = smallThumbnailImageURL;

  int? _smallThumbnailImageWidth;
  int? get smallThumbnailImageWidth => _$this._smallThumbnailImageWidth;
  set smallThumbnailImageWidth(int? smallThumbnailImageWidth) =>
      _$this._smallThumbnailImageWidth = smallThumbnailImageWidth;

  int? _smallThumbnailImageHeight;
  int? get smallThumbnailImageHeight => _$this._smallThumbnailImageHeight;
  set smallThumbnailImageHeight(int? smallThumbnailImageHeight) =>
      _$this._smallThumbnailImageHeight = smallThumbnailImageHeight;

  double? _thumbnailImagePosition;
  double? get thumbnailImagePosition => _$this._thumbnailImagePosition;
  set thumbnailImagePosition(double? thumbnailImagePosition) =>
      _$this._thumbnailImagePosition = thumbnailImagePosition;

  double? _imageAspectRatio;
  double? get imageAspectRatio => _$this._imageAspectRatio;
  set imageAspectRatio(double? imageAspectRatio) =>
      _$this._imageAspectRatio = imageAspectRatio;

  GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_workBuilder() {
    GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work
        ._initializeBuilder(this);
  }

  GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_workBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _title = $v.title;
      _likesCount = $v.likesCount;
      _commentsCount = $v.commentsCount;
      _createdAt = $v.createdAt;
      _imageURL = $v.imageURL;
      _imageWidth = $v.imageWidth;
      _imageHeight = $v.imageHeight;
      _largeThumbnailImageURL = $v.largeThumbnailImageURL;
      _largeThumbnailImageWidth = $v.largeThumbnailImageWidth;
      _largeThumbnailImageHeight = $v.largeThumbnailImageHeight;
      _smallThumbnailImageURL = $v.smallThumbnailImageURL;
      _smallThumbnailImageWidth = $v.smallThumbnailImageWidth;
      _smallThumbnailImageHeight = $v.smallThumbnailImageHeight;
      _thumbnailImagePosition = $v.thumbnailImagePosition;
      _imageAspectRatio = $v.imageAspectRatio;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work;
  }

  @override
  void update(
      void Function(
              GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_workBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work
      build() => _build();

  _$GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work
      _build() {
    final _$result = _$v ??
        new _$GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work', 'id'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work', 'title'),
            likesCount: BuiltValueNullFieldError.checkNotNull(
                likesCount,
                r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work',
                'likesCount'),
            commentsCount: BuiltValueNullFieldError.checkNotNull(
                commentsCount,
                r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work',
                'commentsCount'),
            createdAt: BuiltValueNullFieldError.checkNotNull(createdAt, r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work', 'createdAt'),
            imageURL: BuiltValueNullFieldError.checkNotNull(imageURL, r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work', 'imageURL'),
            imageWidth: BuiltValueNullFieldError.checkNotNull(imageWidth, r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work', 'imageWidth'),
            imageHeight: BuiltValueNullFieldError.checkNotNull(imageHeight, r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work', 'imageHeight'),
            largeThumbnailImageURL: BuiltValueNullFieldError.checkNotNull(largeThumbnailImageURL, r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work', 'largeThumbnailImageURL'),
            largeThumbnailImageWidth: BuiltValueNullFieldError.checkNotNull(largeThumbnailImageWidth, r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work', 'largeThumbnailImageWidth'),
            largeThumbnailImageHeight: BuiltValueNullFieldError.checkNotNull(largeThumbnailImageHeight, r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work', 'largeThumbnailImageHeight'),
            smallThumbnailImageURL: BuiltValueNullFieldError.checkNotNull(smallThumbnailImageURL, r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work', 'smallThumbnailImageURL'),
            smallThumbnailImageWidth: BuiltValueNullFieldError.checkNotNull(smallThumbnailImageWidth, r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work', 'smallThumbnailImageWidth'),
            smallThumbnailImageHeight: BuiltValueNullFieldError.checkNotNull(smallThumbnailImageHeight, r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work', 'smallThumbnailImageHeight'),
            thumbnailImagePosition: thumbnailImagePosition,
            imageAspectRatio: BuiltValueNullFieldError.checkNotNull(imageAspectRatio, r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_work', 'imageAspectRatio'));
    replace(_$result);
    return _$result;
  }
}

class _$GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_user
    extends GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_user {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String login;
  @override
  final String name;
  @override
  final String? iconUrl;

  factory _$GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_user(
          [void Function(
                  GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_userBuilder)?
              updates]) =>
      (new GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_userBuilder()
            ..update(updates))
          ._build();

  _$GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_user._(
      {required this.G__typename,
      required this.id,
      required this.login,
      required this.name,
      this.iconUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_user',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_user',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        login,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_user',
        'login');
    BuiltValueNullFieldError.checkNotNull(
        name,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_user',
        'name');
  }

  @override
  GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_user
      rebuild(
              void Function(
                      GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_userBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_userBuilder
      toBuilder() =>
          new GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_userBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_user &&
        G__typename == other.G__typename &&
        id == other.id &&
        login == other.login &&
        name == other.name &&
        iconUrl == other.iconUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, login.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, iconUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_user')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('login', login)
          ..add('name', name)
          ..add('iconUrl', iconUrl))
        .toString();
  }
}

class GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_userBuilder
    implements
        Builder<
            GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_user,
            GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_userBuilder> {
  _$GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_user?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _login;
  String? get login => _$this._login;
  set login(String? login) => _$this._login = login;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _iconUrl;
  String? get iconUrl => _$this._iconUrl;
  set iconUrl(String? iconUrl) => _$this._iconUrl = iconUrl;

  GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_userBuilder() {
    GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_user
        ._initializeBuilder(this);
  }

  GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_userBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _login = $v.login;
      _name = $v.name;
      _iconUrl = $v.iconUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_user
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_user;
  }

  @override
  void update(
      void Function(
              GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_userBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_user
      build() => _build();

  _$GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_user
      _build() {
    final _$result = _$v ??
        new _$GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_user._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_user',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(id,
                r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_user', 'id'),
            login: BuiltValueNullFieldError.checkNotNull(
                login,
                r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_user',
                'login'),
            name: BuiltValueNullFieldError.checkNotNull(
                name,
                r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_user',
                'name'),
            iconUrl: iconUrl);
    replace(_$result);
    return _$result;
  }
}

class _$GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_sticker
    extends GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_sticker {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String title;
  @override
  final String? imageUrl;
  @override
  final int likesCount;
  @override
  final int downloadsCount;
  @override
  final int usesCount;

  factory _$GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_sticker(
          [void Function(
                  GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_stickerBuilder)?
              updates]) =>
      (new GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_stickerBuilder()
            ..update(updates))
          ._build();

  _$GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_sticker._(
      {required this.G__typename,
      required this.id,
      required this.title,
      this.imageUrl,
      required this.likesCount,
      required this.downloadsCount,
      required this.usesCount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_sticker',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_sticker',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        title,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_sticker',
        'title');
    BuiltValueNullFieldError.checkNotNull(
        likesCount,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_sticker',
        'likesCount');
    BuiltValueNullFieldError.checkNotNull(
        downloadsCount,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_sticker',
        'downloadsCount');
    BuiltValueNullFieldError.checkNotNull(
        usesCount,
        r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_sticker',
        'usesCount');
  }

  @override
  GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_sticker
      rebuild(
              void Function(
                      GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_stickerBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_stickerBuilder
      toBuilder() =>
          new GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_stickerBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_sticker &&
        G__typename == other.G__typename &&
        id == other.id &&
        title == other.title &&
        imageUrl == other.imageUrl &&
        likesCount == other.likesCount &&
        downloadsCount == other.downloadsCount &&
        usesCount == other.usesCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jc(_$hash, likesCount.hashCode);
    _$hash = $jc(_$hash, downloadsCount.hashCode);
    _$hash = $jc(_$hash, usesCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_sticker')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title)
          ..add('imageUrl', imageUrl)
          ..add('likesCount', likesCount)
          ..add('downloadsCount', downloadsCount)
          ..add('usesCount', usesCount))
        .toString();
  }
}

class GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_stickerBuilder
    implements
        Builder<
            GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_sticker,
            GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_stickerBuilder> {
  _$GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_sticker?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  int? _likesCount;
  int? get likesCount => _$this._likesCount;
  set likesCount(int? likesCount) => _$this._likesCount = likesCount;

  int? _downloadsCount;
  int? get downloadsCount => _$this._downloadsCount;
  set downloadsCount(int? downloadsCount) =>
      _$this._downloadsCount = downloadsCount;

  int? _usesCount;
  int? get usesCount => _$this._usesCount;
  set usesCount(int? usesCount) => _$this._usesCount = usesCount;

  GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_stickerBuilder() {
    GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_sticker
        ._initializeBuilder(this);
  }

  GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_stickerBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _title = $v.title;
      _imageUrl = $v.imageUrl;
      _likesCount = $v.likesCount;
      _downloadsCount = $v.downloadsCount;
      _usesCount = $v.usesCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_sticker
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_sticker;
  }

  @override
  void update(
      void Function(
              GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_stickerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_sticker
      build() => _build();

  _$GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_sticker
      _build() {
    final _$result = _$v ??
        new _$GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_sticker._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_sticker',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_sticker', 'id'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_sticker', 'title'),
            imageUrl: imageUrl,
            likesCount: BuiltValueNullFieldError.checkNotNull(
                likesCount, r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_sticker', 'likesCount'),
            downloadsCount: BuiltValueNullFieldError.checkNotNull(
                downloadsCount,
                r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_sticker',
                'downloadsCount'),
            usesCount: BuiltValueNullFieldError.checkNotNull(
                usesCount, r'GViewerNotificationsData_viewer_notifications__asWorkCommentReplyNotificationNode_sticker', 'usesCount'));
    replace(_$result);
    return _$result;
  }
}

class _$GViewerNotificationsData_viewer_notifications__asFollowNotificationNode
    extends GViewerNotificationsData_viewer_notifications__asFollowNotificationNode {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final int createdAt;
  @override
  final GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_user?
      user;

  factory _$GViewerNotificationsData_viewer_notifications__asFollowNotificationNode(
          [void Function(
                  GViewerNotificationsData_viewer_notifications__asFollowNotificationNodeBuilder)?
              updates]) =>
      (new GViewerNotificationsData_viewer_notifications__asFollowNotificationNodeBuilder()
            ..update(updates))
          ._build();

  _$GViewerNotificationsData_viewer_notifications__asFollowNotificationNode._(
      {required this.G__typename,
      required this.id,
      required this.createdAt,
      this.user})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GViewerNotificationsData_viewer_notifications__asFollowNotificationNode',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GViewerNotificationsData_viewer_notifications__asFollowNotificationNode',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        createdAt,
        r'GViewerNotificationsData_viewer_notifications__asFollowNotificationNode',
        'createdAt');
  }

  @override
  GViewerNotificationsData_viewer_notifications__asFollowNotificationNode rebuild(
          void Function(
                  GViewerNotificationsData_viewer_notifications__asFollowNotificationNodeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GViewerNotificationsData_viewer_notifications__asFollowNotificationNodeBuilder
      toBuilder() =>
          new GViewerNotificationsData_viewer_notifications__asFollowNotificationNodeBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GViewerNotificationsData_viewer_notifications__asFollowNotificationNode &&
        G__typename == other.G__typename &&
        id == other.id &&
        createdAt == other.createdAt &&
        user == other.user;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GViewerNotificationsData_viewer_notifications__asFollowNotificationNode')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('createdAt', createdAt)
          ..add('user', user))
        .toString();
  }
}

class GViewerNotificationsData_viewer_notifications__asFollowNotificationNodeBuilder
    implements
        Builder<
            GViewerNotificationsData_viewer_notifications__asFollowNotificationNode,
            GViewerNotificationsData_viewer_notifications__asFollowNotificationNodeBuilder> {
  _$GViewerNotificationsData_viewer_notifications__asFollowNotificationNode?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _createdAt;
  int? get createdAt => _$this._createdAt;
  set createdAt(int? createdAt) => _$this._createdAt = createdAt;

  GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_userBuilder?
      _user;
  GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_userBuilder
      get user => _$this._user ??=
          new GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_userBuilder();
  set user(
          GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_userBuilder?
              user) =>
      _$this._user = user;

  GViewerNotificationsData_viewer_notifications__asFollowNotificationNodeBuilder() {
    GViewerNotificationsData_viewer_notifications__asFollowNotificationNode
        ._initializeBuilder(this);
  }

  GViewerNotificationsData_viewer_notifications__asFollowNotificationNodeBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _createdAt = $v.createdAt;
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GViewerNotificationsData_viewer_notifications__asFollowNotificationNode
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GViewerNotificationsData_viewer_notifications__asFollowNotificationNode;
  }

  @override
  void update(
      void Function(
              GViewerNotificationsData_viewer_notifications__asFollowNotificationNodeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GViewerNotificationsData_viewer_notifications__asFollowNotificationNode
      build() => _build();

  _$GViewerNotificationsData_viewer_notifications__asFollowNotificationNode
      _build() {
    _$GViewerNotificationsData_viewer_notifications__asFollowNotificationNode
        _$result;
    try {
      _$result = _$v ??
          new _$GViewerNotificationsData_viewer_notifications__asFollowNotificationNode._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GViewerNotificationsData_viewer_notifications__asFollowNotificationNode',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'GViewerNotificationsData_viewer_notifications__asFollowNotificationNode',
                  'id'),
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt,
                  r'GViewerNotificationsData_viewer_notifications__asFollowNotificationNode',
                  'createdAt'),
              user: _user?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GViewerNotificationsData_viewer_notifications__asFollowNotificationNode',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_user
    extends GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_user {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String login;
  @override
  final String name;
  @override
  final String? iconUrl;

  factory _$GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_user(
          [void Function(
                  GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_userBuilder)?
              updates]) =>
      (new GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_userBuilder()
            ..update(updates))
          ._build();

  _$GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_user._(
      {required this.G__typename,
      required this.id,
      required this.login,
      required this.name,
      this.iconUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_user',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_user',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        login,
        r'GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_user',
        'login');
    BuiltValueNullFieldError.checkNotNull(
        name,
        r'GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_user',
        'name');
  }

  @override
  GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_user
      rebuild(
              void Function(
                      GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_userBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_userBuilder
      toBuilder() =>
          new GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_userBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_user &&
        G__typename == other.G__typename &&
        id == other.id &&
        login == other.login &&
        name == other.name &&
        iconUrl == other.iconUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, login.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, iconUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_user')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('login', login)
          ..add('name', name)
          ..add('iconUrl', iconUrl))
        .toString();
  }
}

class GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_userBuilder
    implements
        Builder<
            GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_user,
            GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_userBuilder> {
  _$GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_user?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _login;
  String? get login => _$this._login;
  set login(String? login) => _$this._login = login;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _iconUrl;
  String? get iconUrl => _$this._iconUrl;
  set iconUrl(String? iconUrl) => _$this._iconUrl = iconUrl;

  GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_userBuilder() {
    GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_user
        ._initializeBuilder(this);
  }

  GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_userBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _login = $v.login;
      _name = $v.name;
      _iconUrl = $v.iconUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_user
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_user;
  }

  @override
  void update(
      void Function(
              GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_userBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_user
      build() => _build();

  _$GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_user
      _build() {
    final _$result = _$v ??
        new _$GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_user._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_user',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(id,
                r'GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_user', 'id'),
            login: BuiltValueNullFieldError.checkNotNull(
                login,
                r'GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_user',
                'login'),
            name: BuiltValueNullFieldError.checkNotNull(
                name,
                r'GViewerNotificationsData_viewer_notifications__asFollowNotificationNode_user',
                'name'),
            iconUrl: iconUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
