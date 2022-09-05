import 'package:flutter/material.dart';

import 'onBoardScreen.dart';

class Family extends StatefulWidget {
  const Family({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<Family> createState() => _FamilyState();
}

class _FamilyState extends State<Family> {

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
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Father’s Name',
                        labelText: 'Father’s Name',
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Father’s date of Birth',
                        labelText: 'Father’s date of Birth',
                        suffixIcon: Icon(Icons.calendar_month,
                            color: Color.fromRGBO(48, 76, 159, 1)),
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Mother’s Name',
                        labelText: 'Mother’s Name',
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Mother’s Date of Birth',
                        labelText: 'Mother’s date of Birth',
                        suffixIcon: Icon(Icons.calendar_month,
                            color: Color.fromRGBO(48, 76, 159, 1)),
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Spouse Name (If Applicable)',
                        labelText: 'Spouse Name (If Applicable)',
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Spouse’s Date of Birth (If Applicable)',
                        labelText: 'Spouse’s Date of Birth (If Applicable)',
                        suffixIcon: Icon(Icons.calendar_month,
                            color: Color.fromRGBO(48, 76, 159, 1)),
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'First Child’s Name (If Applicable)',
                        labelText: 'First Child’s Name (If Applicable)',
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'First Child’s Date of Birth (If Applicable)',
                        labelText:
                            'First Child’s Date of Birth (If Applicable)',
                        suffixIcon: Icon(Icons.calendar_month,
                            color: Color.fromRGBO(48, 76, 159, 1)),
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Second Child’s Name (If Applicable)',
                        labelText: 'Second Child’s Name (If Applicable)',
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText:
                            'Second Child’s Date of Birth (If Applicable)',
                        labelText:
                            'Second Child’s Date of Birth (If Applicable)',
                        suffixIcon: Icon(Icons.calendar_month,
                            color: Color.fromRGBO(48, 76, 159, 1)),
                      ),
                    ),
                    // SizedBox(
                    //   height: 30,
                    // ),
                    Container(
                      padding: const EdgeInsets.only(top: 30, bottom: 10),
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
