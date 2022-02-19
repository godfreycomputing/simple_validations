import 'package:simple_validations/simple_validations.dart';

void main() {
  String? name;
  String valueName = 'First Name';

  print(name.isNullOrEmpty(valueName: valueName));
  //First Name is required

  name = 'George';

  print(name.isNullOrEmpty(valueName: valueName));
  // null
}
