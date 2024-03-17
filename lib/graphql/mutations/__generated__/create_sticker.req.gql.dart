// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:aipictors/__generated__/serializers.gql.dart' as _i6;
import 'package:aipictors/graphql/mutations/__generated__/create_sticker.ast.gql.dart'
    as _i5;
import 'package:aipictors/graphql/mutations/__generated__/create_sticker.data.gql.dart'
    as _i2;
import 'package:aipictors/graphql/mutations/__generated__/create_sticker.var.gql.dart'
    as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'create_sticker.req.gql.g.dart';

abstract class GCreateStickerReq
    implements
        Built<GCreateStickerReq, GCreateStickerReqBuilder>,
        _i1.OperationRequest<_i2.GCreateStickerData, _i3.GCreateStickerVars> {
  GCreateStickerReq._();

  factory GCreateStickerReq(
          [void Function(GCreateStickerReqBuilder b) updates]) =
      _$GCreateStickerReq;

  static void _initializeBuilder(GCreateStickerReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'CreateSticker',
    )
    ..executeOnListen = true;

  @override
  _i3.GCreateStickerVars get vars;
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
  _i2.GCreateStickerData? Function(
    _i2.GCreateStickerData?,
    _i2.GCreateStickerData?,
  )? get updateResult;
  @override
  _i2.GCreateStickerData? get optimisticResponse;
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
  _i2.GCreateStickerData? parseData(Map<String, dynamic> json) =>
      _i2.GCreateStickerData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GCreateStickerData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GCreateStickerData, _i3.GCreateStickerVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GCreateStickerReq> get serializer =>
      _$gCreateStickerReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GCreateStickerReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateStickerReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GCreateStickerReq.serializer,
        json,
      );
}
