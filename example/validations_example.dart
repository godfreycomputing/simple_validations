import 'package:simple_validations/validations.dart';

void main() {
  String? name;
  String valueName = 'First Name';

  print(name.isNullOrEmpty(valueName: valueName));
  //First Name is required

  name = 'George';

  print(name.isNullOrEmpty(valueName: valueName));
  // null
}
