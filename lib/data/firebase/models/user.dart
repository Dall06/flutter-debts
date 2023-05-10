class User {
  User({
    this.uid,
    this.email,
    this.password,
  });

  late String? uid;
  late String? email;
  late String? password;

  @override
  String toString() {
    return 'User(uid: $uid, email: $email, password: $password)';
  }
}