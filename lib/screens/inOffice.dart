import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:letzcqre/components/PrimaryButton.dart';
import 'package:letzcqre/constants.dart';
import 'package:letzcqre/network/chopper_api.dart';
import 'package:letzcqre/screens/offices.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InOfficeScreen extends StatefulWidget {
  final int office_id;
  const InOfficeScreen({Key? key,required this.office_id}) : super(key: key);

  @override
  _InOfficeScreenState createState() => _InOfficeScreenState();
}

class _InOfficeScreenState extends State<InOfficeScreen> {
  String? token;

  getToken() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    token = localStorage.getString('access_token')?.replaceAll('"', '');
  }

  @override
  void initState() {
    getToken();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: IconButton(onPressed: (){
            OfficeOut();
          }, icon: const Icon(Icons.logout , color: primaryColor,)),
        ),
      ),
    );
  }

  void OfficeOut() async {
    var res = await Provider.of<Chopper_Api>(context,listen: false).getDisConnOffice('Bearer $token');
    print(res.bodyString);
    if (res.statusCode == 202){
      SharedPreferences local = await SharedPreferences.getInstance();
      local.remove('office_id');
      Fluttertoast.showToast(msg: 'Déconnecté du office',
      backgroundColor: primaryColor,
      toastLength: Toast.LENGTH_LONG);
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const OfficesScreen()));
    }
  }
}
