class HandleOverDrawn implements Exception {
  String errorMessage() {
    return 'error';
  }
}

class BankAccount {
  num balance;
  final String owner;

  BankAccount(this.balance, this.owner);

  deposit() {}
  withdraw(num overDrawnValue) {
    if (overDrawnValue <= balance) {
      balance = balance - overDrawnValue;
      print(balance);
    } else {
      throw HandleOverDrawn;
    }
  }
}

void main() {
  // ignore: unused_local_variable
  BankAccount acc = BankAccount(10000, 'Toka');
  acc.withdraw(2000);
}
