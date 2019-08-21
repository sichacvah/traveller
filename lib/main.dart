import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:traveller/login/containers/login_screen.dart';
import 'store.dart';
import 'app/app_state.dart';


Future<void> main() async {
  runApp(TravellerApp(createStore()));
}

class TravellerApp extends StatefulWidget {
  TravellerApp(this.store);

  final Store<AppState> store;

  @override
  _TravellerAppState createState() => _TravellerAppState();
}

class _TravellerAppState extends State<TravellerApp> {
  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: widget.store,
      child: MaterialApp(
        title: 'Traveller App',
        theme: ThemeData(
          primaryColor: const Color(0xFFFEC52E),
          accentColor: const Color(0xFF666666),
          scaffoldBackgroundColor: Colors.transparent,
          backgroundColor: const Color(0xFFF7F7F7)
        ),
        home: const LoginScreen(),
      ),
    );
  }
}

// void main() => runApp(TravellerApp());

// class TravellerApp extends StatefulWidget {
//   TravellerApp(this.store);
// }