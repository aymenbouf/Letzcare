import 'dart:convert';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:letzcqre/network/chopper_api.dart';
import 'package:letzcqre/screens/inOffice.dart';
import 'package:letzcqre/screens/offices.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'firebase_options.dart';
import 'screens/login.dart';

Future<void> backgroundHandler(RemoteMessage message) async {
  print(message.data.toString());
  print(message.notification!.title);
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  FirebaseMessaging.onBackgroundMessage(backgroundHandler);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (
        _,
      ) =>
          Chopper_Api.create(),
      dispose: (_, Chopper_Api service) => service.client.dispose(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: CheckAuth(),
      ),
    );
  }
}

class CheckAuth extends StatefulWidget {
  @override
  _CheckAuthState createState() => _CheckAuthState();
}

class _CheckAuthState extends State<CheckAuth> {
  bool? isAuth;
  String? token;
  bool inOffice = false;
  int? office_id;
  Widget? landingScreen;

  @override
  void initState() {
    _getLandingScreen();
    super.initState();
  }

  getSignedinUser() async {
    if (isAuth!) {
      SharedPreferences storage = await SharedPreferences.getInstance();
      var res = await Provider.of<Chopper_Api>(context, listen: false)
          .getMe('Bearer $token');
      if (res.statusCode == 401) {
        storage.remove('access_token');
        storage.remove('user');
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const LoginScreen()));
      }
    }
  }

  getData() async {
    await _checkIfInOffice();
    await getSignedinUser();
  }

  _checkIfLoggedIn() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    token = localStorage.getString('access_token');
    if (token != null) {
      setState(() {
        isAuth = true;
      });
    }else{
      setState(() {
        isAuth = false;
      });

    }
  }

  _checkIfInOffice() async {
    await _checkIfLoggedIn();
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    office_id = localStorage.getInt('office_id');
    if (office_id != null) {
      setState(() {
        inOffice = true;
      });
    }
  }

  _getLandingScreen() async {
    await getData();
    if (isAuth!) {
      if (inOffice) {
        setState(() {
          landingScreen = const InOfficeScreen();
        });

      } else {
        setState(() {
          landingScreen = const OfficesScreen();
        });

      }
    } else {
      setState(() {
        landingScreen = const LoginScreen();
      });

    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: landingScreen ?? Container(),
    );
  }
}
