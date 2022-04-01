import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(context, 'Otp');
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Welcome Back!',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          SizedBox(
            width: 350,
            child: MaterialButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.facebook, color: Colors.white),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'CONTINUE WITH FACEBOOK',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              color: Colors.indigo[400],
              minWidth: 200,
              height: 60,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30.0), // Change your border radius here
                ),
              ),
              onPressed: () {},
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 350,
            child: MaterialButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: const [
                  SizedBox(
                    width: 30,
                    child: Image(
                      image: AssetImage("images/google.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'CONTINUE WITH GOOGLE',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              color: Colors.white,
              minWidth: 200,
              height: 60,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30.0), // Change your border radius here
                ),
              ),
              onPressed: () {},
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            'OR CONTINUE WITH PHONE NUMBER',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 350,
            child: TextField(
              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                fillColor: Colors.grey.shade100,
                filled: true,
                hintText: "Enter Phone Number",
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          MaterialButton(
            child: const Text(
              "LOG IN",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            color: Colors.black,
            minWidth: 350,
            height: 70,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(30.0), // Change your border radius here
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, 'location');
            },
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Forgot Password?',
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'DON\'T HAVE AN ACCOUNT? ',
                style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context, 'login');
                },
                child: const Text(
                  "SIGN UP",
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
