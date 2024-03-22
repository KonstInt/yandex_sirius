import 'app_localizations.dart';

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get authenticationFailure => 'Ошибка аунтефикации';

  @override
  String get email => 'Email';

  @override
  String get invalidEmail => 'Неверный email';

  @override
  String get password => 'Пароль';

  @override
  String get invalidPassword => 'Неверный пароль';

  @override
  String get login => 'Вход';

  @override
  String get createAccount => 'Создать аккаунт';

  @override
  String get signUpFailure => 'Ошибка регистрации';

  @override
  String get confirmPassword => 'Подтвердите пароль';

  @override
  String get passwordNotMatch => 'Пароли не совпадают';

  @override
  String get signUp => 'Регистрация';

  @override
  String get home => 'Главная';
}
