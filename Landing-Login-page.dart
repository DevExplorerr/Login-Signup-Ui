import 'package:flutter/material.dart';
import 'Signup.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  
    Future.delayed(Duration(seconds: 12), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login Signup UI",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/top-banner.jpg",
              height: 200,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Column(
              children: [
                Text(
                  "Angel Sure",
                  style: GoogleFonts.akayaTelivigala(
                    fontSize: 30,
                    color: Color(0xff2F80ED),
                  ),
                ),
                Image.asset(
                  "assets/Image.jpg",
                  width: 239,
                  height: 190,
                ),
              ],
            ),
            Image.asset(
              "assets/bottom-banner.jpg",
              height: 200,
              width: double.infinity,
              fit: BoxFit.fill,
            )
          ],
        ),
      ),
    );
  }
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Image.asset(
                "assets/top-banner.jpg",
                height: 125,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              Positioned(
                top: 10,
                right: 18,
                child: Container(
                  height: 35,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffFFFFFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Signup(                length: 12,
                numb: true,
                letter: true,
                sCharacter: false)),
                      );
                    },
                    child: Text(
                      "SIGN UP",
                      style: GoogleFonts.cambo(
                        color: Color(0xff2F80ED),
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Sign In to Continue",
                style: GoogleFonts.cambo(
                  fontSize: 24,
                  color: Color(0xff4F4F4F),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "assets/Google-Icon.jpg",
                    width: 40,
                    height: 26,
                  ),
                  Image.asset(
                    "assets/Facebook-Icon.jpg",
                    width: 40,
                    height: 26,
                  ),
                  Image.asset(
                    "assets/Twitter-Icon.jpg",
                    width: 40,
                    height: 25,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email ID*",
                      style: TextStyle(
                        color: Color(0xff4f4f4f),
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 35, // Adjust height as needed
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          fillColor: Color(0xffFFFFFF),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                              style: BorderStyle.solid,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff828282),
                              width: 1,
                              style: BorderStyle.solid,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Password*",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff4F4F4F),
                          ),
                        ),
                        Text(
                          "Forgot Password?",
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff4F4F4F),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 35, // Adjust height as needed
                      child: TextField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.remove_red_eye,
                            color: Color(0xff000000),
                          ),
                          fillColor: Color(0xffFFFFFF),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                              style: BorderStyle.solid,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff828282),
                              width: 1,
                              style: BorderStyle.solid,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: 35,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff2F80ED),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "SIGN IN",
                          style: GoogleFonts.cambo(
                            color: Color(0xffFFFFFF),
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Center(
                      child: Text(
                        "Terms and Conditions | Privacy Policy",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "roboto",
                          fontSize: 12,
                          color: Color(0xff4F4F4F),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Image.asset(
            "assets/bottom-banner.jpg",
            height: 125,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
