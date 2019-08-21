import 'login_state.dart';
import 'login_actions.dart';

LoginState loginReducer(LoginState state, dynamic action) {
  if (action is ChangeEmail) {
    return state.copyWith(email: action.email);
  }
  if (action is ChangePassword) {
    return state.copyWith(password: action.password);
  }
  return state;
}