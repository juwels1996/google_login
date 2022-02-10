import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

Widget buildEmail() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Email",
        style: TextStyle(
            color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 8,
      ),
      Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: Colors.teal, blurRadius: 5, offset: Offset(0, 3)),
            ]),
        height: 60,
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(color: Colors.white, fontSize: 18),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 30),
              prefixIcon: Icon(Icons.email),
              hintText: "enter Email",
              hintStyle: TextStyle(color: Colors.white)),
        ),
      )
    ],
  );
}

Widget buildPassword() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Password",
        style: TextStyle(
            color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 8,
      ),
      Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: Colors.teal, blurRadius: 5, offset: Offset(0, 3)),
            ]),
        height: 60,
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(color: Colors.white, fontSize: 18),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 30),
              prefixIcon: Icon(Icons.email),
              hintText: "enter your password",
              hintStyle: TextStyle(color: Colors.white)),
        ),
      )
    ],
  );
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion(
          value: SystemUiOverlayStyle.light,
          child: GestureDetector(
            child: Stack(
              children: [
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        Color(0xff076585),
                        Color(0xff2193b0),
                        Color(0xff79CBCA),
                        Color(0xff79CBCA),
                      ])),
                  child: SingleChildScrollView(
                    physics: AlwaysScrollableScrollPhysics(),
                    padding:
                        EdgeInsets.symmetric(horizontal: 25, vertical: 150),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Sign In",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 28,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        buildEmail(),
                        buildPassword()
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
