// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:uts_flutter_project/profil.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String textEmail = "";

  String textPassword = "";

  void login() {
    if (textEmail == "" && textPassword == "") {
      Fluttertoast.showToast(
        msg: "password and email can't be empty",
        toastLength: Toast.LENGTH_SHORT,
      );
    } else if (textEmail == "rifqi153syah@gmail.com" &&
        textPassword == "akuganteng") {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("Login Success"),
              content: Text("Welcome Rifqi Nur Fauzi Ardiansyah"),
              actions: <Widget>[
                TextButton(
                  child: Text("OK"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Profil(),
                      ),
                    );
                  },
                ),
              ],
            );
          });
      // Route route = MaterialPageRoute(builder: (context) => ProfilePage());
      // Navigator.push(context, route);
    } else {
      Fluttertoast.showToast(
        msg: "email or password is wrong",
        toastLength: Toast.LENGTH_SHORT,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'images/tedc2.png',
                height: 120,
                width: 120,
              ),
              _header(context),
              _inputField(context),
              _forgotPassword(context),
              _signup(context),
            ],
          ),
        ),
      ),
    );
  }

  _header(context) {
    return Column(
      children: [
        const Text(
          "TEDC Mobile Apps",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        const Text("Enter your Mobile Apps to login"),
      ],
    );
  }

  _inputField(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          onChanged: (e) => textEmail = e,
          decoration: InputDecoration(
            hintText: "Masukkan Email",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
            prefixIcon: Icon(Icons.email),
          ),
        ),
        SizedBox(height: 10),
        TextField(
          onChanged: (e) => textPassword = e,
          decoration: InputDecoration(
            hintText: "Password",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
            prefixIcon: Icon(Icons.key),
          ),
          obscureText: true,
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            login();
          },
          child: Text(
            "Login",
            style: TextStyle(fontSize: 20),
          ),
          style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
            padding: EdgeInsets.symmetric(vertical: 16),
          ),
        )
      ],
    );
  }

  _forgotPassword(context) {
    return TextButton(onPressed: () {}, child: Text("Forgot Password?"));
  }

  _signup(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't have an account?"),
        TextButton(onPressed: () {}, child: Text("Sign Up"))
      ],
    );
  }
}
