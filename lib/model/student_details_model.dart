class StudentDetailsModel {
  final String firstName;
  final String lastName;
  final String address;
  StudentDetailsModel(
      {required this.firstName, required this.lastName, required this.address});

  studentDetial() {
    return StudentDetailsModel(
        firstName: firstName, lastName: lastName, address: address);
  }
}
