import 'package:get/get.dart';

class Messages extends Translations {
  static String get signIn => 'sign_in';
  static String get welcome => 'welcome';

  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          Messages.signIn: 'Sign In',
          Messages.welcome: 'Welcome',
        },
      };
}
