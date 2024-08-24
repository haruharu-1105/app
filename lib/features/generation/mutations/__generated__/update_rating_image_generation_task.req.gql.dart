// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:aipictors/__generated__/serializers.gql.dart' as _i6;
import 'package:aipictors/features/generation/mutations/__generated__/update_rating_image_generation_task.ast.gql.dart'
    as _i5;
import 'package:aipictors/features/generation/mutations/__generated__/update_rating_image_generation_task.data.gql.dart'
    as _i2;
import 'package:aipictors/features/generation/mutations/__generated__/update_rating_image_generation_task.var.gql.dart'
    as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'update_rating_image_generation_task.req.gql.g.dart';

abstract class GUpdateRatingImageGenerationTaskReq
    implements
        Built<GUpdateRatingImageGenerationTaskReq,
            GUpdateRatingImageGenerationTaskReqBuilder>,
        _i1.OperationRequest<_i2.GUpdateRatingImageGenerationTaskData,
            _i3.GUpdateRatingImageGenerationTaskVars> {
  GUpdateRatingImageGenerationTaskReq._();

  factory GUpdateRatingImageGenerationTaskReq(
      [void Function(GUpdateRatingImageGenerationTaskReqBuilder b)
          updates]) = _$GUpdateRatingImageGenerationTaskReq;

  static void _initializeBuilder(
          GUpdateRatingImageGenerationTaskReqBuilder b) =>
      b
        ..operation = _i4.Operation(
          document: _i5.document,
          operationName: 'UpdateRatingImageGenerationTask',
        )
        ..executeOnListen = true;

  @override
  _i3.GUpdateRatingImageGenerationTaskVars get vars;
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
  _i2.GUpdateRatingImageGenerationTaskData? Function(
    _i2.GUpdateRatingImageGenerationTaskData?,
    _i2.GUpdateRatingImageGenerationTaskData?,
  )? get updateResult;
  @override
  _i2.GUpdateRatingImageGenerationTaskData? get optimisticResponse;
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
  _i2.GUpdateRatingImageGenerationTaskData? parseData(
          Map<String, dynamic> json) =>
      _i2.GUpdateRatingImageGenerationTaskData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(
          _i2.GUpdateRatingImageGenerationTaskData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GUpdateRatingImageGenerationTaskData,
      _i3.GUpdateRatingImageGenerationTaskVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GUpdateRatingImageGenerationTaskReq> get serializer =>
      _$gUpdateRatingImageGenerationTaskReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GUpdateRatingImageGenerationTaskReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateRatingImageGenerationTaskReq? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GUpdateRatingImageGenerationTaskReq.serializer,
        json,
      );
}
