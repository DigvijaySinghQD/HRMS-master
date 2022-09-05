import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'offer_letter.dart';

class LoginScreen extends StatefulWidget {
  LoginState createState() => LoginState();
}

class LoginState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color(0xff041616),
                image: DecorationImage(
                    image: AssetImage('assets/login_users_bkg.png'))),
          ),
        ),
        Container(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.1,
              left: 25,
              right: 25,
              bottom: 40),
          color: Color(0xff041616),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  fillColor: Color.fromRGBO(48, 76, 159, 1),
                  filled: true,
                  hintText: 'Username',
                  hintStyle: TextStyle(fontSize: 18, color: Colors.white),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 18, color: Colors.white),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                    fillColor: Color(0xff304C9F),
                    filled: true,
                    hintText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: TextButton(
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 25, fontStyle: FontStyle.normal),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OfferLetter(
                                  title: 'Offer Letter',
                                )));
                  },
                  style: TextButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    primary: Colors.white,
                    elevation: 0,
                    backgroundColor: Color.fromRGBO(244, 115, 32, 1),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
