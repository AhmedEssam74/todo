import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:todo/base.dart';
import 'package:todo/screens/authentication/Login/login_connector.dart';

class LoginViewModel extends BaseViewModel<LoginConnector> {
  Future<void> loginUser(String email, String password) async {
    try {
      connector!.goToHome();
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      if (credential.user!.emailVerified) {
        connector!.showSuccess();
      } else {
        connector!.showError(
            "email_is_not_verified_please_check_your_mail_and_try_again".tr());
      }
    } on FirebaseAuthException catch (_) {
      connector!.showError("email_or_password_is_not_valid".tr());
    }
  }
}
