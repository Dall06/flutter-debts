import 'package:hive/hive.dart';

@HiveType(typeId: 1)
class Debtor {
  Debtor({
    required this.name,
    required this.bankReference,
    this.phone,
    this.email,
    this.address,
    required this.payment,
  });

  @HiveField(0)
  String name;

  @HiveField(1)
  String bankReference;

  @HiveField(2)
  String? phone;

  @HiveField(3)
  String? email;

  @HiveField(4)
  String? address;

  @HiveField(5)
  double payment;

  @override
  String toString() {
    return 'Creditor(name: $name, bankReference: $bankReference, phone: $phone, email: $email, address: $address, payment: $payment)';
  }
}
