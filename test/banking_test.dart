// test/banking_test.dart

import 'package:test/test.dart';
import 'package:dart_banking_app/banking.dart'; // Altere o caminho se necessário

void main() {
  group('CheckingAccount', () {
    test('should deposit and withdraw correctly', () {
      final account = CheckingAccount('Checking Account', 100.0);
      
      account.deposit(50.0);
      expect(account.balance, 150.0);
      
      account.withdraw(30.0);
      expect(account.balance, 120.0);
    });
  });

  group('SavingsAccount', () {
    test('should deposit and withdraw correctly', () {
      final account = SavingsAccount('Savings Account', 100);
      
      account.deposit(50);
      expect(account.balance, 150);
      
      account.withdraw(30);
      expect(account.balance, 120);
    });
  });
}
