import 'package:cbz_touch/screens/signup_screen.dart';
import 'package:flutter/material.dart';

import 'login_user.dart';

class LogSign extends StatefulWidget {
  const LogSign({super.key});

  @override
  State<LogSign> createState() => _LogSignState();
}

class _LogSignState extends State<LogSign> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/background-image.webp"),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.098,
              ),
              const Image(
                image: AssetImage("assets/cbz_cbz-touch-logo.png"),
                width: 120,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.025,
              ),
              const Expanded(child: Text("")),
              const Text(
                "Welcome to CBZTouch",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.025,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 5.0,
                ),
                child: SizedBox(
                  height: 70,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ))),
                      onPressed: () async {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  // ignore: prefer_const_constructors
                                  LogUser()),
                        );
                      },
                      child: const Center(
                          child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "Poppins",
                          fontSize: 18,
                        ),
                      ))),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.010,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 5.0,
                ),
                child: SizedBox(
                  height: 70,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        gradient: const LinearGradient(
                            colors: [Color(0xff840B28), Color(0xffE21C32)])),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16))),
                        onPressed: () async {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    // ignore: prefer_const_constructors
                                    SignUp()),
                          );
                        },
                        child: const Center(
                            child: Text(
                          "Register",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Poppins",
                            fontSize: 18,
                          ),
                        ))),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.025,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
