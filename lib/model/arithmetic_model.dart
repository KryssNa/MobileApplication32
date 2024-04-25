class ArithmeticModel {
  final double firstNum;
  final double secondNum;
  ArithmeticModel({required this.firstNum, required this.secondNum});

  double sum() {
    return firstNum + secondNum;
  }
  double sub() {
    return firstNum - secondNum;
  }
  double mul() {
    return firstNum * secondNum;
  }
  double div() {
    return firstNum / secondNum;
  }
}
