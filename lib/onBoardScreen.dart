import 'package:flutter/material.dart';
import 'package:hrms/personal.dart';
import 'package:hrms/social.dart';
import 'package:hrms/work.dart';

import 'adhar_otp.dart';
import 'bank.dart';
import 'education.dart';
import 'family.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
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
                    builder: (context) => AdharOtp(
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
              Container(
                padding: const EdgeInsets.only(
                    top: 15, left: 25, right: 25, bottom: 10),
                child: const Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontFamily: "Montserrat, Regular",
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    // fontStyle: FontStyle.italic,
                    //  letterSpacing: 2,
                    // wordSpacing: 20,
                    // backgroundColor: Colors.yellow,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                  padding: const EdgeInsets.only(
                      top: 15, left: 25, right: 25, bottom: 0),
                  child: GridView.count(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      crossAxisSpacing: 4.0,
                      mainAxisSpacing: 8.0,
                      children: List.generate(choices.length, (index) {
                        return Center(
                          child: SelectCard(choices[index], context),
                        );
                      })))
            ],
          ),
        ),
      ),
    );
  }
}

class Choice {
  const Choice({required this.title, required this.icon, required this.click});

  final String title;
  final String icon;
  final String click;
}

const List<Choice> choices = const <Choice>[
  const Choice(
      title: 'Personal Details', icon: "assets/1.png", click: "Personal"),
  const Choice(title: 'Family Details', icon: "assets/2.png", click: "Family"),
  const Choice(
      title: 'Education Details', icon: "assets/3.png", click: "Education"),
  const Choice(title: 'Bank Details', icon: "assets/4.png", click: "Bank"),
  const Choice(title: 'Work Experience', icon: "assets/5.png", click: "Work"),
  const Choice(title: 'Social Details', icon: "assets/6.png", click: "Social"),
];

Widget SelectCard(Choice choice, BuildContext context) {
  return Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Color.fromRGBO(244, 115, 32, 1), width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      color: Colors.white,
      child: InkWell(
        onTap: () {
          if (choice.click == "Personal") {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => Personal(
                          title: choice.title,
                        )));
          } else if (choice.click == "Family") {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => Family(
                          title: choice.title,
                        )));
          } else if (choice.click == "Education") {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => Education(
                          title: choice.title,
                        )));
          } else if (choice.click == "Bank") {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => Bank(
                          title: choice.title,
                        )));
          } else if (choice.click == "Work") {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => Work(
                          title: choice.title,
                        )));
          } else if (choice.click == "Social") {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => Social(
                          title: choice.title,
                        )));
          } else {}
        },
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Image.asset(
                    choice.icon,
                    height: 50,
                  ),
                ),
                Text(
                  choice.title,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontFamily: "Montserrat, Regular",
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    // fontStyle: FontStyle.italic,
                    //  letterSpacing: 2,
                    // wordSpacing: 20,
                    // backgroundColor: Colors.yellow,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ]),
        ),
      ));
}
