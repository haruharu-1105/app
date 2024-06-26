// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'best_works.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GBestWorksData> _$gBestWorksDataSerializer =
    new _$GBestWorksDataSerializer();
Serializer<GBestWorksData_bestWorks> _$gBestWorksDataBestWorksSerializer =
    new _$GBestWorksData_bestWorksSerializer();
Serializer<GBestWorksData_bestWorks_thumbnailImage>
    _$gBestWorksDataBestWorksThumbnailImageSerializer =
    new _$GBestWorksData_bestWorks_thumbnailImageSerializer();

class _$GBestWorksDataSerializer
    implements StructuredSerializer<GBestWorksData> {
  @override
  final Iterable<Type> types = const [GBestWorksData, _$GBestWorksData];
  @override
  final String wireName = 'GBestWorksData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GBestWorksData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'bestWorks',
      serializers.serialize(object.bestWorks,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GBestWorksData_bestWorks)])),
    ];

    return result;
  }

  @override
  GBestWorksData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GBestWorksDataBuilder();

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
        case 'bestWorks':
          result.bestWorks.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GBestWorksData_bestWorks)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GBestWorksData_bestWorksSerializer
    implements StructuredSerializer<GBestWorksData_bestWorks> {
  @override
  final Iterable<Type> types = const [
    GBestWorksData_bestWorks,
    _$GBestWorksData_bestWorks
  ];
  @override
  final String wireName = 'GBestWorksData_bestWorks';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GBestWorksData_bestWorks object,
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
      'imageAspectRatio',
      serializers.serialize(object.imageAspectRatio,
          specifiedType: const FullType(double)),
    ];
    Object? value;
    value = object.thumbnailImage;
    if (value != null) {
      result
        ..add('thumbnailImage')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GBestWorksData_bestWorks_thumbnailImage)));
    }
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
  GBestWorksData_bestWorks deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GBestWorksData_bestWorksBuilder();

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
        case 'thumbnailImage':
          result.thumbnailImage.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GBestWorksData_bestWorks_thumbnailImage))!
              as GBestWorksData_bestWorks_thumbnailImage);
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

class _$GBestWorksData_bestWorks_thumbnailImageSerializer
    implements StructuredSerializer<GBestWorksData_bestWorks_thumbnailImage> {
  @override
  final Iterable<Type> types = const [
    GBestWorksData_bestWorks_thumbnailImage,
    _$GBestWorksData_bestWorks_thumbnailImage
  ];
  @override
  final String wireName = 'GBestWorksData_bestWorks_thumbnailImage';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GBestWorksData_bestWorks_thumbnailImage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'downloadURL',
      serializers.serialize(object.downloadURL,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GBestWorksData_bestWorks_thumbnailImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GBestWorksData_bestWorks_thumbnailImageBuilder();

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
        case 'downloadURL':
          result.downloadURL = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GBestWorksData extends GBestWorksData {
  @override
  final String G__typename;
  @override
  final BuiltList<GBestWorksData_bestWorks> bestWorks;

  factory _$GBestWorksData([void Function(GBestWorksDataBuilder)? updates]) =>
      (new GBestWorksDataBuilder()..update(updates))._build();

  _$GBestWorksData._({required this.G__typename, required this.bestWorks})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GBestWorksData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        bestWorks, r'GBestWorksData', 'bestWorks');
  }

  @override
  GBestWorksData rebuild(void Function(GBestWorksDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GBestWorksDataBuilder toBuilder() =>
      new GBestWorksDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GBestWorksData &&
        G__typename == other.G__typename &&
        bestWorks == other.bestWorks;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, bestWorks.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GBestWorksData')
          ..add('G__typename', G__typename)
          ..add('bestWorks', bestWorks))
        .toString();
  }
}

class GBestWorksDataBuilder
    implements Builder<GBestWorksData, GBestWorksDataBuilder> {
  _$GBestWorksData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GBestWorksData_bestWorks>? _bestWorks;
  ListBuilder<GBestWorksData_bestWorks> get bestWorks =>
      _$this._bestWorks ??= new ListBuilder<GBestWorksData_bestWorks>();
  set bestWorks(ListBuilder<GBestWorksData_bestWorks>? bestWorks) =>
      _$this._bestWorks = bestWorks;

  GBestWorksDataBuilder() {
    GBestWorksData._initializeBuilder(this);
  }

  GBestWorksDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _bestWorks = $v.bestWorks.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GBestWorksData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GBestWorksData;
  }

  @override
  void update(void Function(GBestWorksDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GBestWorksData build() => _build();

  _$GBestWorksData _build() {
    _$GBestWorksData _$result;
    try {
      _$result = _$v ??
          new _$GBestWorksData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GBestWorksData', 'G__typename'),
              bestWorks: bestWorks.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'bestWorks';
        bestWorks.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GBestWorksData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GBestWorksData_bestWorks extends GBestWorksData_bestWorks {
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
  final GBestWorksData_bestWorks_thumbnailImage? thumbnailImage;
  @override
  final double? thumbnailImagePosition;
  @override
  final double imageAspectRatio;

  factory _$GBestWorksData_bestWorks(
          [void Function(GBestWorksData_bestWorksBuilder)? updates]) =>
      (new GBestWorksData_bestWorksBuilder()..update(updates))._build();

  _$GBestWorksData_bestWorks._(
      {required this.G__typename,
      required this.id,
      required this.title,
      required this.likesCount,
      required this.commentsCount,
      required this.createdAt,
      this.thumbnailImage,
      this.thumbnailImagePosition,
      required this.imageAspectRatio})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GBestWorksData_bestWorks', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GBestWorksData_bestWorks', 'id');
    BuiltValueNullFieldError.checkNotNull(
        title, r'GBestWorksData_bestWorks', 'title');
    BuiltValueNullFieldError.checkNotNull(
        likesCount, r'GBestWorksData_bestWorks', 'likesCount');
    BuiltValueNullFieldError.checkNotNull(
        commentsCount, r'GBestWorksData_bestWorks', 'commentsCount');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GBestWorksData_bestWorks', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        imageAspectRatio, r'GBestWorksData_bestWorks', 'imageAspectRatio');
  }

  @override
  GBestWorksData_bestWorks rebuild(
          void Function(GBestWorksData_bestWorksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GBestWorksData_bestWorksBuilder toBuilder() =>
      new GBestWorksData_bestWorksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GBestWorksData_bestWorks &&
        G__typename == other.G__typename &&
        id == other.id &&
        title == other.title &&
        likesCount == other.likesCount &&
        commentsCount == other.commentsCount &&
        createdAt == other.createdAt &&
        thumbnailImage == other.thumbnailImage &&
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
    _$hash = $jc(_$hash, thumbnailImage.hashCode);
    _$hash = $jc(_$hash, thumbnailImagePosition.hashCode);
    _$hash = $jc(_$hash, imageAspectRatio.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GBestWorksData_bestWorks')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title)
          ..add('likesCount', likesCount)
          ..add('commentsCount', commentsCount)
          ..add('createdAt', createdAt)
          ..add('thumbnailImage', thumbnailImage)
          ..add('thumbnailImagePosition', thumbnailImagePosition)
          ..add('imageAspectRatio', imageAspectRatio))
        .toString();
  }
}

class GBestWorksData_bestWorksBuilder
    implements
        Builder<GBestWorksData_bestWorks, GBestWorksData_bestWorksBuilder> {
  _$GBestWorksData_bestWorks? _$v;

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

  GBestWorksData_bestWorks_thumbnailImageBuilder? _thumbnailImage;
  GBestWorksData_bestWorks_thumbnailImageBuilder get thumbnailImage =>
      _$this._thumbnailImage ??=
          new GBestWorksData_bestWorks_thumbnailImageBuilder();
  set thumbnailImage(
          GBestWorksData_bestWorks_thumbnailImageBuilder? thumbnailImage) =>
      _$this._thumbnailImage = thumbnailImage;

  double? _thumbnailImagePosition;
  double? get thumbnailImagePosition => _$this._thumbnailImagePosition;
  set thumbnailImagePosition(double? thumbnailImagePosition) =>
      _$this._thumbnailImagePosition = thumbnailImagePosition;

  double? _imageAspectRatio;
  double? get imageAspectRatio => _$this._imageAspectRatio;
  set imageAspectRatio(double? imageAspectRatio) =>
      _$this._imageAspectRatio = imageAspectRatio;

  GBestWorksData_bestWorksBuilder() {
    GBestWorksData_bestWorks._initializeBuilder(this);
  }

  GBestWorksData_bestWorksBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _title = $v.title;
      _likesCount = $v.likesCount;
      _commentsCount = $v.commentsCount;
      _createdAt = $v.createdAt;
      _thumbnailImage = $v.thumbnailImage?.toBuilder();
      _thumbnailImagePosition = $v.thumbnailImagePosition;
      _imageAspectRatio = $v.imageAspectRatio;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GBestWorksData_bestWorks other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GBestWorksData_bestWorks;
  }

  @override
  void update(void Function(GBestWorksData_bestWorksBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GBestWorksData_bestWorks build() => _build();

  _$GBestWorksData_bestWorks _build() {
    _$GBestWorksData_bestWorks _$result;
    try {
      _$result = _$v ??
          new _$GBestWorksData_bestWorks._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GBestWorksData_bestWorks', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GBestWorksData_bestWorks', 'id'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'GBestWorksData_bestWorks', 'title'),
              likesCount: BuiltValueNullFieldError.checkNotNull(
                  likesCount, r'GBestWorksData_bestWorks', 'likesCount'),
              commentsCount: BuiltValueNullFieldError.checkNotNull(
                  commentsCount, r'GBestWorksData_bestWorks', 'commentsCount'),
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt, r'GBestWorksData_bestWorks', 'createdAt'),
              thumbnailImage: _thumbnailImage?.build(),
              thumbnailImagePosition: thumbnailImagePosition,
              imageAspectRatio: BuiltValueNullFieldError.checkNotNull(
                  imageAspectRatio,
                  r'GBestWorksData_bestWorks',
                  'imageAspectRatio'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'thumbnailImage';
        _thumbnailImage?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GBestWorksData_bestWorks', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GBestWorksData_bestWorks_thumbnailImage
    extends GBestWorksData_bestWorks_thumbnailImage {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String downloadURL;

  factory _$GBestWorksData_bestWorks_thumbnailImage(
          [void Function(GBestWorksData_bestWorks_thumbnailImageBuilder)?
              updates]) =>
      (new GBestWorksData_bestWorks_thumbnailImageBuilder()..update(updates))
          ._build();

  _$GBestWorksData_bestWorks_thumbnailImage._(
      {required this.G__typename, required this.id, required this.downloadURL})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GBestWorksData_bestWorks_thumbnailImage', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GBestWorksData_bestWorks_thumbnailImage', 'id');
    BuiltValueNullFieldError.checkNotNull(
        downloadURL, r'GBestWorksData_bestWorks_thumbnailImage', 'downloadURL');
  }

  @override
  GBestWorksData_bestWorks_thumbnailImage rebuild(
          void Function(GBestWorksData_bestWorks_thumbnailImageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GBestWorksData_bestWorks_thumbnailImageBuilder toBuilder() =>
      new GBestWorksData_bestWorks_thumbnailImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GBestWorksData_bestWorks_thumbnailImage &&
        G__typename == other.G__typename &&
        id == other.id &&
        downloadURL == other.downloadURL;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, downloadURL.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GBestWorksData_bestWorks_thumbnailImage')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('downloadURL', downloadURL))
        .toString();
  }
}

class GBestWorksData_bestWorks_thumbnailImageBuilder
    implements
        Builder<GBestWorksData_bestWorks_thumbnailImage,
            GBestWorksData_bestWorks_thumbnailImageBuilder> {
  _$GBestWorksData_bestWorks_thumbnailImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _downloadURL;
  String? get downloadURL => _$this._downloadURL;
  set downloadURL(String? downloadURL) => _$this._downloadURL = downloadURL;

  GBestWorksData_bestWorks_thumbnailImageBuilder() {
    GBestWorksData_bestWorks_thumbnailImage._initializeBuilder(this);
  }

  GBestWorksData_bestWorks_thumbnailImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _downloadURL = $v.downloadURL;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GBestWorksData_bestWorks_thumbnailImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GBestWorksData_bestWorks_thumbnailImage;
  }

  @override
  void update(
      void Function(GBestWorksData_bestWorks_thumbnailImageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GBestWorksData_bestWorks_thumbnailImage build() => _build();

  _$GBestWorksData_bestWorks_thumbnailImage _build() {
    final _$result = _$v ??
        new _$GBestWorksData_bestWorks_thumbnailImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GBestWorksData_bestWorks_thumbnailImage', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GBestWorksData_bestWorks_thumbnailImage', 'id'),
            downloadURL: BuiltValueNullFieldError.checkNotNull(downloadURL,
                r'GBestWorksData_bestWorks_thumbnailImage', 'downloadURL'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
