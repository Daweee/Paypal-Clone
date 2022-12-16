import 'package:flutter/material.dart';
import 'package:paypal_clone/PaymentsPage.dart';
import 'package:paypal_clone/ProfilePage.dart';
import 'package:paypal_clone/WalletPage.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {

  int _selectedIndex = 0;

  static const List<Widget> _screens =[
    HomeMenu(),
    PaymentsPage(),
    WalletPage(),
  ];

  void _onItemTapped(int index) {
   setState(() {
     _selectedIndex = index;
   });
  }

  @override
  Widget build(BuildContext context) {

    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.white,
        elevation: 0,
        unselectedItemColor: const Color(0xff00186A),
        selectedItemColor: const Color(0xff1270EC),
        items: [
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Image.asset("assets/dollarSign.png",
                height: screenSize.height * .023,
                color: const Color(0xff00186A),
              ),
              activeIcon: Image.asset("assets/dollarSign.png",
                height: screenSize.height * .023,
                color: const Color(0xff1270EC),
              ),
              label: "Payments",
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.wallet,
            ),
            label: "Wallet",
          ),
        ],
      ),
      body: _screens[_selectedIndex],
    );
  }
}


class HomeMenu extends StatefulWidget {
  const HomeMenu({Key? key}) : super(key: key);

  @override
  State<HomeMenu> createState() => _HomeMenuState();
}

class _HomeMenuState extends State<HomeMenu> {

  @override
  Widget build(BuildContext context) {

    Size screenSize = MediaQuery.of(context).size;
    double textScaleFactor = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      backgroundColor: const Color(0xffF7F6F1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfilePage()),
            );
          },
          child: const Padding(
            padding: EdgeInsets.all(12.0),
            child: CircleAvatar(
              radius: 110,
              backgroundImage: AssetImage("assets/jhepoy.jpg"),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: SizedBox(
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                                height: screenSize.height * .04
                            ),
                            SizedBox(
                              height: screenSize.height * .11,
                              width: screenSize.width * .9,
                              child: ElevatedButton(
                                onPressed: (){},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  elevation: 2,
                                  side: BorderSide(color: Colors.grey.shade300, width: 1.0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(100),
                                        border: Border.all(width: 10, color: const Color(0xffF7F6F1)
                                        ),
                                      ),
                                      child: Icon(
                                        Icons.credit_card,
                                        size: screenSize.height * .05,
                                        color: Colors.indigo,
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenSize.width * .03,
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: screenSize.height * .025),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget> [
                                          Text("Link bank or card",
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16.0 * textScaleFactor,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text("Your way to pay with Paypal",
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12.0 * textScaleFactor,
                                              color: const Color(0xff777777),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: screenSize.height * .02,
                            ),
                            SizedBox(
                              height: screenSize.height * .1,
                              width: screenSize.width * .9,
                              child: ElevatedButton(
                                onPressed: (){},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  elevation: 2,
                                  side: BorderSide(color: Colors.grey.shade300, width: 1.0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(100),
                                        border: Border.all(width: 10, color: const Color(0xffF7F6F1)
                                        ),
                                      ),
                                      child: Image.asset(
                                        "assets/paypal.png",
                                        height: screenSize.height * .05,
                                        // color: Colors.indigo,
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenSize.width * .03,
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: screenSize.height * .014),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget> [
                                          Text("\$100.00",
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 22.0 * textScaleFactor,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text("Balance",
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12.0 * textScaleFactor,
                                              color: const Color(0xff777777),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenSize.height * .02,
                      ),
                      Container(
                        height: screenSize.height * .21,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: screenSize.height * .015, left: screenSize.width * .05),
                              child: Text("Send again",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17.0 * textScaleFactor,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: screenSize.height * .15,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: screenSize.height * .020,
                                        left: screenSize.width * .035
                                    ),
                                    child: InkWell(
                                      onTap: (){},
                                      child: Container(
                                        width: screenSize.width * .2,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5.0),
                                          color: Colors.white,
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(
                                              screenSize.width * .003
                                          ),
                                          child: Column(
                                            children: <Widget>[
                                              CircleAvatar(
                                                radius: screenSize.width * .07,
                                                backgroundImage: const AssetImage("assets/caloocanBoy.png"),
                                              ),
                                              SizedBox(
                                                height: screenSize.height * .01,
                                              ),
                                              Text("Caloocan Boy",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  height: 1,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 11.0 * textScaleFactor,
                                                  color: const Color(0xff777777),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: screenSize.height * .020,
                                        left: screenSize.width * .01
                                    ),
                                    child: InkWell(
                                      onTap: (){},
                                      child: Container(
                                        width: screenSize.width * .2,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5.0),
                                          color: Colors.white,
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(
                                              screenSize.width * .003
                                          ),
                                          child: Column(
                                            children: <Widget>[
                                              CircleAvatar(
                                                radius: screenSize.width * .07,
                                                backgroundImage: const AssetImage("assets/mason.jpeg"),
                                              ),
                                              SizedBox(
                                                height: screenSize.height * .01,
                                              ),
                                              Text("Mason Ako Ogag",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  height: 1,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 11.0 * textScaleFactor,
                                                  color: const Color(0xff777777),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: screenSize.height * .020,
                                        left: screenSize.width * .01
                                    ),
                                    child: InkWell(
                                      onTap: (){},
                                      child: Container(
                                        width: screenSize.width * .2,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5.0),
                                          color: Colors.white,
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(
                                              screenSize.width * .003
                                          ),
                                          child: Column(
                                            children: <Widget>[
                                              CircleAvatar(
                                                radius: screenSize.width * .07,
                                                backgroundImage: const AssetImage("assets/sinapian.jpg"),
                                              ),
                                              SizedBox(
                                                height: screenSize.height * .01,
                                              ),
                                              Text("Sinapian Si Jane",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  height: 1,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 11.0 * textScaleFactor,
                                                  color: const Color(0xff777777),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: screenSize.height * .020,
                                        left: screenSize.width * .01
                                    ),
                                    child: InkWell(
                                      onTap: (){},
                                      child: Container(
                                        width: screenSize.width * .2,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5.0),
                                          color: Colors.white,
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(
                                              screenSize.width * .003
                                          ),
                                          child: Column(
                                            children: <Widget>[
                                              CircleAvatar(
                                                radius: screenSize.width * .07,
                                                backgroundImage: const AssetImage("assets/agoy.PNG"),
                                              ),
                                              SizedBox(
                                                height: screenSize.height * .01,
                                              ),
                                              Text("Mapriso Ka, AGOY",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  height: 1,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 11.0 * textScaleFactor,
                                                  color: const Color(0xff777777),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: screenSize.height * .020,
                                        left: screenSize.width * .01
                                    ),
                                    child: InkWell(
                                      onTap: (){},
                                      child: Container(
                                        width: screenSize.width * .2,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5.0),
                                          color: Colors.white,
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(
                                              screenSize.width * .003
                                          ),
                                          child: Column(
                                            // mainAxisAlignment: MainAxisAlignment.end,
                                            children: <Widget>[
                                              CircleAvatar(
                                                radius: screenSize.width * .07,
                                                backgroundImage: const AssetImage("assets/tigbason.jpg"),
                                              ),
                                              SizedBox(
                                                height: screenSize.height * .01,
                                              ),
                                              Text("Tigbason Takaron",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  height: 1,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 11.0 * textScaleFactor,
                                                  color: const Color(0xff777777),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: screenSize.height * .020,
                                        left: screenSize.width * .01
                                    ),
                                    child: InkWell(
                                      onTap: (){},
                                      child: Container(
                                        width: screenSize.width * .2,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5.0),
                                          color: Colors.white,
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(
                                              screenSize.width * .003
                                          ),
                                          child: Column(
                                            children: <Widget>[
                                              CircleAvatar(
                                                radius: screenSize.width * .07,
                                                backgroundImage: const AssetImage("assets/bai.jpg"),
                                              ),
                                              SizedBox(
                                                height: screenSize.height * .01,
                                              ),
                                              Text("Bai Rabs",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  height: 1,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 11.0 * textScaleFactor,
                                                  color: const Color(0xff777777),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: screenSize.height * .020,
                                        left: screenSize.width * .01
                                    ),
                                    child: InkWell(
                                      onTap: (){},
                                      child: Container(
                                        width: screenSize.width * .2,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5.0),
                                          color: Colors.white,
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(
                                              screenSize.width * .003
                                          ),
                                          child: Column(
                                            children: <Widget>[
                                              CircleAvatar(
                                                radius: screenSize.width * .07,
                                                backgroundImage: const AssetImage("assets/sirGPA.jpg"),
                                              ),
                                              SizedBox(
                                                height: screenSize.height * .01,
                                              ),
                                              Text("Human Debugger",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  height: 1,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 11.0 * textScaleFactor,
                                                  color: const Color(0xff777777),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenSize.height * .02,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: screenSize.width * .05
                        ),
                        child: ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            elevation: 2,
                            side: BorderSide(color: Colors.grey.shade300, width: 1.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                          child: Row(
                            children: [
                              Column(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.only(
                                        top: screenSize.height * .03
                                    ),
                                    width: screenSize.width * .5,
                                    child: Text(
                                      "Personalize payments with new stickers, emojis, and more",
                                      style: TextStyle(
                                          height: 1,
                                          color: Colors.black,
                                          fontFamily: 'Poppins',
                                          fontSize: 15.0 * textScaleFactor,
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: screenSize.height * .05,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                        top: screenSize.height * .045,
                                        bottom: screenSize.height * .020
                                    ),
                                    width: screenSize.width * .5,
                                    child: Text(
                                      "Send money now",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Poppins',
                                        fontSize: 15.0 * textScaleFactor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: screenSize.width * .06,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(
                                        screenSize.width * .005,
                                        0.0,
                                        screenSize.width * .005,
                                        screenSize.height * .02
                                    ),
                                    child: InkWell(
                                      onTap: (){},
                                      child: Align(
                                        alignment: Alignment.topRight,
                                        child: Icon(
                                          Icons.close,
                                          color: Colors.black,
                                          size: screenSize.width * .07,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding:EdgeInsets.only(
                                        top: screenSize.height * .005,
                                        right: screenSize.width * .005,
                                        bottom: screenSize.height * .005
                                    ),
                                    height: screenSize.height * .15,
                                    width: screenSize.width * .2,
                                    child: Image.asset('assets/phoneWithEmoji.PNG'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenSize.height * .02,
                      ),
                      Column(
                        children: [
                          Container(
                            height: screenSize.height * .195,
                            width: screenSize.width,
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: screenSize.height * .015,
                                      left: screenSize.width * .05
                                  ),
                                  child: Text("Recent Activity",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 17.0 * textScaleFactor,
                                      color: const Color(0xff777777),
                                    ),
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(left: screenSize.width * .05),
                                      height: screenSize.height * .12,
                                      width: screenSize.width * .25,
                                      child: Image.asset("assets/paperWithCreditCard.PNG"),
                                    ),
                                    SizedBox(
                                      width: screenSize.width * .03,
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget> [
                                            Text("Keep track easily",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16.0 * textScaleFactor,
                                              ),
                                            ),
                                            SizedBox(
                                              height: screenSize.height * .015,
                                            ),
                                            Text("New transactions will pop up here",
                                              style: TextStyle(
                                                  color: const Color(0xff777777),
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 11.0 * textScaleFactor,
                                              ),
                                            ),
                                            SizedBox(
                                              height: screenSize.height * .015,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: screenSize.width * .03
                                              ),
                                              child: InkWell(
                                                onTap: (){},
                                                child: Text("Show more",
                                                  style: TextStyle(
                                                    color: const Color(0xff1270EC),
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15.0 * textScaleFactor,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: screenSize.height * .010
                          ),
                          child: SizedBox(
                            height: screenSize.height * .06,
                            width: screenSize.width * .4,
                            child: ElevatedButton(
                              onPressed: (){},
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(const Color(0xff00186A)),
                                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                ),
                              ),
                              child: const Text("Send",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: screenSize.height * .010
                          ),
                          child: SizedBox(
                            height: screenSize.height * .06,
                            width: screenSize.width * .4,
                            child: ElevatedButton(
                              onPressed: (){},
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(const Color(0xff00186A)),
                                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                ),
                              ),
                              child: const Text("Request",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

