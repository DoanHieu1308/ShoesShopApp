import 'package:flutter/material.dart';
import 'package:untitled/utils/constants.dart';
import 'components/body.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: AppConstantsColor.backgroundColor,
          body: const LogBody(),
        )
    );
  }
}
