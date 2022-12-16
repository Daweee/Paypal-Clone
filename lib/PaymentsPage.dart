import 'package:flutter/material.dart';

class PaymentsPage extends StatefulWidget {
  const PaymentsPage({Key? key}) : super(key: key);

  @override
  State<PaymentsPage> createState() => _PaymentsPageState();
}

class _PaymentsPageState extends State<PaymentsPage> {

  List<String> items = [
    "Send",
    "Bills",
    "Request",
  ];

int current = 0;


  @override
  Widget build(BuildContext context) {

    Size screenSize = MediaQuery.of(context).size;
    double textScaleFactor = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      backgroundColor: const Color(0xffF7F6F1),
      appBar: AppBar(
        backgroundColor: const Color(0xffF7F6F1),
        elevation: 0,
        title: Text("Payments",
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'Poppins',
          fontSize: 24.0 * textScaleFactor,
        ),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                    left: screenSize.width * .05,
                    right: screenSize.width * .01,
                    top: screenSize.height * .01
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
              Container(
                margin: EdgeInsets.only(top: screenSize.height * .02),
                height: screenSize.height * .48,
                width: screenSize.width,
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: screenSize.width * .025,
                            vertical: screenSize.height * .015
                        ),
                        child: Text("Send to someone new",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 15.0 * textScaleFactor,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: screenSize.width * .03
                      ),
                      child: TextField(
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                              top: screenSize.height * .01,
                              left: screenSize.width * .015,
                              bottom: screenSize.height * .01
                          ),
                          hintText: "Name, @username, email, mobile",
                          hintStyle: const TextStyle(
                            color: Color(0xff777777),
                            fontFamily: 'Poppins',
                          ),
                          prefixIcon: Icon(Icons.search,
                            color: const Color(0xff777777),
                            size: screenSize.width * .05,
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xff777777),
                              width: 5.0,
                            ),
                          borderRadius: BorderRadius.circular(70.0),
                        ),
                      ),
                    ),
                    ),
                    SizedBox(
                      height: screenSize.height * .02,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: screenSize.width * .01,
                          vertical: screenSize.height * .01
                      ),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              InkWell(
                                onTap: (){},
                                child: Column(
                                  children: <Widget>[
                                    CircleAvatar(
                                      radius: screenSize.width * .07,
                                      backgroundImage: const AssetImage("assets/caloocanBoy.png"),
                                    ),
                                    SizedBox(
                                      height: screenSize.height * .015,
                                    ),
                                    Text("Caloocan Boy",
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        height: screenSize.height * .0015,
                                        fontFamily: 'Poppins',
                                        fontSize: 11.0 * textScaleFactor,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: (){},
                                child: Column(
                                  children: <Widget>[
                                    CircleAvatar(
                                      radius: screenSize.width * .07,
                                      backgroundImage: const AssetImage("assets/mason.jpeg"),
                                    ),
                                    SizedBox(
                                      height: screenSize.height * .015,
                                    ),
                                    Center(
                                      child: Text("Mason Ako Ogag",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          height: screenSize.height * .0015,
                                          fontFamily: 'Poppins',
                                          fontSize: 11.0 * textScaleFactor,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: (){},
                                child: Column(
                                  children: <Widget>[
                                    CircleAvatar(
                                      radius: screenSize.width * .07,
                                      backgroundImage: const AssetImage("assets/sinapian.jpg"),
                                    ),
                                    SizedBox(
                                      height: screenSize.height * .015,
                                    ),
                                    Text("Sinapian Si Jane",
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        height: screenSize.height * .0015,
                                        fontFamily: 'Poppins',
                                        fontSize: 11.0 * textScaleFactor,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: screenSize.height * .05,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              InkWell(
                                onTap: (){},
                                child: Column(
                                  children: <Widget>[
                                    CircleAvatar(
                                      radius: screenSize.width * .07,
                                      backgroundImage: const AssetImage("assets/tigbason.jpg"),
                                    ),
                                    SizedBox(
                                      height: screenSize.height * .015,
                                    ),
                                    Text("Tigbason Takaron",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        height: screenSize.height * .0015,
                                        fontFamily: 'Poppins',
                                        fontSize: 11.0 * textScaleFactor,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: screenSize.width * .015,
                              ),
                              InkWell(
                                onTap: (){},
                                child: Column(
                                  children: <Widget>[
                                    CircleAvatar(
                                      radius: screenSize.width * .07,
                                      backgroundImage: const AssetImage("assets/bai.jpg"),
                                    ),
                                    SizedBox(
                                      height: screenSize.height * .015,
                                    ),
                                    Text("Bai Rabs",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        height: screenSize.height * .0015,
                                        fontFamily: 'Poppins',
                                        fontSize: 11.0 * textScaleFactor,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: screenSize.height * .016,
                              ),
                              InkWell(
                                onTap: (){},
                                child: Column(
                                  children: <Widget>[
                                    CircleAvatar(
                                      radius: screenSize.width * .07,
                                      backgroundImage: const AssetImage("assets/agoy.PNG"),
                                    ),
                                    SizedBox(
                                      height: screenSize.height * .015,
                                    ),
                                    Text("Mapriso Ka, AGOY",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        height: screenSize.height * .0015,
                                        fontFamily: 'Poppins',
                                        fontSize: 11.0 * textScaleFactor,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: screenSize.height * .025,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text("All Contacts",
                        style: TextStyle(
                          color: const Color(0xff1270EC),
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0 * textScaleFactor,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenSize.height * .01,
              ),
              Container(
                height: screenSize.height * .29,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
