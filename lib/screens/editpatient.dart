import 'dart:convert';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:letzcqre/components/loadingImage.dart';
import 'package:letzcqre/models/patient/built_patient.dart';
import 'package:letzcqre/network/chopper_api.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants.dart';

class EditPatient extends StatefulWidget {
  final int patient_id;

  const EditPatient({Key? key, required this.patient_id}) : super(key: key);

  @override
  _EditPatientState createState() => _EditPatientState();
}

class _EditPatientState extends State<EditPatient> {
  String? token;
  List<dynamic>? languages;
  PatientModel? patient;
  final _formKey = GlobalKey<FormState>();

  String? last_name,
      first_name,
      email,
      religion,
      phone,
      personal_number,
      marital_status,
      profession,
      biography;

  getToken() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    token = localStorage.getString('access_token')?.replaceAll('"', '');
  }
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/languages.json');
    final data = await json.decode(response);
    setState(() {
      languages = data['languages'];
    });
    // ...
  }

  getPatient() async {
    await readJson();
    await getToken();
    var res = await Provider.of<Chopper_Api>(context, listen: false)
        .getPatient(widget.patient_id, 'Bearer $token');
    setState(() {
      patient = res.body!.patient!;
    });
  }

  @override
  void initState() {
    getPatient();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Détails du patient',
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
      body: patient == null || languages == null
          ? const Center(
              child: LoadingImage(),
            )
          : SingleChildScrollView(
              child: Form(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      TextFormField(
                        cursorColor: primaryColor,
                        initialValue: patient!.last_name,
                        validator: (lastname) {
                          if (lastname!.isEmpty) {
                            return 'Champs vide';
                          } else {
                            last_name = lastname;
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                            labelText: 'Nom',
                            hintText: 'Nom',
                            labelStyle: TextStyle(color: primaryColor),
                            hintStyle: TextStyle(color: Colors.grey),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: primaryColor))),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        cursorColor: primaryColor,
                        initialValue: patient!.first_name,
                        validator: (firstname) {
                          if (firstname!.isEmpty) {
                            return 'Champs vide';
                          } else {
                            first_name = firstname;
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                            labelText: 'Prénom',
                            hintText: 'Prénom',
                            labelStyle: TextStyle(color: primaryColor),
                            hintStyle: TextStyle(color: Colors.grey),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: primaryColor))),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        cursorColor: primaryColor,
                        initialValue: patient!.email,
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
                        decoration: const InputDecoration(
                            labelText: 'Email',
                            hintText: 'Email',
                            labelStyle: TextStyle(color: primaryColor),
                            hintStyle: TextStyle(color: Colors.grey),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: primaryColor))),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        cursorColor: primaryColor,
                        initialValue: patient!.religion,
                        validator: (religionValue) {
                          if (religionValue!.isEmpty) {
                            return 'Champs vide';
                          }
                          religion = religionValue;
                          return null;
                        },
                        decoration: const InputDecoration(
                          labelText: 'Religion',
                          hintText: 'Religion',
                          labelStyle: TextStyle(color: primaryColor),
                          hintStyle: TextStyle(color: Colors.grey),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: primaryColor)),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        cursorColor: primaryColor,
                        initialValue: patient!.marital_status,
                        validator: (maritalValue) {
                          if (maritalValue!.isEmpty) {
                            return 'Champs vide';
                          }
                          marital_status = maritalValue;
                          return null;
                        },
                        decoration: const InputDecoration(
                          labelText: 'État Civil',
                          hintText: 'État Civil',
                          labelStyle: TextStyle(color: primaryColor),
                          hintStyle: TextStyle(color: Colors.grey),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: primaryColor)),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        cursorColor: primaryColor,
                        initialValue: patient!.phone,
                        validator: (phoneValue) {
                          if (phoneValue!.isEmpty) {
                            return 'Champs vide';
                          }
                          phone = phoneValue;
                          return null;
                        },
                        decoration: const InputDecoration(
                            labelText: 'Mobile',
                            hintText: 'Mobile',
                            labelStyle: TextStyle(color: primaryColor),
                            hintStyle: TextStyle(color: Colors.grey),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: primaryColor))),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        cursorColor: primaryColor,
                        initialValue: patient!.personal_number,
                        validator: (numberValue) {
                          if (numberValue!.isEmpty) {
                            return 'Champs vide';
                          }
                          personal_number = numberValue;
                          return null;
                        },
                        decoration: const InputDecoration(
                            labelText: 'Personal Number',
                            hintText: 'Personal Number',
                            labelStyle: TextStyle(color: primaryColor),
                            hintStyle: TextStyle(color: Colors.grey),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: primaryColor))),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      DropdownButtonFormField<String>(
                        isExpanded: true,
                        decoration: const InputDecoration(
                          labelStyle: TextStyle(color: primaryColor),
                          label: Text('Gender'),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: primaryColor)),
                        ),
                        value: patient!.gender,
                        hint: Text("Gender"),
                        items: <String>['male', 'female'].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (_) {},
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      DropdownButtonFormField<String>(
                        isExpanded: true,
                        decoration: const InputDecoration(
                          labelStyle: TextStyle(color: primaryColor),
                          label: Text('Langue principale'),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: primaryColor)),
                        ),
                        value: patient!.main_lang,
                        hint: Text("Langue"),
                        items: languages!.map((value) {
                          return DropdownMenuItem<String>(
                            value: value['code'],
                            child: Text(value['code']),
                          );
                        }).toList(),
                        onChanged: (_) {},
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        cursorColor: primaryColor,
                        initialValue: patient!.profession,
                        validator: (Value) {
                          if (Value!.isEmpty) {
                            return 'Champs vide';
                          }
                          profession = Value;
                          return null;
                        },
                        decoration: const InputDecoration(
                          labelText: 'Proffesion',
                          hintText: 'Proffesion',
                          labelStyle: TextStyle(color: primaryColor),
                          hintStyle: TextStyle(color: Colors.grey),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: primaryColor)),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        minLines: 2,
                        maxLines: 5,
                        keyboardType: TextInputType.text,
                        cursorColor: primaryColor,
                        initialValue: patient!.biography,
                        validator: (Value) {
                          if (Value!.isEmpty) {
                            return 'Champs vide';
                          }
                          biography = Value;
                          return null;
                        },
                        decoration: const InputDecoration(
                          labelText: 'Biographie',
                          hintText: 'Biographie',
                          labelStyle: TextStyle(color: primaryColor),
                          hintStyle: TextStyle(color: Colors.grey),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: primaryColor)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}
