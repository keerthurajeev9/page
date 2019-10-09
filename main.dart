import 'package:flutter/material.dart';
import 'login.dart';
import 'home.dart';

void main() => runApp(Login());

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,

      theme: ThemeData(

         brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],

        // Define the default font family.
        fontFamily: 'Montserrat',

      ),

      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Stack(
              alignment: Alignment.center,
              children: <Widget>[

                new Container(
                  margin: new EdgeInsets.only(left:40.0, top: 50.0),
                  height: 50.0,
                  width: 50.0,
                  decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(50.0),
                      color: Colors.blue,
                  ),
                  child: new Icon(
                    Icons.recent_actors,
                    color: Colors.white,
                  ),
                ),

                new Container(
                  margin: new EdgeInsets.only(right: 40, top: 50.0),
                  height: 50.0,
                  width: 50.0,
                  decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(50.0),
                      color: Colors.deepOrangeAccent,
                  ),
                  child: new Icon(
                    Icons.settings_cell,
                    color: Colors.white,
                  ),
                ),new Container(
                  margin: new EdgeInsets.only(right:150,top:150),
                  height: 50.0,
                  width: 50.0,
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(50.0),
                    color: Colors.green,
                  ),
                  child: new Icon(
                    Icons.mobile_screen_share,
                    color: Colors.white,
                  ),
                ),
                new Container(
                  margin: new EdgeInsets.only(right:110,top:80.0),
                  height: 50.0,
                  width: 50.0,
                  decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(50.0),
                      color: Colors.deepPurple,
                  ),
                  child: new Icon(
                    Icons.sms,
                    color: Colors.white,
                  ),
                ),
                new Container(
                  margin: new EdgeInsets.only(left:140,top:150),
                  height: 50.0,
                  width: 50.0,
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(50.0),
                    color: Colors.yellow,
                  ),
                  child: new Icon(
                    Icons.mode_edit,
                    color: Colors.white,
                  ),
                ),
                  new Container(
                  margin: new EdgeInsets.only(left:100,top:80),
                  height: 50.0,
                  width: 50.0,
                  decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(50.0),
                      color: Colors.pinkAccent,
                  ),
                  child: new Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 80.0),
                  child: new Text(
                    "JOIN",
                    style: new TextStyle(fontSize: 30.0,fontFamily: "Rock Salt",
                      //fontStyle: FontStyle.italic,
                        color: Colors.white70,
                        decorationColor: Colors.red,
                        decorationStyle: TextDecorationStyle.wavy

                    ),
                  ),
                )
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 10.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ));
                      },
                      child: new Container(
                          alignment: Alignment.center,
                          height: 60.0,
                          decoration: new BoxDecoration(
                              color: Colors.lightGreenAccent,
                              borderRadius: new BorderRadius.circular(9.0)),
                          child: new Text("Sign In ",
                              style: new TextStyle(
                                  fontSize: 20.0, color: Colors.black))),
                    ),
                  ),
                )
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 10.0),

                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) =>FormPage(),
                      ));
                    },
                    child: new Container(
                        alignment: Alignment.center,
                        height: 60.0,
                        width: 50.0,
                        decoration: new BoxDecoration(
                            color: Colors.lightGreenAccent,
                            borderRadius: new BorderRadius.circular(9.0)),
                        child: new Text("Register",
                            style: new TextStyle(
                                fontSize: 20.0, color: Colors.black))),
                  ),
                ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}