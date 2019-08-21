import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:traveller/app/app_state.dart';
import 'package:traveller/login/login_screen_view_model.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen();

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, LoginScreenViewModel>(
      distinct: true,
      converter: (store) => LoginScreenViewModel.fromStore(store),
      builder: (_, viewModel) => LoginScreenContent(viewModel),
    );
  }
}

class LoginScreenContent extends StatelessWidget {
  LoginScreenContent(this.viewModel);

  final LoginScreenViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        backgroundBlendMode: BlendMode.darken
      ),
      constraints: BoxConstraints.expand(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[],
      )
    );
  }
}