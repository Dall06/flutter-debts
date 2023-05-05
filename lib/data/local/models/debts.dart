import 'package:hive/hive.dart';

import 'creditor.dart';
import 'debtor.dart';

@HiveType(typeId: 2)
class Debt {
  Debt({
    required this.title,
    required this.reason,
    required this.amount,
    required this.createdAt,
    required this.creditor,
    required this.debtors,
    required this.completed,
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
  Creditor creditor;

  @HiveField(5)
  List<Debtor> debtors;

  @HiveField(5)
  int completed;

  @override
  String toString() {
    return 'Debt(title: $title, reason: $reason, amount: $amount, createdAt: $createdAt, creditor: $creditor, debtors: $debtors)';
  }

  factory Debt.fromJson(dynamic data) {
    return Debt(
        title: data['title'],
        reason: data['reason'],
        amount: data['amount'],
        createdAt: data['createdAt'],
        creditor: Creditor(
          name: data['creditor']['name'],
          bankReference: data['creditor']['bankReference'],
          phone: data['creditor']['phone'],
          email: data['creditor']['email'],
          address: data['creditor']['address']
        ),
        debtors: (data['debtors'] as List<dynamic>).map((debtor) => Debtor(
          name: data['debtors']['name'],
          bankReference: data['debtors']['bankReference'],
          email: data['debtors']['email'],
          address: data['debtors']['address'],
          payment: data['debtors']['payment'],
        )).toList(),
        completed: data['completed']);
  }
}