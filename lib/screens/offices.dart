import 'package:built_value/async_serializer.dart';
import 'package:flutter/material.dart';
import 'package:letzcqre/models/office/built_my_offices.dart';
import 'package:letzcqre/models/office/built_office.dart';
import 'package:letzcqre/models/profile/built_user.dart';
import 'package:letzcqre/network/chopper_api.dart';
import 'package:provider/provider.dart';
import 'package:built_collection/built_collection.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OfficesScreen extends StatefulWidget {
  const OfficesScreen({Key? key}) : super(key: key);

  @override
  _OfficesScreenState createState() => _OfficesScreenState();
}

class _OfficesScreenState extends State<OfficesScreen> {
  String? token;
  List<OfficeModel>? myoffices;
  var user;
  getToken() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    token = localStorage.getString('access_token')?.replaceAll('"', '');
    user = localStorage.getString('user');
    print(token);
  }

  @override
  void initState() {
    getOffices();
    super.initState();
  }

  void getOffices() async {
    await getToken();
    var res = await Provider.of<Chopper_Api>(context, listen: false)
        .getMyOffices('Bearer $token');
    setState(() {
      myoffices = res.body!.data!.toList();
    });
    print(myoffices);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Flexible(
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: myoffices!.length,
                  itemBuilder: (context, index) {
                    return buildoffice(context, myoffices![index]);
                  }))),
    );
  }

  Widget buildoffice(BuildContext context, OfficeModel office) {
    return GestureDetector(
      onTap: () async {},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 210, 0, 251).withOpacity(.2),
            borderRadius: BorderRadius.circular(20)),
        child: ListTile(
          title: Text(
            office.name,
          ),
        ),
      ),
    );
  }
}
