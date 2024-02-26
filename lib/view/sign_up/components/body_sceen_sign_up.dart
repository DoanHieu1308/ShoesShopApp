import 'package:flutter/material.dart';
import 'package:untitled/view/login/login_screen.dart';
import 'package:untitled/view/sign_up/blocs/auth_bloc.dart';

class BodySignUp extends StatefulWidget {
  const BodySignUp({super.key});

  @override
  State<BodySignUp> createState() => _BodySignUpState();
}

class _BodySignUpState extends State<BodySignUp> {

  AuthBloc authBloc = new AuthBloc();

  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 130,
              width: 130,
              child: const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/images/review-giay-nike-nam.jpg"),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Sign Up",
              style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            StreamBuilder(
              stream: authBloc.userNameStream,
              builder: (context, snapshot) => TextField(
                controller: _usernameController,
                style: TextStyle(color: Colors.white, fontSize: 18),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.transparent,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    labelText: "username",
                    labelStyle: TextStyle(color: Colors.white),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)
                    ),
                    prefixIcon: const Icon(
                      Icons.person,
                      color: Colors.grey,
                    )),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            StreamBuilder(
              stream: authBloc.emailStream,
              builder: (context, snapshot) => TextField(
                controller: _emailController,
                style: TextStyle(color: Colors.white, fontSize: 18),
                decoration: InputDecoration(
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelText: "email",
                  labelStyle: TextStyle(color: Colors.white),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)
                  ),
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            StreamBuilder(
              stream: authBloc.passwordStream,
              builder:(context, snapshot) =>  TextField(
                controller: _passwordController,
                obscureText: true,
                style: TextStyle(color: Colors.white, fontSize: 18),
                decoration: InputDecoration(
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelText: "password",
                  labelStyle: TextStyle(color: Colors.white),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)
                  ),
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            StreamBuilder(
              stream: authBloc.confirmPasswordStream,
              builder: (context, snapshot) => TextField(
                controller: _confirmPasswordController,
                obscureText: true,
                style: TextStyle(color: Colors.white, fontSize: 18),
                decoration: InputDecoration(
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelText: "confirm password",
                  labelStyle: TextStyle(color: Colors.white),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)
                  ),
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: size.width,
              height: 55,
              child: ElevatedButton(
                  onPressed: () {
                    _onSignUpClicked();
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: const Text(
                    'SIGN UP',
                    style: TextStyle(fontSize: 20),
                  )),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: size.width / 3 + 10,
                  child: const Divider(
                    color: Colors.grey,
                  ),
                ),
                const Text(
                  "OR",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                SizedBox(
                  width: size.width / 3 + 10,
                  child: const Divider(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            child: CircleAvatar(
                              radius: 50,
                              backgroundImage: AssetImage("assets/images/fb1.png"),
                            ),
                          ),
                          SizedBox(width: 15,),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                              height: 30,
                              width: 90,
                              child: Text(
                                "Facebook",
                                style: TextStyle(fontSize: 15, color: Colors.blue, fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        ],
                      )
                  ),
                ),
                Container(
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            child: CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.transparent,
                              backgroundImage: AssetImage("assets/images/gg.png"),
                            ),
                          ),
                          SizedBox(width: 21,),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                              height: 30,
                              width: 80,
                              child: Text(
                                "Google",
                                style: TextStyle(fontSize: 15, color: Colors.blue, fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        ],
                      )
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  _onSignUpClicked(){
    var isValid = authBloc.isValid(_usernameController.text, _emailController.text, _passwordController.text,
        _confirmPasswordController.text);
    if(isValid){
      authBloc.signUp(_usernameController.text, _emailController.text, _passwordController.text, _confirmPasswordController.text, (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
      });
    }
  }
}

