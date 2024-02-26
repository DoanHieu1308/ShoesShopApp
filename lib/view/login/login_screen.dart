import 'package:flutter/material.dart';
import 'package:untitled/utils/constants.dart';
import 'components/body.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
              height: MediaQuery.sizeOf(context).height,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/backgrough.jpg"),
                  fit: BoxFit.cover
                )
              ),
              child: LogBody()
          ),
        )
    );
  }
}
