import 'banking.dart';

void main() {
  final contaCorrente = ContaCorrente('Conta Corrente', 100.0);
  print('Saldo Inicial da Conta Corrente: ${contaCorrente.saldo}');
  
  contaCorrente.depositar(50.0);
  print('Após Depósito: ${contaCorrente.saldo}');
  
  contaCorrente.sacar(30.0);
  print('Após Saque: ${contaCorrente.saldo}');

  final contaPoupanca = ContaPoupanca('Conta Poupança', 100);
  print('Saldo Inicial da Conta Poupança: ${contaPoupanca.saldo}');
  
  contaPoupanca.depositar(50);
  print('Após Depósito: ${contaPoupanca.saldo}');
  
  contaPoupanca.sacar(30);
  print('Após Saque: ${contaPoupanca.saldo}');
}
