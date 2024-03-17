// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:aipictors/__generated__/serializers.gql.dart' as _i6;
import 'package:aipictors/graphql/__generated__/album.ast.gql.dart' as _i5;
import 'package:aipictors/graphql/__generated__/album.data.gql.dart' as _i2;
import 'package:aipictors/graphql/__generated__/album.var.gql.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'album.req.gql.g.dart';

abstract class GAlbumReq
    implements
        Built<GAlbumReq, GAlbumReqBuilder>,
        _i1.OperationRequest<_i2.GAlbumData, _i3.GAlbumVars> {
  GAlbumReq._();

  factory GAlbumReq([void Function(GAlbumReqBuilder b) updates]) = _$GAlbumReq;

  static void _initializeBuilder(GAlbumReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'Album',
    )
    ..executeOnListen = true;

  @override
  _i3.GAlbumVars get vars;
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
  _i2.GAlbumData? Function(
    _i2.GAlbumData?,
    _i2.GAlbumData?,
  )? get updateResult;
  @override
  _i2.GAlbumData? get optimisticResponse;
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
  _i2.GAlbumData? parseData(Map<String, dynamic> json) =>
      _i2.GAlbumData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GAlbumData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GAlbumData, _i3.GAlbumVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GAlbumReq> get serializer => _$gAlbumReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GAlbumReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAlbumReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GAlbumReq.serializer,
        json,
      );
}
