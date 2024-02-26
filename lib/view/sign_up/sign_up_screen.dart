import 'package:flutter/material.dart';
import 'package:untitled/view/sign_up/components/body_sceen_sign_up.dart';

class ScreenSignUp extends StatelessWidget {
  const ScreenSignUp({super.key});

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
              child: BodySignUp()
          ),
        )
    );
  }
}
