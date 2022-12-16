import 'package:flutter/material.dart';
import 'MainMenu.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _PaypalCloneState();
}

class _PaypalCloneState extends State<LoginPage> {

  bool isHiddenPassword = true;

  @override
  Widget build(BuildContext context) {

    Size screenSize = MediaQuery.of(context).size;
    double textScaleFactor = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                  left: screenSize.width * .12,
                  right: screenSize.width * .12,
                  top: screenSize.height * .036,
                ),
                child: Center(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Image(
                      height: screenSize.height * .15,
                      width: screenSize.width * .15,
                      image: const AssetImage("assets/paypal.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 60.0,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Email",
                        labelText: "Email",
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xff0000ff),
                            width: 5.0,
                          ),
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Password",
                        labelText: "Password",
                        suffixIcon: InkWell(
                          onTap: _viewPassword,
                          child: Icon(
                            isHiddenPassword
                                ?Icons.visibility
                                :Icons.visibility_off,
                            color: Colors.black,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xff0000ff),
                            width: 5.0,
                          ),
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                      ),
                      obscureText: isHiddenPassword,
                    ),
                    InkWell(
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 10.0),
                        alignment: Alignment.topLeft,
                        child: Text("Forgot Password?",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff0085CC),
                            fontSize: 18.0 * textScaleFactor,
                          ),
                        ),
                      ),
                      onTap: (){},
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    ElevatedButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const MainMenu()),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(const Color(0xff00186A)),
                        padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(
                              horizontal: screenSize.width * .37, vertical: screenSize.height * .02),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                      child: Text("Log In",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18.0 * textScaleFactor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    ElevatedButton(
                      onPressed: (){},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.white),
                        padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(
                              horizontal: screenSize.width * .35, vertical: screenSize.height * .02),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: const BorderSide(
                              color: Color(0xff00186A),
                            ),
                          ),
                        ),
                      ),
                      child: Text("Sign Up",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff00186A),
                            fontSize: 18.0 * textScaleFactor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _viewPassword() {
    setState((){
      isHiddenPassword = !isHiddenPassword;
    });
  }
}
