import 'dart:convert';

import 'package:email_validator/email_validator.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:letzcqre/components/PrimaryButton.dart';
import 'package:letzcqre/models/auth/built_login.dart';
import 'package:letzcqre/network/chopper_api.dart';
import 'package:letzcqre/screens/offices.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? email, password, fcm_token;
  bool loading = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Image.asset('assets/doctor.png')),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(.3),
                            offset: const Offset(0, 0),
                            blurRadius: 6)
                      ]),
                  child: TextFormField(
                    validator: (emailValue) {
                      if (emailValue!.isEmpty) {
                        return 'Veuillez saisir votre email';
                      }
                      if (!EmailValidator.validate(emailValue, true)) {
                        return 'Adresse email invalide';
                      }
                      email = emailValue;
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      hintText: 'Email',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(.3),
                            offset: const Offset(0, 0),
                            blurRadius: 6)
                      ]),
                  child: TextFormField(
                    validator: (passwordValue) {
                      if (passwordValue!.isEmpty) {
                        return 'Veuillez saisir votre mot de passe';
                      }
                      password = passwordValue;
                      return null;
                    },
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      hintText: 'Mot de passe',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                PrimaryButton(onTap: _login ,loading: loading,text: 'Login',)
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _login() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        loading = true;
      });
      fcm_token = await FirebaseMessaging.instance.getToken();
      final authbody = AuthModel(
            (b) =>
        b
          ..email = email
          ..password = password
          ..fcm_token = fcm_token,
      );
      var res = await Provider.of<Chopper_Api>(context, listen: false)
          .login(authbody);
      if (res.statusCode == 200) {
        SharedPreferences localStorage = await SharedPreferences.getInstance();
        localStorage.setString('access_token', res.body!.access_token);
        var user = jsonDecode(res.bodyString)['user'];
        localStorage.setString(
            'user', json.encode(jsonDecode(res.bodyString)['user']));
        setState(() {
          loading = false;
        });
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const OfficesScreen()));
      } else {
        if (res.statusCode == 404) {
          setState(() {
            loading = false;
          });
          Fluttertoast.showToast(
            msg: "Mot de passe ou email incorrecte",
            backgroundColor: Colors.redAccent,
            toastLength: Toast.LENGTH_LONG,
            fontSize: 18,);
        }
      }
    }
  }

}


