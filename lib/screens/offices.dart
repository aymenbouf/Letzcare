import 'package:built_value/async_serializer.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:letzcqre/components/PrimaryButton.dart';
import 'package:letzcqre/constants.dart';
import 'package:letzcqre/models/office/built_my_offices.dart';
import 'package:letzcqre/models/office/built_office.dart';
import 'package:letzcqre/models/profile/built_user.dart';
import 'package:letzcqre/network/chopper_api.dart';
import 'package:letzcqre/screens/inOffice.dart';
import 'package:provider/provider.dart';
import 'package:built_collection/built_collection.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login.dart';

class OfficesScreen extends StatefulWidget {
  const OfficesScreen({Key? key}) : super(key: key);

  @override
  _OfficesScreenState createState() => _OfficesScreenState();
}

class _OfficesScreenState extends State<OfficesScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  String? token;
  List<OfficeModel>? myoffices;
  var user;
  bool loading = false;

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
      key: _scaffoldKey,
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.deepPurpleAccent,
                ),
                title: Text(
                  "Se deconnecter",
                  style: primaryDarkText,
                ),
                onTap: () {
                  logout();
                },
              )
            ],
          ),
        ),
      ),
      body: SafeArea(
          child: myoffices == null
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
                      _contentHeader(),
                      const SizedBox(
                        height: 30,
                      ),
                      Flexible(
                          child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: myoffices!.length,
                              itemBuilder: (context, index) {
                                return buildoffice(context, myoffices![index]);
                              })),
                    ],
                  ),
                )),
    );
  }

  Widget _contentHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            /*  Image.asset(
              'assets/images/logo.png',
              width: 34,
            ),*/
            const SizedBox(
              width: 12,
            ),
            Text(
              'LetzCare',
              style: primaryDarkText,
            )
          ],
        ),
        InkWell(
          onTap: () {
            _scaffoldKey.currentState!.openDrawer();
          },
          child: SvgPicture.asset(
            'assets/menu.svg',
            width: 16,
            color: primaryColor,
          ),
        ),
      ],
    );
  }

  Widget buildoffice(BuildContext context, OfficeModel office) {
    return GestureDetector(
      onTap: () async {},
      child: Container(
          padding: const EdgeInsets.all(10),
          decoration: whiteBoxGreyShadow,
          child: ExpandablePanel(
              header: ListTile(
                leading: const CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/hospital.png'),
                ),
                title: Text(office.name,style: smallDarkBoldText,),
                subtitle: Text(office.address),
              ),
              collapsed: Column(
                children: [
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text('Type : ',style: smallDarkBoldText,),
                      Text(office.type)
                    ],
                  )
                ],
              ),
              expanded: Column(
                children: [
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text('Type : ',style: smallDarkBoldText,),
                      Text(office.type)
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text('Manager : ',style: smallDarkBoldText,),
                      Text(office.manager_first_name + ' ' + office.manager_last_name)
                    ],
                  ),
                  const SizedBox(height: 10),
                PrimaryButton(onTap: () => connectToOffice(office.id), loading: loading, text: 'Connecter')
                ],
              ))),
    );
  }

  void connectToOffice(int id) async {
    setState(() {
      loading = true;
    });
    var res = await Provider.of<Chopper_Api>(context,listen: false).getConnOffice(id, 'Bearer $token');
    print(res.bodyString);
    if (res.statusCode == 202){
      SharedPreferences local = await SharedPreferences.getInstance();
      local.setInt('office_id', id);
      setState(() {
        loading = false;
      });
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> InOfficeScreen(office_id: id)));
    }else{
      Fluttertoast.showToast(
          msg: 'Vous n\'avez pas access',
          backgroundColor: primaryColor);
      setState(() {
        loading = false;
      });
    }
  }

  void logout() async {
    var res = await Provider.of<Chopper_Api>(context, listen: false)
        .logout('Bearer $token');
    print(res.bodyString);
    if (res.statusCode == 200) {
      SharedPreferences storage = await SharedPreferences.getInstance();
      storage.remove('access_token');
      storage.remove('user');
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const LoginScreen()));
    }
  }
}
