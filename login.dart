import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'register.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.blue,
   )
    );
    return new Scaffold(
      appBar: new AppBar(
          backgroundColor:Colors.transparent,
          elevation: 0.0,
          iconTheme: new IconThemeData(color: Color(0xFF18D191))),
      body: Container(
        width: double.infinity,
        child: new Column (
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Padding(
                  padding: const EdgeInsets.only(top: 13.0, bottom: 80.0),
                  child: new Text(
                    "LOGIN",
                    style: new TextStyle(fontSize: 30.0),
                  ),
                )
              ],
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              child: new TextField(
                decoration: new InputDecoration(labelText: 'Email'),
              ),
            ),
            new SizedBox(
              height: 15.0,
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              child: new TextField(
                obscureText: true,
                decoration: new InputDecoration(labelText: 'Password'),
              ),
            ),
            new SizedBox(
              height: 25.0,
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
               Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 18.0, top: 25.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => MyApp()
                        ));
                      },

                      child: new Container(
                          alignment: Alignment.center,
                          height: 58.0,

                          decoration: new BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: new BorderRadius.circular(12.0)),
                          child: new Text("Login",
                              style: new TextStyle(
                                  fontSize: 20.0, color: Colors.white))),
                    ),
                  ),
                ),

              ],
            ),

          ],
        ),
      ),
    );
  }
}