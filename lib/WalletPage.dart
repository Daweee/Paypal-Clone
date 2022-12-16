import 'package:flutter/material.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {

  List<String> items = [
    "Wallet",
    "Rewards",
    "Activity",
  ];

  int current = 0;

  @override
  Widget build(BuildContext context) {

    Size screenSize = MediaQuery.of(context).size;
    double textScaleFactor = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      backgroundColor: const Color(0xffF7F6F1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffF7F6F1),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                  left: screenSize.width * .05,
                  right: screenSize.width * .01,
                  top: screenSize.height * .01,
                  bottom: screenSize.height * .02,
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: screenSize.height * .05,
                    width: double.infinity,
                    child: ListView.separated(
                      itemCount: items.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: ((context, index) {
                        return GestureDetector(
                          onTap: (){
                            setState(() {
                              current = index;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(
                                milliseconds: 300
                            ),
                            margin: EdgeInsets.all(screenSize.width * .005),
                            width: screenSize.width * .2,
                            height: screenSize.height * .045,
                            decoration: BoxDecoration(
                              color: current == index
                                  ? Colors.white
                                  : const Color(0xffF7F6F1),
                              borderRadius: current == index
                                  ? BorderRadius.circular(80.0)
                                  : BorderRadius.circular(0),
                              boxShadow: [
                                BoxShadow(
                                  color: current == index
                                      ? const Color(0xff777777)
                                      : const Color(0xffF7F6F1),
                                  blurRadius: current == index
                                      ? 5.0
                                      : 0.0,
                                  offset: const Offset(0, 4),
                                ),
                                BoxShadow(
                                  blurRadius: current == index
                                      ? 5.0
                                      : 0.0,
                                  color: current == index
                                      ? const Color(0xff777777)
                                      : const Color(0xffF7F6F1),
                                  offset: const Offset(4, 0),
                                ),
                              ],
                            ),
                            child: Center(
                              child: Text(items[index],
                                style: TextStyle(
                                  color: current == index
                                      ? const Color(0xff00186A)
                                      : Colors.black,
                                  fontFamily: 'Poppins',
                                  fontSize: 15.0 * textScaleFactor,
                                  fontWeight: current == index
                                      ? FontWeight.bold
                                      : FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        );
                      }
                      ),
                      separatorBuilder: (context, index) => SizedBox(
                        width: screenSize.width * .005,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: screenSize.height * .35,
                      width: double.infinity,
                      color: Colors.white,
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: screenSize.width * .05,
                            vertical: screenSize.height * .025
                        ),
                        child: ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            shadowColor: Colors.grey,
                            backgroundColor: Colors.white,
                            elevation: 5,
                            side: BorderSide(color: Colors.grey.shade300, width: 1.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(
                                    top: screenSize.height * .01
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: screenSize.height * .07,
                                          width: screenSize.width * .07,
                                          child: Image.asset("assets/paypal.png"),
                                        ),
                                        SizedBox(
                                          width: screenSize.width * .02,
                                        ),
                                        Text("Balance",
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 11.0 * textScaleFactor,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text("\$100.00",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 11.0 * textScaleFactor,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: screenSize.height * .17,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("\$100.00",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30.0 * textScaleFactor,
                                    color: Colors.black,
                                  ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: screenSize.height * .36,
                      width: double.infinity,
                      color: const Color(0xffF7F6F1),
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: screenSize.width * .05,
                            vertical: screenSize.height * .02
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(
                                  bottom: screenSize.height * .02,
                                  right: screenSize.width * .003,
                                  top: screenSize.height * .005
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text("Banks and cards",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 16.0 * textScaleFactor,
                                    color: Colors.black,
                                    ),
                                  ),
                                  Container(
                                    height: screenSize.height * .035,
                                    width: screenSize.width * .075,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    child: InkWell(
                                      onTap: (){},
                                        child: Icon(Icons.add,
                                        size: screenSize.width * .05,
                                        color: const Color(0xff00186A),
                                        ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ButtonTheme(
                              height: screenSize.height * .15,
                              child: ElevatedButton(
                                onPressed: (){},
                                style: ElevatedButton.styleFrom(
                                  shadowColor: Colors.grey,
                                  backgroundColor: Colors.white,
                                  elevation: 5,
                                  side: BorderSide(color: Colors.grey.shade300, width: 1.0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(top: screenSize.height * .02),
                                  child: Column(
                                    children: <Widget>[
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Add banks and cards",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17.0 * textScaleFactor,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: screenSize.height * .005,
                                      ),
                                      Text("Link cards to shop and pay with Paypal, and link banks to withdraw from your Paypal balance.",
                                      style: TextStyle(
                                        color: const Color(0xff777777),
                                        fontWeight: FontWeight.w300,
                                        fontFamily: 'Poppins',
                                        fontSize: 10.0 * textScaleFactor,
                                        height: 1,
                                      ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(bottom: screenSize.height * .02),
                                        height: screenSize.height * .15,
                                        child: Align(
                                          alignment: Alignment.bottomRight,
                                          child: SizedBox(
                                            height: screenSize.height * .08,
                                            child: Image.asset("assets/doubleCards.PNG"),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: screenSize.height * .24,
                      width: double.infinity,
                      color: Colors.white,
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: screenSize.width * .05,
                            vertical: screenSize.height * .02
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Preferences",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16.0 * textScaleFactor,
                                color: Colors.black,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: screenSize.width * .05
                              ),
                              child: InkWell(
                                onTap: (){},
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      height: screenSize.height * .05,
                                      width: screenSize.width * .1,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffF7F6F1),
                                        borderRadius: BorderRadius.circular(50.0),
                                      ),
                                      child: SizedBox(
                                        height: screenSize.height * .02,
                                        width: screenSize.width * .02,
                                        child: Image.asset("assets/phoneWithLock.PNG")),
                                    ),
                                    SizedBox(
                                      width: screenSize.width * .02,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text("Online Purchases",
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 15.0 * textScaleFactor,
                                            color: Colors.black
                                          ),
                                        ),
                                        Text("PayPal balance",
                                        style: TextStyle(
                                          color: const Color(0xff777777),
                                          fontWeight: FontWeight.w300,
                                          fontFamily: 'Poppins',
                                          fontSize: 11.0 * textScaleFactor,
                                        ),),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: screenSize.height * .02
                              ),
                              child: InkWell(
                                onTap: (){},
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      height: screenSize.height * .05,
                                      width: screenSize.width * .1,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffF7F6F1),
                                        borderRadius: BorderRadius.circular(50.0),
                                      ),
                                      child: SizedBox(
                                          height: screenSize.height * .02,
                                          width: screenSize.width * .02,
                                          child: Image.asset("assets/rewindClock.PNG")),
                                    ),
                                    SizedBox(
                                      width: screenSize.width * .02,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text("Preapproved payments",
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 15.0 * textScaleFactor,
                                              color: Colors.black
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
