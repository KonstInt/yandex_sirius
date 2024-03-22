import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get authenticationFailure => 'Authentication failure';

  @override
  String get email => 'Email';

  @override
  String get invalidEmail => 'Invalid email';

  @override
  String get password => 'Password';

  @override
  String get invalidPassword => 'Invalid Password';

  @override
  String get login => 'Login';

  @override
  String get createAccount => 'Create account';

  @override
  String get signUpFailure => 'Sign up failure';

  @override
  String get confirmPassword => 'Confirm password';

  @override
  String get passwordNotMatch => 'Password do not match';

  @override
  String get signUp => 'Sign up';

  @override
  String get home => 'Home';

  @override
  String get name => 'Name';

  @override
  String get surname => 'Surname';

  @override
  String get alias => 'Alias';
}
