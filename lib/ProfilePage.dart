import 'package:flutter/material.dart';
import 'package:paypal_clone/LoginPage.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  final double coverHeight = 180;
  final double profileHeight = 144;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xffF7F6F1),
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.notifications),
            color: Colors.white,)
        ],
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xff000033),
        title: const Text("Profile",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          builtTop(),
          buildContent(),
        ],
      ),

    );
  }

  Widget buildContent() {

    MediaQueryData mediaQueryData = MediaQuery.of(context);

    double screenWidth = mediaQueryData.size.width;
    double screenHeight = mediaQueryData.size.height;
    double textScaleFactor = mediaQueryData.textScaleFactor;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: screenHeight * .01,
                      left: screenWidth * .04
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Jhepoy Dizon",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 23.0 * textScaleFactor,
                    ),),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: screenHeight * .01,
                      left: screenWidth * .04
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("@kitaMoToHampasKoToSaPagmumukhaMo",
                    style: TextStyle(
                      color: const Color(0xff1270EC),
                      fontFamily: 'Poppins',
                      fontSize: 11.0 * textScaleFactor,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: screenHeight * .01,
                      left: screenWidth * .04,
                      bottom: screenHeight * .02
                  ),
                  child: Container(
                    height: screenHeight * .05,
                    width: screenWidth * .1,
                    decoration: BoxDecoration(
                        color: const Color(0xffF7F6F1),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Icon(Icons.edit,
                    color: const Color(0xff000033),
                    size: screenWidth * .045),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: screenHeight * .02,
          ),
          Column(
            children: <Widget>[
              InkWell(
                onTap: (){},
                child: Container(
                  height: screenHeight * .07,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: screenWidth * .04
                    ),
                    child: Row(
                      children: <Widget>[
                        const Icon(Icons.person,
                        color: Colors.grey,),
                        SizedBox(
                          width: screenWidth * .02,
                        ),
                        const Text("Personal Info",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){},
                child: Container(
                  height: screenHeight * .07,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: screenWidth * .04
                    ),
                    child: Row(
                      children: <Widget>[
                        const Icon(Icons.mail,
                          color: Colors.grey,),
                        SizedBox(
                          width: screenWidth * .02,
                        ),
                        const Text("Message Center",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){},
                child: Container(
                  height: screenHeight * .07,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: screenWidth * .04
                    ),
                    child: Row(
                      children: <Widget>[
                        const Icon(Icons.shield,
                          color: Colors.grey,),
                        SizedBox(
                          width: screenWidth * .02,
                        ),
                        const Text("Login and security",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){},
                child: Container(
                  height: screenHeight * .07,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: screenWidth * .04
                    ),
                    child: Row(
                      children: <Widget>[
                        const Icon(Icons.folder,
                          color: Colors.grey,),
                        SizedBox(
                          width: screenWidth * .02,
                        ),
                        const Text("Data and privacy",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){},
                child: Container(
                  height: screenHeight * .07,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: screenWidth * .04
                    ),
                    child: Row(
                      children: <Widget>[
                        const Icon(Icons.notifications,
                          color: Colors.grey,),
                        SizedBox(
                          width: screenWidth * .02,
                        ),
                        const Text("Notification preferences",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){},
                child: Container(
                  height: screenHeight * .07,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: screenWidth * .04
                    ),
                    child: Row(
                      children: <Widget>[
                        const Icon(Icons.price_change,
                          color: Colors.grey,),
                        SizedBox(
                          width: screenWidth * .02,
                        ),
                        const Text("Marketing preferences",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){},
                child: Container(
                  height: screenHeight * .07,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: screenWidth * .04
                    ),
                    child: Row(
                      children: <Widget>[
                        const Icon(Icons.help,
                          color: Colors.grey,),
                        SizedBox(
                          width: screenWidth * .02,
                        ),
                        const Text("Help",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){},
                child: Container(
                  height: screenHeight * .07,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: screenWidth * .04
                    ),
                    child: Row(
                      children: <Widget>[
                        const Icon(Icons.close,
                          color: Colors.grey,),
                        SizedBox(
                          width: screenWidth * .02,
                        ),
                        const Text("Close your account",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                child: Container(
                  height: screenHeight * .07,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: screenWidth * .04
                    ),
                    child: Row(
                      children: <Widget>[
                        const Icon(Icons.logout,
                          color: Colors.grey,),
                        SizedBox(
                          width: screenWidth * .02,
                        ),
                        const Text("Log out",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: screenHeight * .015),
            child: Container(
              height: screenHeight * .1,
              color: const Color(0xffF7F6F1),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                    child: Text("Legal",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 18.0 * textScaleFactor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * .02,
                  ),
                  Text("Version 8.30.2",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 9.0 * textScaleFactor,
                  ),),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }


  Widget builtTop() {
    final bottom = profileHeight / 2;
    final top = coverHeight - profileHeight / 3;

    MediaQueryData mediaQueryData = MediaQuery.of(context);

    double screenWidth = mediaQueryData.size.width;

    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomLeft,
      children: [
        Container(
            margin: EdgeInsets.only(bottom: bottom),
            child: buildCoverImage()),
        Positioned(
          top: top,
          child: Padding(
            padding: EdgeInsets.only(left: screenWidth * .05),
            child: buildProfilePicture(),
          ),
        ),
      ],
    );
  }


  Widget buildCoverImage() => Container(
    color: Colors.white,
    child: Image.asset("assets/darkBlue.PNG",
      width: double.infinity,
      height: coverHeight,
      fit: BoxFit.cover,
    ),
  );

  Widget buildProfilePicture() => CircleAvatar(
    radius: profileHeight / 3,
    backgroundColor: Colors.white,
    backgroundImage: const AssetImage("assets/jhepoy.jpg"),
  );


}
