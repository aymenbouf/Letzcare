import 'dart:convert';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:letzcqre/network/chopper_api.dart';
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
  bool isAuth = false;
  bool? isTutor;
  String? token;

  @override
  void initState() {
    getData();
    super.initState();
  }

  getSignedinUser() async {
    if (isAuth) {
      SharedPreferences storage = await SharedPreferences.getInstance();
      var res = await Provider.of<Chopper_Api>(context, listen: false)
          .getMe('Bearer $token');
      if (res.statusCode == 401) {
        storage.remove('access_token');
        storage.remove('user');
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const LoginScreen()));
      } else {
        var user = jsonDecode(storage.getString('user')!);
        if (user['type'] == 2) {
          setState(() {
            isTutor = true;
          });
        } else {
          setState(() {
            isTutor = false;
          });
        }
      }
    }
  }

  getData() async {
    await _checkIfLoggedIn();
    await getSignedinUser();
  }

  _checkIfLoggedIn() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    token = localStorage.getString('access_token');
    if (token != null) {
      setState(() {
        isAuth = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget child;

    if (isAuth) {
      child = const OfficesScreen();
    } else {
      child = const LoginScreen();
    }
    return Scaffold(
      body: child,
    );
  }
}

