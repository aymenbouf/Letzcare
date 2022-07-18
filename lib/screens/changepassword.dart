import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:letzcqre/components/PrimaryButton.dart';
import 'package:letzcqre/constants.dart';
import 'package:letzcqre/screens/offices.dart';

import '../network/api.dart';
class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  String? token;
  bool loading = false;
  final key = GlobalKey<FormState>();
  String? current, newpass, confirmation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Modifier votre mot de passe',
          style: primaryDarkText,
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: primaryColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Form(
              key: key,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset('assets/password.png'),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      cursorColor: primaryColor,
                      obscureText: true,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Veuillez remplir le champs';
                        } else {
                          current = value;
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          hintText: 'Ancien mot de passe',
                          hintStyle: primaryGreyText,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(color: primaryColor))),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      obscureText: true,
                      cursorColor: primaryColor,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Veuillez remplir le champs';
                        } else {
                          newpass = value;
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          hintText: 'Nouveau mot de passe',
                          hintStyle: primaryGreyText,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(color: primaryColor))),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      cursorColor: primaryColor,
                      obscureText: true,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Veuillez remplir le champs';
                        } else {
                          if (value != newpass) {
                            return 'La confirmation du mot de passe ne correspond pas';
                          } else {
                            confirmation = value;
                            return null;
                          }
                        }
                      },
                      decoration: InputDecoration(
                          hintText: 'Confirmation',
                          hintStyle: primaryGreyText,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(color: primaryColor))),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: PrimaryButton(onTap: editPassword,text: "Sauvegarder",loading: loading,)),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void editPassword() async {
    if (key.currentState!.validate()) {
      setState(() {
        loading = true;
      });
      var data = jsonEncode({
        'current_password': current,
        'password': newpass,
        'password_confirmation': confirmation
      });
      var res = await Network().putData(data, 'profile/password');
      var body = jsonDecode(res.body);
      if (res.statusCode == 202) {
        setState(() {
          loading = false;
        });
        Fluttertoast.showToast(msg: 'Mot de passe mis à jour', backgroundColor: primaryColor);
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => const OfficesScreen()));
      } else {
        setState(() {
          loading = false;
        });
        Fluttertoast.showToast(msg : body['message'], backgroundColor: Colors.red);
      }
    }
  }
}
