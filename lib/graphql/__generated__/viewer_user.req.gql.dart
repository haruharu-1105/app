// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:aipictors/__generated__/serializers.gql.dart' as _i6;
import 'package:aipictors/graphql/__generated__/viewer_user.ast.gql.dart'
    as _i5;
import 'package:aipictors/graphql/__generated__/viewer_user.data.gql.dart'
    as _i2;
import 'package:aipictors/graphql/__generated__/viewer_user.var.gql.dart'
    as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'viewer_user.req.gql.g.dart';

abstract class GViewerUserReq
    implements
        Built<GViewerUserReq, GViewerUserReqBuilder>,
        _i1.OperationRequest<_i2.GViewerUserData, _i3.GViewerUserVars> {
  GViewerUserReq._();

  factory GViewerUserReq([Function(GViewerUserReqBuilder b) updates]) =
      _$GViewerUserReq;

  static void _initializeBuilder(GViewerUserReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'ViewerUser',
    )
    ..executeOnListen = true;
  @override
  _i3.GViewerUserVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GViewerUserData? Function(
    _i2.GViewerUserData?,
    _i2.GViewerUserData?,
  )? get updateResult;
  @override
  _i2.GViewerUserData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GViewerUserData? parseData(Map<String, dynamic> json) =>
      _i2.GViewerUserData.fromJson(json);
  static Serializer<GViewerUserReq> get serializer =>
      _$gViewerUserReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GViewerUserReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GViewerUserReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GViewerUserReq.serializer,
        json,
      );
}
