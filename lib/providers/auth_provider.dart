import 'package:akwaaba_bnb/data/sample_accommodations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:akwaaba_bnb/models/auth_model.dart';

class AuthNotifier extends StateNotifier<AuthModel> {
  AuthNotifier() : super(AuthModel(id: "", firstName: "", accessToken: ""));

  void setAuth(AuthModel auth) {
    state = AuthModel(
      id: auth.id,
      firstName: auth.firstName,
      accessToken: auth.accessToken,
    );
  }
}

final authProvider = StateNotifierProvider<AuthNotifier, AuthModel>((ref) {
  return AuthNotifier();
});
