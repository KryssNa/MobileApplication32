class SimpleInterestModel {
  final int principal;
  final double time;
  final double rate;

  SimpleInterestModel(
      {required this.principal, required this.rate, required this.time});

  double simpleInterest() {
    return principal * time * rate / 100;
  }
}
