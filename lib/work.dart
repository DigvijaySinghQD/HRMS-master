import 'package:flutter/material.dart';

import 'onBoardScreen.dart';

class Work extends StatefulWidget {
  const Work({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<Work> createState() => _WorkState();
}

class _WorkState extends State<Work> {
  @override
  Widget build(BuildContext context) {
    // Create a global key that uniquely identifies the Form widget
    // and allows validation of the form.
    final _formKey = GlobalKey<FormState>();
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
                    builder: (context) => OnBoardScreen(
                      title: 'Onboarding Data',
                    )));
          },
        ),
        centerTitle: true,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
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
            // Build a Form widget using the _formKey created above.
            Container(
              decoration: new BoxDecoration(color: Colors.white),
              padding: const EdgeInsets.only(
                  top: 15, left: 25, right: 25, bottom: 0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(top: 15, left: 10, bottom: 15),
                      color: Color.fromRGBO(240, 240, 240, 1),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Text(
                                "Work Experience 1",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromRGBO(48, 76, 159, 1),
                                  fontFamily: "Montserrat, Regular",
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                  // fontStyle: FontStyle.italic,
                                  //  letterSpacing: 2,
                                  // wordSpacing: 20,
                                  // backgroundColor: Colors.yellow,
                                ),
                              ),
                            ],
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Organization Name',
                              labelText: 'Organization Name',
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      hintText: 'From',
                                      labelText: 'From',
                                      suffixIcon: Icon(Icons.calendar_month,
                                          color:
                                              Color.fromRGBO(48, 76, 159, 1)),
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      hintText: 'To',
                                      labelText: 'To',
                                      suffixIcon: Icon(Icons.calendar_month,
                                          color:
                                              Color.fromRGBO(48, 76, 159, 1)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Designation',
                              labelText: 'Designation',
                            ),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Reason of Leaving',
                              labelText: 'Reason of Leaving',
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Align(
                        alignment: Alignment.topRight,
                        // padding: const EdgeInsets.only(top: 15, right: 25),
                        child: Image.asset(
                          'assets/add.png',
                          height: 70,
                        ),
                      ),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(top: 10, left: 10, bottom: 15),
                      child: Row(
                        children: [
                          const Text(
                            "Working Reference",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(48, 76, 159, 1),
                              fontFamily: "Montserrat, Regular",
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w700,
                              // fontStyle: FontStyle.italic,
                              //  letterSpacing: 2,
                              // wordSpacing: 20,
                              // backgroundColor: Colors.yellow,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(top: 15, left: 10, bottom: 15),
                      color: Color.fromRGBO(240, 240, 240, 1),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Text(
                                "First Reference",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromRGBO(48, 76, 159, 1),
                                  fontFamily: "Montserrat, Regular",
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                  // fontStyle: FontStyle.italic,
                                  //  letterSpacing: 2,
                                  // wordSpacing: 20,
                                  // backgroundColor: Colors.yellow,
                                ),
                              ),
                            ],
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Name',
                              labelText: 'Name',
                              suffixIcon: Icon(Icons.arrow_drop_down),
                            ),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Designation',
                              labelText: 'Designation',
                              suffixIcon: Icon(Icons.arrow_drop_down),
                            ),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Email',
                              labelText: 'Email',
                              suffixIcon: Icon(Icons.arrow_drop_down),
                            ),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Contact',
                              labelText: 'Contact',
                              suffixIcon: Icon(Icons.arrow_drop_down),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(top: 15, left: 10, bottom: 15),
                      color: Color.fromRGBO(240, 240, 240, 1),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Text(
                                "Second Reference",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromRGBO(48, 76, 159, 1),
                                  fontFamily: "Montserrat, Regular",
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Name',
                              labelText: 'Name',
                              suffixIcon: Icon(Icons.arrow_drop_down),
                            ),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Designation',
                              labelText: 'Designation',
                              suffixIcon: Icon(Icons.arrow_drop_down),
                            ),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Email',
                              labelText: 'Email',
                              suffixIcon: Icon(Icons.arrow_drop_down),
                            ),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Contact',
                              labelText: 'Contact',
                              suffixIcon: Icon(Icons.arrow_drop_down),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                              top: 20, right: 25, bottom: 15),
                          child: const Text(
                            "Upload Documents",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(48, 76, 159, 1),
                              fontFamily: "Montserrat, Regular",
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.only(top: 5),
                        child: Image.asset(
                          'assets/passport.PNG',
                          height: 100,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        child: Image.asset(
                          'assets/cv.PNG',
                          height: 100,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        child: Image.asset(
                          'assets/slip.PNG',
                          height: 100,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        child: Image.asset(
                          'assets/company.PNG',
                          height: 100,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        child: Image.asset(
                          'assets/verify.PNG',
                          height: 100,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            child: Text("Submit"),
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
          ],
        ),
      ),
    );
  }
}
