import 'package:redux/redux.dart';
import 'package:traveller/login/login_actions.dart';
import 'package:traveller/app/app_state.dart';

class LoginScreenViewModel {
  LoginScreenViewModel({
    this.email,
    this.password,
    this.updateEmail,
    this.updatePassword
  });
  final String email;
  final String password;
  final void Function(String email) updateEmail;
  final void Function(String password) updatePassword;


  static LoginScreenViewModel fromStore(
    Store<AppState> store
  ) {
    return LoginScreenViewModel(
      email: store.state.login.email,
      password: store.state.login.password,
      updateEmail: (String email) => store.dispatch(ChangeEmail(email)),
      updatePassword: (String password) => store.dispatch(ChangePassword(password))
    );
  }

  @override
  bool operator ==(Object other) =>
    identical(this, other) ||
    other is LoginScreenViewModel &&
      email == other.email &&
      password == other.password;
  
  @override
  int get hashCode => email.hashCode ^ password.hashCode;
}