// lib/main.dart

import 'banking.dart';

void main() {
  // Criando uma conta corrente e realizando operações
  final checkingAccount = CheckingAccount('Checking Account', 100.0);
  print('Initial Checking Account Balance: ${checkingAccount.balance}');
  
  checkingAccount.deposit(50.0);
  print('After Deposit: ${checkingAccount.balance}');
  
  checkingAccount.withdraw(30.0);
  print('After Withdrawal: ${checkingAccount.balance}');

  // Criando uma conta poupança e realizando operações
  final savingsAccount = SavingsAccount('Savings Account', 100);
  print('Initial Savings Account Balance: ${savingsAccount.balance}');
  
  savingsAccount.deposit(50);
  print('After Deposit: ${savingsAccount.balance}');
  
  savingsAccount.withdraw(30);
  print('After Withdrawal: ${savingsAccount.balance}');
}
