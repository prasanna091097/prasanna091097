import 'package:flutter/material.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({Key? key}) : super(key: key);

  @override
  _AddressPageState createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
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
              height: 40,
            ),
            SizedBox(width: 350, child: Image.asset('images/z.png')),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 350,
              child: MaterialButton(
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Icon(Icons.location_searching, color: Colors.grey),
                    ),
                    Text(
                      "Your Current Location",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                color: Colors.black,
                minWidth: 350,
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
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Icon(Icons.location_searching, color: Colors.grey),
                    ),
                    Text(
                      "Some other locations",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                color: Colors.white,
                minWidth: 350,
                height: 60,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0), // Change your border radius here
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
