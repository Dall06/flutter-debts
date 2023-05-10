import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

abstract class AuthRepository {
  Future<User?> signInWithEmailAndPassword(String email, String password);
  Future<User?> signInWithGoogle();
}

class AuthRepositoryImpl implements AuthRepository {
  late final FirebaseAuth auth;
  late final GoogleSignIn googleSignIn;

  AuthRepositoryImpl({required this.auth, required this.googleSignIn});

  @override
  Future<User?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential result = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      return user;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<User?> signInWithGoogle() async {
    try {
      GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
      GoogleSignInAuthentication? googleSignInAuthentication = await googleSignInAccount?.authentication;

      AuthCredential credential = GoogleAuthProvider.credential(
          idToken: googleSignInAuthentication?.idToken,
          accessToken: googleSignInAuthentication?.accessToken);

      UserCredential result = await auth.signInWithCredential(credential);
      User? user = result.user;
      return user;
    } catch (e) {
      return null;
    }
  }
}
