import 'package:flutter/material.dart';

import 'adhar.dart';
import 'onBoardScreen.dart';

class AdharOtp extends StatefulWidget {
  const AdharOtp({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<AdharOtp> createState() => _AdharOtpState();
}

class _AdharOtpState extends State<AdharOtp> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          tooltip: 'Menu Icon',
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => Adhar(
                      title: 'Aadhar Verification',
                    )));
          },
        ),
        centerTitle: true,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: new BoxDecoration(color: Colors.white),
          child: Column(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Invoke "debug painting" (press "p" in the console, choose the
            // "Toggle Debug Paint" action from the Flutter Inspector in Android
            // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
            // to see the wireframe for each widget.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                        top: 0, left: 25, right: 25, bottom: 10),
                    child: Image.asset(
                      'assets/aadhaar.png',
                      height: 100,
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.only(
                    top: 15, left: 25, right: 25, bottom: 15),
                child: const Text(
                  "A 6-digit OTP has been sent on your mobile number registered with your aadhaar card",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontFamily: "Montserrat, Regular",
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Wrap(
                  alignment: WrapAlignment.start,
                  spacing: 4,
                  direction: Axis.horizontal,
                  runSpacing: 10,
                  children: [
                    _otpTextField(context, true),
                    _otpTextField(context, false),
                    _otpTextField(context, false),
                    _otpTextField(context, false),
                    _otpTextField(context, false),
                    _otpTextField(context, false),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                    top: 0, left: 25, right: 25, bottom: 15),
                child: const Text(
                  "Resend OTP",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromRGBO(48, 76, 159, 1),
                    fontFamily: "Montserrat, Regular",
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 110,
              ),
              Container(
                padding: const EdgeInsets.only(top: 55, left: 25, right: 25,bottom:10),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OnBoardScreen(
                                      title: 'Onboarding Data',
                                    )));
                      },
                      child: Text("Verify Aadhaar"),
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(80, 50),
                        primary: Color.fromRGBO(244, 115, 32, 1),
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontStyle: FontStyle.normal),
                      ),
                    )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _otpTextField(BuildContext context, bool autoFocus) {
  return Container(
    height: MediaQuery.of(context).size.shortestSide * 0.13,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey),
      borderRadius: BorderRadius.circular(5),
      color: Colors.white,
      shape: BoxShape.rectangle,
    ),
    child: AspectRatio(
      aspectRatio: 0.8,
      child: TextField(
        autofocus: autoFocus,
        decoration: InputDecoration(
          border: InputBorder.none,
        ),
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        style: TextStyle(),
        maxLines: 1,
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    ),
  );
}
