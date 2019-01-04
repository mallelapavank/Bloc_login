import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return LoginScreenState();
    }
}

class LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  Widget build(context){
    return Container(
      margin: EdgeInsets.all(16.0),
      child: Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            emailField(),
            passwordField(),
            Container(margin: EdgeInsets.only(top:16)),
            submitButton()
            
          ],
        ),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Email Address',
        hintText:  'you@example.com',
      )
    );
  }

  Widget passwordField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Password',
        hintText:  'password',
      )
    );
  }

  Widget submitButton() {
    return RaisedButton(
      color: Colors.blue,
      child: Text('Submit'),
      onPressed: (){
        formKey.currentState.reset();
      },
    );
  }
}