import 'package:newstore/core/extension/extension.dart';
import 'package:newstore/core/helper/app_regex.dart';
import 'package:newstore/core/strings/app_strings.dart';

class AppValidationData {
 static String? passwordValidation(String? value) {
    if (value?.isNullOrEmpty() ?? false) {
      return 'Please enter password';
    } else if (!AppRegex.hasLowerCase(value ?? '')) {
      return AppStrings.enterLowerAtLeastOneLowerCase;
    } else if (!AppRegex.hasNumber(value ?? '')) {
      return AppStrings.enterAtLeastOneNumber;
    } else if (!AppRegex.hasMinLength(value ?? '')) {
      return AppStrings.enterAtLeast8Characters;
    } else if (!AppRegex.hasUpperCase(value ?? '')) {
      return AppStrings.enterUpperAtLeastOneUpperCase;
    } else if (!AppRegex.hasSpecialCharacter(value ?? '')) {
      return AppStrings.enterAtLeastOneSpecialCharacter;
    }
    return null;
  }

  static String? emailValidation(String? value) { 
    if (value?.isNullOrEmpty() ?? false) {
      return 'Please enter email';
    } else if (!AppRegex.isEmailValid(value ?? '')) {
      return 'Please enter valid email';
    }
    return null;
  }
}
