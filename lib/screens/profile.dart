import 'package:flutter/material.dart';
import 'package:letzcqre/constants.dart';
import 'package:letzcqre/network/chopper_api.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/profile/built_user.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String? token;
  UserModel? user;

  getToken() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    token = localStorage.getString('access_token')?.replaceAll('"', '');
  }

  getSignedInUser() async {
    await getToken();
    var res = await Provider.of<Chopper_Api>(context, listen: false)
        .getMe('Bearer $token');
    if (res.statusCode == 200) {
      setState(() {
        user = res.body!.staff;
      });
    }
  }

  @override
  void initState() {
    getSignedInUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text('Profile', style: primaryDarkText),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: user == null
            ? Center(
                child: Image.asset(
                  'assets/loading.gif',
                  color: primaryColor,
                ),
              )
            : Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                  children: [
                    CircleAvatar()
                  ],
                ),
            ),
      ),
    );
  }
}
