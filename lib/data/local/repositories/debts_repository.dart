import 'package:flutter_debts/data/local/models/debts.dart';
import 'package:hive/hive.dart';

abstract class DebtRepository {
  Future<Debt> getDebtByKey(String key);
  Future<List<Debt>> getDebts();
  Future<void> saveDebt(String key, Debt debt);
  Future<void> updateDebt(String key, Debt debt);
  Future<void> deleteDebt(String key);
}

class DebtRepositoryImpl implements DebtRepository {
  late final Box _debtBox;

  DebtRepositoryImpl({required debtBox}) : _debtBox = debtBox;

  @override
  Future<Debt> getDebtByKey(String key) async {
    final res = _debtBox.get(key);
    if (res == null) {
      return Future.error('debt not found');
    }
    final debt = Debt.fromJson(res);
    return debt;
  }

  @override
  Future<List<Debt>> getDebts() async {
    final res = _debtBox.values.toList();
    if (res.isEmpty) {
      return Future.error('Debt not found');
    }
    final debts = res.map((dynamic debt) => Debt.fromJson(debt)).toList();
    return debts;
  }

  @override
  Future<void> saveDebt(String key, Debt debt) async {
    await _debtBox.put(key, debt);
    return;
  }

  @override
  Future<void> updateDebt(String key, Debt debt) async {
    await _debtBox.put(key, debt);
    return;
  }

  @override
  Future<void> deleteDebt(String key) async {
    await _debtBox.delete(key);
    return;
  }
}
