
class Validations {
  //! Password Validation
  static String? password(
    String? value, {
    String? emptyPasswordMessage = "Password can't be empty",
    String? passwordLengthMessage =
        "Password must be at least 8 characters long",
  }) {
    if (value == null || value.isEmpty) {
      return emptyPasswordMessage;
    } else if (value.length < 8) {
      return passwordLengthMessage;
    }
    return null;
  }

  //! Phone Number Validation
  static String? phoneNumber(value,
      {String? emptyPhoneMessage = "Phone number can't be empty",
      String? phoneLengthMessage = "Invalid phone number"}) {
    String pattern = r'(^(?:[0]9)?[0-9]{1,12}$)';
    RegExp regExp = RegExp(pattern);
    if (value == null || value.isEmpty) {
      return emptyPhoneMessage;
    } else if (!regExp.hasMatch(value)) {
      return phoneLengthMessage;
    }
    return null;
  }

  //! Numbers Only Validation
  static String? numbersOnly(value,
      {String? emptyMessage = "Field can't be empty",
      String? invalidMessage = "Invalid number"}) {
    String pattern = r'(^[0-9]*$)';
    RegExp regExp = RegExp(pattern);
    if (value == null || value.isEmpty) {
      return emptyMessage;
    } else if (!regExp.hasMatch(value)) {
      return invalidMessage;
    }
    return null;
  }

  //! Email Validation
  static String? email(
    String? value, {
    String? emptyEmailMessage = "Email can't be empty",
    String? invalidEmailMessage = "Invalid email",
  }) {
    final RegExp urlExp = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    if (value == null || value.isEmpty) {
      return emptyEmailMessage;
    } else if (!urlExp.hasMatch(value)) {
      return invalidEmailMessage;
    }
    return null;
  }

  //! Must Be Not Empty Validation
  static String? mustBeNotEmpty(String? value, {String? emptyMessage}) {
    if (value == null || value.isEmpty) {
      return emptyMessage ?? "Field can't be empty";
    }
    return null;
  }
}
