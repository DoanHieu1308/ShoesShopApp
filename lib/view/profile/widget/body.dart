import 'package:flutter/material.dart';
import '../../../../models/models.dart';
import '../../../../utils/constants.dart';
import '../../../../view/profile/widget/repeated_list.dart';
import '../../../animation/fade_animation.dart';
import '../../../data/dummy_data.dart';
import '../../../theme/custom_app_theme.dart';
import '../../login/login_screen.dart';

class BodyProfile extends StatefulWidget {
  const BodyProfile({Key? key}) : super(key: key);

  @override
  _BodyProfileState createState() => _BodyProfileState();
}

class _BodyProfileState extends State<BodyProfile> {
  int statusCurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 7),
      width: width,
      height: height,
      child: Column(
        children: [
          topProfilePicAndName(width, height),
          SizedBox(
            height: 35,
          ),
          middleStatusListView(width, height),
          SizedBox(
            height: 25,
          ),
          middleDashboard(width, height),
          bottomSection(width, height),
        ],
      ),
    );
  }

  // Top Profile Photo And Name Components
  topProfilePicAndName(width, height) {
    return FadeAnimation(
      delay: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(
                "https://th.bing.com/th/id/OIP.jFsz39cRmV98VzLTwC3eYwHaG2?pid=ImgDet&rs=1"),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("HieuDT", style: AppThemes.profileDevName),
              Text(
                "Flutter Developer",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.edit_outlined,
                color: Colors.grey,
              ))
        ],
      ),
    );
  }

  // Middle Status List View Components
  middleStatusListView(width, height) {
    return FadeAnimation(
      delay: 1.5,
      child: Container(
        width: width,
        height: height / 9,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "My Status",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                    fontSize: 15),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Center(
              child: Container(
                width: width / 1.12,
                height: height / 13,
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: userStatus.length,
                    itemBuilder: (ctx, index) {
                      UserStatus status = userStatus[index];
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            statusCurrentIndex = index;
                          });
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Container(
                            margin: EdgeInsets.all(5),
                            width: 120,
                            decoration: BoxDecoration(
                              color: statusCurrentIndex == index
                                  ? status.selectColor
                                  : status.unSelectColor,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  status.emoji,
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  status.txt,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: AppConstantsColor.lightTextColor,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }

  // Middle Dashboard ListTile Components
  middleDashboard(width, height) {
    return FadeAnimation(
      delay: 2,
      child: Container(
        width: width,
        height: height / 3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "    Dashboard",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                  fontSize: 15),
            ),
            SizedBox(
              height: 10,
            ),
            RoundedLisTile(
              width: width,
              height: height,
              leadingBackColor: Colors.green[600],
              icon: Icons.wallet_travel_outlined,
              title: "Payments",
              trailing: Container(
                width: 80,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue[700],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "2 New",
                      style: TextStyle(
                          color: AppConstantsColor.lightTextColor,
                          fontWeight: FontWeight.w500),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: AppConstantsColor.lightTextColor,
                      size: 15,
                    )
                  ],
                ),
              ),
            ),
            RoundedLisTile(
              width: width,
              height: height,
              leadingBackColor: Colors.yellow[600],
              icon: Icons.archive,
              title: "Achievement's",
              trailing: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.arrow_forward_ios,
                      color: AppConstantsColor.darkTextColor,
                      size: 15,
                    )
                  ],
                ),
              ),
            ),
            RoundedLisTile(
              width: width,
              height: height,
              leadingBackColor: Colors.grey[400],
              icon: Icons.shield,
              title: "Privacy",
              trailing: Container(
                width: 140,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red[500],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Action Needed  ",
                      style: TextStyle(
                          color: AppConstantsColor.lightTextColor,
                          fontWeight: FontWeight.w500),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: AppConstantsColor.lightTextColor,
                      size: 15,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // My Account Section Components
  bottomSection(width, height) {
    return FadeAnimation(
      delay: 2.5,
      child: Container(
        width: width,
        height: height / 6.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "    My Account",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                  fontSize: 15),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "    Switch to Other Account",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.blue[600],
                  fontSize: 17),
            ),
            SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => SimpleDialog(
                          title: Text("Do you want to sign out?"),
                          children: [
                            TextButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen() ));
                              },
                                child: Text("YES", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                            )
                          ],
                        ));
              },
              child: Text(
                "    Log Out",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.red[500],
                    fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
