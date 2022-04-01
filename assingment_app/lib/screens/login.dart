import 'package:assingment_app/screens/otp.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _textControllerNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Image.asset(
            'images/Group.png',
          ),
          const Text(
            'Your Home Services Expert',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "Continue with Phone Number",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            width: 350,
            child: TextField(
              controller: _textControllerNumber,
              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                fillColor: Colors.grey.shade100,
                filled: true,
                hintText: "Enter Mobile Number",
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
              ),
            ),
          ),
          MaterialButton(
            child: const Text(
              "SIGN UP",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            color: Colors.black,
            minWidth: 350,
            height: 60,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(30.0), // Change your border radius here
              ),
            ),
            onPressed: () {
              // Navigator.pushNamed(context, 'Otp');
              var route = MaterialPageRoute(
                builder: (BuildContext context) => OtpPage(
                  numValue: _textControllerNumber.text,
                ),
              );
              Navigator.of(context).push(route);
            },
          ),
          const Text(
            "View Other Option",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              color: Colors.blue,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'ALREADY HAVE AN ACCOUNT? ',
                style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'register');
                },
                child: const Text(
                  "LOG IN",
                  style: TextStyle(color: Colors.blueAccent),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
