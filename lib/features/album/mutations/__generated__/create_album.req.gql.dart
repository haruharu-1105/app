// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:aipictors/__generated__/serializers.gql.dart' as _i6;
import 'package:aipictors/features/album/mutations/__generated__/create_album.ast.gql.dart'
    as _i5;
import 'package:aipictors/features/album/mutations/__generated__/create_album.data.gql.dart'
    as _i2;
import 'package:aipictors/features/album/mutations/__generated__/create_album.var.gql.dart'
    as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'create_album.req.gql.g.dart';

abstract class GCreateAlbumReq
    implements
        Built<GCreateAlbumReq, GCreateAlbumReqBuilder>,
        _i1.OperationRequest<_i2.GCreateAlbumData, _i3.GCreateAlbumVars> {
  GCreateAlbumReq._();

  factory GCreateAlbumReq([void Function(GCreateAlbumReqBuilder b) updates]) =
      _$GCreateAlbumReq;

  static void _initializeBuilder(GCreateAlbumReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'CreateAlbum',
    )
    ..executeOnListen = true;

  @override
  _i3.GCreateAlbumVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GCreateAlbumData? Function(
    _i2.GCreateAlbumData?,
    _i2.GCreateAlbumData?,
  )? get updateResult;
  @override
  _i2.GCreateAlbumData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GCreateAlbumData? parseData(Map<String, dynamic> json) =>
      _i2.GCreateAlbumData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GCreateAlbumData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GCreateAlbumData, _i3.GCreateAlbumVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GCreateAlbumReq> get serializer =>
      _$gCreateAlbumReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GCreateAlbumReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateAlbumReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GCreateAlbumReq.serializer,
        json,
      );
}
