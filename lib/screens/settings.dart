import 'package:flutter/material.dart';
import 'package:letzcqre/screens/changepassword.dart';

import '../constants.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: primaryColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        centerTitle: true,
        title: Text('Paramètres', style: primaryDarkText),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Container(
                decoration: whiteBoxGreyShadow,
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ChangePassword()));
                  },
                  leading: const Icon(
                    Icons.password_outlined,
                    color: primaryColor,
                  ),
                  title: Text(
                    "Changer votre mot de passe",
                    style: primaryDarkText,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
