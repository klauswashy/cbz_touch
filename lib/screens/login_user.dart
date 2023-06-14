import 'package:cbz_touch/screens/pin_login.dart';
import 'package:flutter/material.dart';

class LogUser extends StatefulWidget {
  const LogUser({super.key});

  @override
  State<LogUser> createState() => _LogUserState();
}

class _LogUserState extends State<LogUser> {
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
                "Welcome John Doe",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 24),
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
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  // ignore: prefer_const_constructors
                                  PinLogin()),
                        );
                      },
                      child: const Center(
                          child: Text(
                        "Log In",
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
              const Text(
                "By signing in,I agree to T&Cs",
                style: TextStyle(color: Colors.white),
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
