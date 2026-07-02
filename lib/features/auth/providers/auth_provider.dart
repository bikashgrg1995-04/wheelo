import 'package:flutter/foundation.dart';

enum AuthStatus { idle, loading, error, authenticated }

/// Handles login state. The actual API call is stubbed for now —
/// wire this up to the Django backend (JWT auth) once it's ready.
class AuthProvider extends ChangeNotifier {
  AuthStatus status = AuthStatus.idle;
  String? errorMessage;
  bool rememberMe = false;

  bool get isLoading => status == AuthStatus.loading;

  void toggleRememberMe(bool value) {
    rememberMe = value;
    notifyListeners();
  }

  Future<bool> login({
    required String email,
    required String password,
  }) async {
    if (email.trim().isEmpty || password.isEmpty) {
      errorMessage = 'Email and password are required';
      status = AuthStatus.error;
      notifyListeners();
      return false;
    }

    status = AuthStatus.loading;
    errorMessage = null;
    notifyListeners();

    try {
      // TODO: replace with real Dio call to the Wheelo backend, e.g.
      // final res = await dio.post('/auth/login/', data: {...});
      // then persist tokens via flutter_secure_storage.
      await Future.delayed(const Duration(milliseconds: 900));

      status = AuthStatus.authenticated;
      notifyListeners();
      return true;
    } catch (e) {
      status = AuthStatus.error;
      errorMessage = 'Login failed. Please check your credentials.';
      notifyListeners();
      return false;
    }
  }
}
