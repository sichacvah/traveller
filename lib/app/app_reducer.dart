import 'app_state.dart';
import 'package:traveller/login/login_reducers.dart';

AppState appReducer(AppState state, dynamic action) {
  return new AppState(
    login: loginReducer(state.login, action)
  );
}