class AreaOfCircleModel {
  final double radius;
  AreaOfCircleModel({required this.radius});

  double calculateArea() {
    return 3.14 * radius * radius;
  }
}
