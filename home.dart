import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(),
      home: new FormPage(),
    );
  }
}

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => new _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  final formKey = new GlobalKey<FormState>();

  String _email;
  String _password;
String _name;
String _mobile;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  void _submit() {
    final form = formKey.currentState;

    if (form.validate()) {
      form.save();

      performLogin();
    }
  }

  void performLogin() {
    final snackbar = new SnackBar(
      content: new Text("Name : $_name,Mobile : $_mobile,Email : $_email, password : $_password"),
      );
    scaffoldKey.currentState.showSnackBar(snackbar);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        key: scaffoldKey,

        body: new Padding(
          padding: const EdgeInsets.all(20.0),
          child: new Form(
            key: formKey,
            child: new Column(
              children: <Widget>[
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    new Container(
                      margin: new EdgeInsets.only(right: 10.0, top: 50.0),
                      height: 60.0,
                      width: 100.0,
                      decoration: new BoxDecoration(
                          borderRadius: new BorderRadius.circular(60.0),
                          color: Colors.deepOrangeAccent
                      ),
                      child: new Icon(
                        Icons.email,
                        color: Colors.white,
                      ),
                    ),


                  ],
                ),
                new SizedBox(
                  height: 70.0,
                ),
              new TextFormField(
                decoration: new InputDecoration(labelText: "Name"),
                keyboardType: TextInputType.text,
                 maxLength: 32,
                validator: validateName,
                onSaved: (String val) {
                  _name = val;
                },
              ),
                new TextFormField(
                  decoration: const InputDecoration(labelText: "Mobile"),
                  keyboardType: TextInputType.phone,
                  maxLength: 10,
                  validator: validateMobile,
                  onSaved: (String val) {
                    _mobile = val;
                  },
                ),
                new TextFormField(
                  decoration: new InputDecoration(labelText: "Email"),
                    keyboardType: TextInputType.emailAddress,
                    maxLength: 32,
                    validator: validateEmail,
                    onSaved: (String val) {
                      _email=val;
                    }),
                new TextFormField(
                  decoration: new InputDecoration(labelText: "Password"),
                  validator: (val) =>
                  val.length < 6 ? 'Password too small' : null,
                  onSaved: (val) => _password = val,
                  obscureText: true,
                ),
                new Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                ),
                new SizedBox(
                  height: 15.0,
                ),
                new RaisedButton(
                  child: new Text(
                    "Register",
                    style: new TextStyle(color: Colors.white),
                  ),
                  color: Colors.greenAccent,
                  onPressed: _submit,
                )
              ],
            ),
          ),
        ));
  }
  String validateName(String value) {
    String pattern = r'(^[a-zA-Z ]*$)';
    RegExp i= new RegExp(pattern);
    if (value.length == 0) {
      return "Name is a necessary field";
    }else if (!i.hasMatch(value)) {
      return "Names should contain lowercase/uppercase characters";
    }
    return null;
  }
  String validateMobile(String value) {
    String pattern = r'(^[0-9]*$)';
    RegExp i= new RegExp(pattern);
    if (value.length == 0) {
      return "Mobile Number should be provided";
    } else if(value.length != 10){
      return "Mobile number must contain 10 digits";
    }else if (!i.hasMatch(value)) {
      return "Number must have digits";
    }
    return null;
  }
  String validateEmail(String value) {
    String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp i= new RegExp(pattern);
    if (value.length == 0) {
      return "Email is Required";
    }else if (!i.hasMatch(value)) {
      return "Wrong email";
    }else {
      return null;
    }
  }
}
