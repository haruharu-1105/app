// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:aipictors/__generated__/serializers.gql.dart' as _i6;
import 'package:aipictors/features/generation/mutations/__generated__/update_protected_image_generation_task.ast.gql.dart'
    as _i5;
import 'package:aipictors/features/generation/mutations/__generated__/update_protected_image_generation_task.data.gql.dart'
    as _i2;
import 'package:aipictors/features/generation/mutations/__generated__/update_protected_image_generation_task.var.gql.dart'
    as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'update_protected_image_generation_task.req.gql.g.dart';

abstract class GUpdateProtectedImageGenerationTaskReq
    implements
        Built<GUpdateProtectedImageGenerationTaskReq,
            GUpdateProtectedImageGenerationTaskReqBuilder>,
        _i1.OperationRequest<_i2.GUpdateProtectedImageGenerationTaskData,
            _i3.GUpdateProtectedImageGenerationTaskVars> {
  GUpdateProtectedImageGenerationTaskReq._();

  factory GUpdateProtectedImageGenerationTaskReq(
      [void Function(GUpdateProtectedImageGenerationTaskReqBuilder b)
          updates]) = _$GUpdateProtectedImageGenerationTaskReq;

  static void _initializeBuilder(
          GUpdateProtectedImageGenerationTaskReqBuilder b) =>
      b
        ..operation = _i4.Operation(
          document: _i5.document,
          operationName: 'UpdateProtectedImageGenerationTask',
        )
        ..executeOnListen = true;

  @override
  _i3.GUpdateProtectedImageGenerationTaskVars get vars;
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
  _i2.GUpdateProtectedImageGenerationTaskData? Function(
    _i2.GUpdateProtectedImageGenerationTaskData?,
    _i2.GUpdateProtectedImageGenerationTaskData?,
  )? get updateResult;
  @override
  _i2.GUpdateProtectedImageGenerationTaskData? get optimisticResponse;
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
  _i2.GUpdateProtectedImageGenerationTaskData? parseData(
          Map<String, dynamic> json) =>
      _i2.GUpdateProtectedImageGenerationTaskData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(
          _i2.GUpdateProtectedImageGenerationTaskData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GUpdateProtectedImageGenerationTaskData,
      _i3.GUpdateProtectedImageGenerationTaskVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GUpdateProtectedImageGenerationTaskReq> get serializer =>
      _$gUpdateProtectedImageGenerationTaskReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GUpdateProtectedImageGenerationTaskReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateProtectedImageGenerationTaskReq? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GUpdateProtectedImageGenerationTaskReq.serializer,
        json,
      );
}
