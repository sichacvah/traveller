import 'package:redux/redux.dart';
import 'package:traveller/app/app_reducer.dart';
import 'package:traveller/app/app_state.dart';


Store<AppState> createStore() {
  return Store(
    appReducer,
    initialState: AppState.initial(),
    distinct: true
  );
}
