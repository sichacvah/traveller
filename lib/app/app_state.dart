import 'package:meta/meta.dart';
import 'package:traveller/login/login_state.dart';

@immutable
class AppState {
  AppState({
    this.login
  });

  final LoginState login;

  factory AppState.initial() {
    return AppState(
      login: LoginState.initial()
    );
  }

  @override
  bool operator ==(Object other) =>
    identical(this, other) ||
    other is AppState &&
      login == other.login;
  
  @override
  int get hashCode =>
    login.hashCode;

}
