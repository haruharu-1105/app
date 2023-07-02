import 'package:aipictors/client.dart';
import 'package:aipictors/graphql/__generated__/login.data.gql.dart';
import 'package:aipictors/graphql/__generated__/login.req.gql.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';

Future<GLoginWithPasswordData?> loginWithPassword({
  required String login,
  required String password,
}) async {
  final client = createClient();

  final req = GLoginWithPasswordReq((builder) {
    return builder
      ..vars.input.login = login
      ..vars.input.password = password;
  });

  final stream = client.request(req).map((response) {
    if (response.hasErrors) {
      throw response.graphqlErrors!.first;
    }
    return response.data;
  });

  final data = await stream.first;

  if (data == null) {
    throw PlatformException(code: 'ERROR', message: 'ログインに失敗しました');
  }

  final token = data.loginWithPassword.token;

  await FirebaseAuth.instance.signInWithCustomToken(token);

  return data;
}
