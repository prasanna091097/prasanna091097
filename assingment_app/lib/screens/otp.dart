import 'package:flutter/material.dart';

class OtpPage extends StatefulWidget {
  final String numValue;
  const OtpPage({
    Key? key,
    required this.numValue,
  }) : super(key: key);

  @override
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(children: [
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
                    )),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: SizedBox(
                height: 250,
                width: 250,
                child: Image.asset('images/otp.png'),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'OTP Verification',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Raleway'),
            ),
            const SizedBox(height: 25),
            Text(
              "Enter the OTP sent to ${widget.numValue}",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 350,
              child: TextFormField(
                maxLength: 4,
                keyboardType: TextInputType.number,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "OTP not recieved?",
                style: TextStyle(fontSize: 14, color: Colors.grey.shade500),
              ),
              const SizedBox(
                width: 10,
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "RESEND OTP",
                  style: TextStyle(color: Colors.blueAccent),
                ),
              ),
            ]),
            const SizedBox(
              height: 30,
            ),
            MaterialButton(
              child: const Text(
                "VERIFY & PRODCCED",
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
                  Radius.circular(30.0),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, 'location');
              },
            ),
          ]),
        ),
      ),
    );
  }
}
