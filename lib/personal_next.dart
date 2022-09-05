import 'package:flutter/material.dart';
import 'package:hrms/personal.dart';

import 'onBoardScreen.dart';

class PersonalNext extends StatefulWidget {
  const PersonalNext({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<PersonalNext> createState() => _PersonalNextState();
}

class _PersonalNextState extends State<PersonalNext> {
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
                    builder: (context) => Personal(
                      title: 'Personal Details',
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
                        hintText: 'Blood Group',
                        labelText: 'Blood Group',
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Existing UAN No. (If Any)',
                        labelText: 'Existing UAN No. (If Any)',
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Existing ESIC No. (If Any)',
                        labelText: 'Existing ESIC No. (If Any)',
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      color: Color.fromRGBO(240, 240, 240, 1),
                      padding:
                          const EdgeInsets.only(top: 15, left: 10, bottom: 15),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Text(
                                "Permanent Address",
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
                              hintText: 'Plot No./ Street/ Coloeny',
                              labelText: 'Plot No./ Street/ Coloeny',
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
                                      hintText: 'City',
                                      labelText: 'City',
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      hintText: 'State',
                                      labelText: 'State',
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Postal Code',
                              labelText: 'Postal Code',
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: CheckboxListTile(
                        title: Text("Present Address same as Permanent Address",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color.fromRGBO(48, 76, 159, 1),
                              fontFamily: "Montserrat, Regular",
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                            )),
                        value: true,
                        onChanged: (newValue) {},
                        controlAffinity: ListTileControlAffinity
                            .leading, //  <-- leading Checkbox
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
                                "Present Address",
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
                              hintText: 'Plot No./ Street/ Coloeny',
                              labelText: 'Plot No./ Street/ Coloeny',
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
                                      hintText: 'City',
                                      labelText: 'City',
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      hintText: 'State',
                                      labelText: 'State',
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Postal Code',
                              labelText: 'Postal Code',
                            ),
                          ),
                        ],
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
