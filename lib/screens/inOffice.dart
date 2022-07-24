import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:letzcqre/components/loadingImage.dart';
import 'package:letzcqre/constants.dart';
import 'package:letzcqre/models/patient/built_patient.dart';
import 'package:letzcqre/network/api.dart';
import 'package:letzcqre/network/chopper_api.dart';
import 'package:letzcqre/screens/editpatient.dart';
import 'package:letzcqre/screens/offices.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InOfficeScreen extends StatefulWidget {
  final int office_id;

  const InOfficeScreen({Key? key, required this.office_id}) : super(key: key);

  @override
  _InOfficeScreenState createState() => _InOfficeScreenState();
}

class _InOfficeScreenState extends State<InOfficeScreen> {
  List<PatientModel>? patients;
  String? token;

  getToken() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    token = localStorage.getString('access_token')?.replaceAll('"', '');
  }

  getPatients() async {
    await getToken();
    var res = await Provider.of<Chopper_Api>(context, listen: false)
        .getPatients('Bearer $token');
    setState(() {
      patients = res.body!.patients!.toList();
    });
  }

  @override
  void initState() {
    getPatients();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: primaryColor,
        child: const Icon(
          Icons.person_add_alt,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'List des patients',
          style: primaryDarkText,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                OfficeOut();
              },
              icon: const Icon(
                Icons.logout,
                color: primaryColor,
              )),
        ],
      ),
      body: SafeArea(
        child: patients == null
            ? const Center(child: LoadingImage())
            : patients!.isEmpty
                ? NothingToShow()
                : showPatients(),
      ),
    );
  }

  void OfficeOut() async {
    var res = await Provider.of<Chopper_Api>(context, listen: false)
        .getDisConnOffice('Bearer $token');
    print(res.bodyString);
    if (res.statusCode == 202) {
      SharedPreferences local = await SharedPreferences.getInstance();
      local.remove('office_id');
      Fluttertoast.showToast(
          msg: 'Déconnecté du office',
          backgroundColor: primaryColor,
          toastLength: Toast.LENGTH_LONG);
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const OfficesScreen()));
    }
  }

  Widget buildPatient(BuildContext context, PatientModel patientModel) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Slidable(
        key: Key(patientModel.id.toString()),
        endActionPane: ActionPane(motion: DrawerMotion(), children: [
          SlidableAction(
            borderRadius: BorderRadius.circular(12),
            onPressed: (BuildContext context) async {
              deletePatient(context, patientModel.id);
            },
            padding: const EdgeInsets.symmetric(vertical: 5),
            icon: Icons.delete_outline_sharp,
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            label: "Supprimer",
          ),
          SlidableAction(
            borderRadius: BorderRadius.circular(12),
            onPressed: (context) async {
              editPatient(context, patientModel.id);
            },
            padding: const EdgeInsets.symmetric(vertical: 5),
            icon: Icons.edit,
            backgroundColor: primaryColor,
            foregroundColor: Colors.white,
            label: "Modifier",
          ),
        ]),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: whiteBoxGreyShadow,
          child: ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('assets/patient.png'),
              radius: 30,
            ),
            title: Text(
              patientModel.first_name + ' ' + patientModel.last_name,
              style: primaryDarkText,
            ),
          ),
        ),
      ),
    );
  }

  Widget NothingToShow() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/patient.png'),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Aucun patient trouvé',
            style: smallDarkBoldText,
          )
        ],
      ),
    );
  }

  Widget showPatients() {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          Flexible(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: patients!.length,
                  itemBuilder: (context, index) {
                    return buildPatient(context, patients![index]);
                  })),
        ],
      ),
    );
  }

  deletePatient(BuildContext context, int id) async {
    var res = await Network().deleteData('patients/$id');
    if (res.statusCode == 201) {
      Fluttertoast.showToast(
          msg: 'Patient supprimé', backgroundColor: primaryColor, fontSize: 17);
      await getPatients();
      setState(() {});
    }
  }

  void editPatient(BuildContext context, int id) async {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>EditPatient(patient_id: id)));
  }
}
