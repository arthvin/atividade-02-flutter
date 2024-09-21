// lib/banking.dart

// Classe genérica para representar uma conta bancária
abstract class Account<T> {
  String accountName;
  T balance;

  Account(this.accountName, this.balance);

  void deposit(T amount) {
    balance = _add(balance, amount);
  }

  void withdraw(T amount) {
    balance = _subtract(balance, amount);
  }

  T _add(T a, T b);
  T _subtract(T a, T b);
}

// Implementação da conta corrente com balance como double
class CheckingAccount extends Account<double> {
  CheckingAccount(String accountName, double balance) : super(accountName, balance);

  @override
  double _add(double a, double b) => a + b;

  @override
  double _subtract(double a, double b) => a - b;
}

// Implementação da conta poupança com balance como int
class SavingsAccount extends Account<int> {
  SavingsAccount(String accountName, int balance) : super(accountName, balance);

  @override
  int _add(int a, int b) => a + b;

  @override
  int _subtract(int a, int b) => a - b;
}
