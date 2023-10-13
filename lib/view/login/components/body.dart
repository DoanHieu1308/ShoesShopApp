import 'package:flutter/material.dart';
import 'package:untitled/view/login/json_users/network.dart';
import 'package:untitled/view/login/json_users/users.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:untitled/view/navigator.dart';


class LogBody extends StatefulWidget {
  const LogBody({super.key});

  @override
  State<LogBody> createState() => _LogBodyState();
}

class _LogBodyState extends State<LogBody> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  late List<Users> _users;
  late List<Users> _usersDisplay;

  @override
  void initState() {
    fetchPost().then((value) => {
      setState((){
        _users.addAll(value);
        _usersDisplay = _users;
      })
    });
    super.initState();
  }

  Future login(BuildContext context) async{
    if(username.text == "" || password.text == ""){
      Fluttertoast.showToast(
          msg: "The username or password combination does not exits!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          fontSize: 16.0
      );
    }
    else{
      for(int i=0; i<_usersDisplay.length;i++){
        if(_usersDisplay[i].username == username.text && _usersDisplay[i].password == password.text){
           Navigator.push(context, MaterialPageRoute(builder: (context) => MainNavigator()));
        }
      }
    }

  }

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
              height: 60,
              width: 60,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    "https://prices.vn/photos/8/blog/review-giay-nike-nam.jpg"),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "LOGIN",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 80,
            ),
            TextField(
              controller: username,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.transparent,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: 'username',
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.grey,
                  )),
            ),
            SizedBox(
              height: 25,
            ),
            TextField(
              controller: password,
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: 'password',
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.grey,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
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
            SizedBox(
              height: 40,
            ),
            Container(
              width: size.width,
              height: 55,
              child: ElevatedButton(
                  onPressed: () {
                     login(context);
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: Text(
                    'LOGIN',
                    style: TextStyle(fontSize: 20),
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account yet?"),
                SizedBox(
                  width: 5,
                ),
                GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Sign up now",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue),
                    ))
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: size.width / 3 + 10,
                  child: Divider(
                    color: Colors.grey,
                  ),
                ),
                Text(
                  "OR",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                Container(
                  width: size.width / 3 + 10,
                  child: Divider(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white54,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            child: CircleAvatar(
                              radius: 50,
                              backgroundImage: NetworkImage("https://th.bing.com/th/id/OIP.zkkdY1CFVdOkJgqKkYX2bQHaFL?pid=ImgDet&rs=1"),
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
                          backgroundColor: Colors.white54,
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
                              backgroundImage: NetworkImage("https://th.bing.com/th/id/R.0fa3fe04edf6c0202970f2088edea9e7?rik=joOK76LOMJlBPw&riu=http%3a%2f%2fpluspng.com%2fimg-png%2fgoogle-logo-png-open-2000.png&ehk=0PJJlqaIxYmJ9eOIp9mYVPA4KwkGo5Zob552JPltDMw%3d&risl=&pid=ImgRaw&r=0"),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                              height: 30,
                              width: 90,
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
