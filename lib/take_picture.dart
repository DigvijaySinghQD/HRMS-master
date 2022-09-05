import 'package:flutter/material.dart';

import 'accept.dart';
import 'adhar.dart';

class TakePicture extends StatefulWidget {
  const TakePicture({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<TakePicture> createState() => _TakePictureState();
}

class _TakePictureState extends State<TakePicture> {
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
                    builder: (context) => AcceptLetter(
                      title: 'Offer Letter',
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
                    top: 15, left: 25, right: 25, bottom: 0),
                child: const Text(
                  "Look at the camera and ensure entire face is covered",
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
              InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.only(
                      top: 30, left: 25, right: 25, bottom: 10),
                  child: Image.asset(
                    'assets/clickPhoto.png',
                    height: 100,
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                        top: 0, left: 25, right: 25, bottom: 15),
                    child: const Text(
                      "View Sample Photo",
                      textAlign: TextAlign.start,
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
                ],
              ),
              Container(
                padding: const EdgeInsets.only(top: 15, left: 25, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Expanded(
                        child: Column(
                      children: [

                            Image.asset(
                              'assets/image1.png',
                              height: 100,
                            ),

                        SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            Text(
                              "Correct",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.green,
                                fontFamily: "Montserrat, Regular",
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Front facing with no filters",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                            fontFamily: "Montserrat, Regular",
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    )),
                    SizedBox(
                      width:2,
                    ),
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                            Image.asset(
                              'assets/image2.png',
                              height: 100,
                            ),
                        SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            Text(
                              "Incorrect",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.red,
                                fontFamily: "Montserrat, Regular",
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "No Accessories of hazy background",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                            fontFamily: "Montserrat, Regular",
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    )),
                    SizedBox(
                      width:2,
                    ),
                    Expanded(
                        child: Column(
                      children: [

                            Image.asset(
                              'assets/image3.png',
                              height: 100,
                            ),
                        SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            Text(
                              "Incorrect",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.red,
                                fontFamily: "Montserrat, Regular",
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "No side face/tilted photo",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                            fontFamily: "Montserrat, Regular",
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    )),
                  ],
                ),
              ),
              SizedBox(
                height: 150,
              ),
              Container(
                padding: const EdgeInsets.only(top: 5, left: 25, right: 25,bottom:10),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Adhar(
                                      title: 'Aadhar Verification',
                                    )));
                      },
                      child: Text("Next"),
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
