// import 'package:cbz_touch/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

// import 'dashboard.dart';
import 'package:pinput/pinput.dart';

import 'dashboard.dart';

class PinLogin extends StatefulWidget {
  PinLogin({super.key});

  @override
  State<PinLogin> createState() => _PinLoginState();
}

class _PinLoginState extends State<PinLogin> {
  final String assetName = 'assets/cbz_app-pin.svg';
  String otp = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xffEDF1F7),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.025,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRect(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(500),
                      ),
                      padding: const EdgeInsets.all(20),
                      child: SvgPicture.asset(assetName,
                          color: Colors.white,
                          width: 40,
                          height: 40,
                          semanticsLabel: 'Acme Logo'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.125,
              ),
              const Text(
                "Enter Pin to Login",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.145,
              ),
              Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  child: Pinput(
                    length: 4,
                    showCursor: true,
                    defaultPinTheme: PinTheme(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white),
                      ),
                      textStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onCompleted: (value) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                // ignore: prefer_const_constructors
                                DashBoard()),
                      );
                    },
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.035,
              ),
              const Text(
                "Forgot your app pin",
                style: TextStyle(),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
