import 'package:meta/meta.dart';

@immutable
class LoginState {
  LoginState({
    this.email,
    this.password
  });

  final String email;
  final String password;

  factory LoginState.initial() {
    return LoginState(
      email: '',
      password: ''
    );
  }

  LoginState copyWith({
    String email,
    String password
  }) {
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password
    );
  }

  @override
  bool operator ==(Object other) =>
    identical(this, other) ||
    other is LoginState &&
      other.email == email &&
      other.password == password;

  @override
  int get hashCode =>
    email.hashCode ^
    password.hashCode;
}