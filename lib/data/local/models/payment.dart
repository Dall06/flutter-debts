import 'package:hive/hive.dart';

@HiveType(typeId: 3)
class Payment {
  Payment({
    required this.title,
    required this.reason,
    required this.amount,
    required this.createdAt,
    required this.payed,
    required this.repeatAt,
  });

  @HiveField(0)
  String title;

  @HiveField(1)
  String reason;

  @HiveField(2)
  double amount;

  @HiveField(3)
  DateTime createdAt;

  @HiveField(4)
  double payed;

  @HiveField(5)
  DateTime repeatAt;

  @override
  String toString() {
    return 'Expense(title: $title, reason: $reason, amount: $amount, createdAt: $createdAt, payed: $payed, repeatAt: $repeatAt)';
  }

  factory Payment.fromJson(dynamic data) {
    return Payment(
      title: data['title'],
      reason: data['reason'],
      amount: data['amount'],
      createdAt: data['createdAt'],
      payed: data['payed'],
      repeatAt: data['repeatAt'],
    );
  }
}
