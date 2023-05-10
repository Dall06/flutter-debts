import 'package:flutter_riverpod/flutter_riverpod.dart';

class Credentials {
  late final String email;
  late final String password;

  Credentials();

  bool isValidEmail(String value) {
    if (value.isEmpty) {
      return false;
    }

    email = value;
    return true;
  }

  bool isValidPassword(String value) {
    if (value.isEmpty) {
      return false;
    }

    password = value;
    return true;
  }

  bool areValidCredentials() {
    if (isValidEmail(email) && isValidPassword(password)) {
      return true;
    }
    return false;
  }
}

final credentialsProvider = Provider<Credentials>((ref) => Credentials());