import 'package:flutter/material.dart';
import 'package:hrms/take_picture.dart';
import 'package:lottie/lottie.dart';

class AcceptLetter extends StatefulWidget {
  const AcceptLetter({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<AcceptLetter> createState() => _AcceptLetterState();
}

class _AcceptLetterState extends State<AcceptLetter> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
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
                Container(
                  padding: const EdgeInsets.only(
                      top: 55, left: 25, right: 25, bottom: 10),
                  child: const Text(
                    "Congratulation",
                    style: TextStyle(
                      fontSize: 30,
                      color: Color.fromRGBO(244, 115, 32, 1),
                      fontFamily: "Montserrat, Regular",
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Container(
                  padding: const EdgeInsets.only(
                      top: 0, left: 35, right: 35, bottom: 0),
                  child: const Text(
                    "Simply dummy text of the printing and typesetting industry.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(48, 76, 159, 1),
                      fontFamily: "Montserrat, Medium",
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 0, left: 25, right: 25),
                  child: Lottie.asset(
                      'assets/91620-jumping-lottie-animation.json',
                      height: 410,
                      animate: true),
                ),
                Container(
                  padding: const EdgeInsets.only(
                      top: 0, left: 35, right: 35, bottom: 10),
                  child: const Text(
                    "Lets Start",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(48, 76, 159, 1),
                      fontFamily: "Montserrat, Medium",
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TakePicture(
                                  title: 'Take Picture',
                                )));
                  },
                  child: Container(
                    padding: const EdgeInsets.only(
                        top: 1, left: 25, right: 25, bottom: 10),
                    child: Image.asset(
                      'assets/arrow.png',
                      height: 90,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
