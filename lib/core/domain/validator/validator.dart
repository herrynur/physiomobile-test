import 'package:inspection/inspection.dart';

class Validator {
  static String? getValidate(input, paramValidator) {
    for (var element in paramValidator) {
      if (element == 'required' && inspect(input, 'required', message: 'required') != null) {
        return inspect(input, 'required', message: 'Input is required');
      } 
      if (element == 'email' && inspect(input, 'email', message: 'email') != null) {
        return inspect(input, 'email', message: 'Characters must contain @');
      }
      if (element.contains('min') && inspect(input, 'min:${element.contains('min') ? element.substring(4) : '1'}', message: 'min') != null) {
        return inspect(input, 'email', message: 'Minimum characters ${element.contains('min') ? element.substring(4) : '1'}');
      }
      if (element.contains('max') && inspect(input, 'max:${element.contains('max') ? element.substring(4) : '1'}', message: 'max') != null) {
        return inspect(input, 'email', message: 'Maximum characters ${element.contains('max') ? element.substring(4) : '1'}');
      }
    }
    return null;
  }
}