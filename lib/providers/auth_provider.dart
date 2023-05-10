import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../data/firebase/repositories/auth_repository.dart';
import 'credentials_provider.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  FirebaseAuth auth = FirebaseAuth.instance;
  GoogleSignIn googleSignIn = GoogleSignIn();

  return AuthRepositoryImpl(
    auth: auth,
    googleSignIn: googleSignIn,
  );
});

final authProvider = StateNotifierProvider<AuthStateNotifier, AsyncValue<User?>>
  ((ref) => AuthStateNotifier(ref.watch(authRepositoryProvider), ref.watch(credentialsProvider)));

class AuthStateNotifier extends StateNotifier<AsyncValue<User?>> {
  final AuthRepository _authRepository;
  final Credentials _credentials;

  AuthStateNotifier(this._authRepository, this._credentials) : super(const AsyncValue.loading());

  Future<void> signInWithEmailAndPassword() async {
    try {
      state = const AsyncValue.loading();

      final valid = _credentials.areValidCredentials();
      if (!valid) {
        throw AsyncValue.error('invalid credentials', StackTrace.current);
      }

      final user = await _authRepository.signInWithEmailAndPassword(_credentials.email, _credentials.password);
      if (user != null) {
        state = AsyncValue.data(user);
      } else {
        state = const AsyncValue.data(null);
      }
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  Future<void> signInWithGoogle() async {
    try {
      state = const AsyncValue.loading();
      final user = await _authRepository.signInWithGoogle();
      if (user != null) {
        state = AsyncValue.data(user);
      } else {
        state = const AsyncValue.data(null);
      }
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}
