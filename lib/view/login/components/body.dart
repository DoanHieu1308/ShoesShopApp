import 'package:flutter/material.dart';
import 'package:untitled/view/sign_up/components/body_sceen_sign_up.dart';
import 'package:untitled/view/sign_up/sign_up_screen.dart';


class LogBody extends StatefulWidget {
  const LogBody({super.key});

  @override
  State<LogBody> createState() => _LogBodyState();
}

class _LogBodyState extends State<LogBody> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              child: const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/images/review-giay-nike-nam.jpg"),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "LOGIN",
              style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _email,
              style: TextStyle(color: Colors.white, fontSize: 20),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.transparent,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelText: "email",
                  labelStyle: TextStyle(color: Colors.white),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)
                  ),
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Colors.grey,
                  )),
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              controller: _password,
              obscureText: true,
              style: TextStyle(color: Colors.white, fontSize: 20),
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
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "Forgot password ?",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: size.width,
              height: 55,
              child: ElevatedButton(
                  onPressed: () {
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: const Text(
                    'LOGIN',
                    style: TextStyle(fontSize: 20),
                  )),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account yet?", style: TextStyle(color: Colors.white),),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                    onTap: () {
                       Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => ScreenSignUp())
                       );
                    },
                    child: const Text(
                      "Sign up now",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue),
                    ))
              ],
            ),
            const SizedBox(
              height: 25,
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
            const SizedBox(height: 30,),
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
                          SizedBox(width: 10,),
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
}
