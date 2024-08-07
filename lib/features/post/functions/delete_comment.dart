import 'package:aipictors/features/post/mutations/__generated__/delete_comment.data.gql.dart';
import 'package:aipictors/features/post/mutations/__generated__/delete_comment.req.gql.dart';
import 'package:aipictors/utils/mutate.dart';

typedef Fn<T> = T Function(T);

typedef Builder = Fn<GDeleteCommentReqBuilder>;

Future<GDeleteCommentData?> deleteComment(Builder b) {
  return mutate(GDeleteCommentReq(b));
}
