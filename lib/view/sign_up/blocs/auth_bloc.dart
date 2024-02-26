import 'dart:async';

import 'package:untitled/fire_base/fire_base_auth.dart';
class AuthBloc{
  var _fireAuth = FireAuth();

  StreamController _userNameController = new StreamController();
  StreamController _emailController = new StreamController();
  StreamController _passwordController = new StreamController();
  StreamController _confirmPasswordController = new StreamController();

  Stream get userNameStream => _userNameController.stream;
  Stream get emailStream => _emailController.stream;
  Stream get passwordStream => _passwordController.stream;
  Stream get confirmPasswordStream => _confirmPasswordController.stream;

  bool isValid (String username, String email, String password, String confirmPassword){
    if(username == null || username.length == 0){
      _userNameController.sink.addError("Nhập username");
      return false;
    }
    _userNameController.sink.add("");
    if(email == null || email.length == 0){
      _emailController.sink.addError("Nhập email");
      return false;
    }
    _emailController.sink.add("");
    if(password == null || password.length == 0){
      _passwordController.sink.addError("Nhập mật khẩu");
      return false;
    }
    _passwordController.sink.add("");
    if(confirmPassword == null || confirmPassword.length == 0){
      _confirmPasswordController.sink.addError("Xác nhân lại mật khẩu");
      return false;
    }
    _confirmPasswordController.sink.add("");
    return true;
  }

  void signUp(String username, String email, String password, String confirmPassword, Function onSuccess){
    _fireAuth.signUp(username, email, password, confirmPassword, onSuccess);
  }

  void dispose(){
    _userNameController.close();
    _emailController.close();
    _passwordController.close();
    _confirmPasswordController.close();
  }
}