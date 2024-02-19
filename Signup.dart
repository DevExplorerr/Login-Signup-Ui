import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

  

class Signup extends StatefulWidget {
  final int length;
  final bool numb;
  final bool letter;
  final bool sCharacter;

  const Signup({
    Key? key,
    required this.length,
    required this.numb,
    required this.letter,
    required this.sCharacter,
  }) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  late String password;

  @override
  void initState() {
    super.initState();
    password = generatePassword(
      widget.length,
      widget.numb,
      widget.letter,
      widget.sCharacter,
    );
  }

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
                      Navigator.pop(context);
                    },
                    child: Text(
                      "SIGN IN",
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
                "New User? Get Started Now",
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
                      height: 35,
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
                    Column(
                      children: [
                        Text(
                          "Password*",
                          textAlign: TextAlign.start,
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
                      height: 35,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 35,
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xff2F80ED),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              "SIGN UP",
                              style: GoogleFonts.cambo(
                                color: Color(0xffFFFFFF),
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 35,
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xff2F80ED),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                password = generatePassword(
                                  widget.length,
                                  widget.numb,
                                  widget.letter,
                                  widget.sCharacter,
                                );
                              });
                            },
                            child: Text(
                              "Generate",
                              style: GoogleFonts.cambo(
                                color: Color(0xffFFFFFF),
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
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
                    )
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
  
  

  String generatePassword(int length, bool numb, bool letter, bool sCharacter) {
    String chars = '';
    String result = '';
    if (numb) {
      chars += '0123456789';
    }
    if (letter) {
      chars += 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    }
    if (sCharacter) {
      chars += '!@#\$%^&*()_-+=<>?/{}[]|';
    }
    if (chars.isEmpty) {
      print("Please select at least one character type.");
      return '';
    }
    for (int i = 0; i < length; i++) {
      result = result + chars[Random().nextInt(chars.length)];
    }
    return result;
  }
}

