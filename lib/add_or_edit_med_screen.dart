import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

import 'med.dart';
import 'med_list_screen.dart';

// ignore: must_be_immutable
class AddOrEditMedicationScreen extends StatefulWidget {
  bool isEdit;
  int? position;
  Medication? medicationModel;

  AddOrEditMedicationScreen(this.isEdit, [this.position, this.medicationModel]);

  @override
  State<StatefulWidget> createState() {
    return AddEditMedicationState();
  }
}

class AddEditMedicationState extends State<AddOrEditMedicationScreen> {
  TextEditingController controllerName = new TextEditingController();
  TextEditingController controllerStrength = new TextEditingController();
  TextEditingController controllerDose = new TextEditingController();
  TextEditingController controllerSpecInstructions =
      new TextEditingController();
  TextEditingController controllerDateStarted = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    if (widget.isEdit) {
      controllerName.text = widget.medicationModel!.medName;
      controllerStrength.text = widget.medicationModel!.medStrength.toString();
      controllerSpecInstructions.text =
          widget.medicationModel!.specInstructions.toString();
      controllerDateStarted.text =
          widget.medicationModel!.dateStarted.toString();
    }

    return SafeArea(
      child: Scaffold(
          appBar: NewGradientAppBar(
              gradient: LinearGradient(
                  colors: [Colors.lightGreen, Colors.green, Colors.teal]),
              title: Text("Medications input")),
          body: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.all(25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Medication name:",
                          style:
                              TextStyle(fontSize: 13, color: Colors.black87)),
                      SizedBox(width: 20),
                      Expanded(
                        child: TextField(controller: controllerName),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          child: Text("Medication strength:",
                              style: TextStyle(
                                  fontSize: 13, color: Colors.black87))),
                      SizedBox(width: 20),
                      Expanded(
                        child: TextField(
                            controller: controllerStrength,
                            keyboardType: TextInputType.text),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text("Dosage:",
                          style:
                              TextStyle(fontSize: 13, color: Colors.black87)),
                      SizedBox(width: 20),
                      Expanded(
                        child: TextField(
                            controller: controllerDose,
                            keyboardType: TextInputType.text),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text("Instructions:",
                          style:
                              TextStyle(fontSize: 13, color: Colors.black87)),
                      SizedBox(width: 20),
                      Expanded(
                        child:
                            TextField(controller: controllerSpecInstructions),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text("Date started:",
                          style:
                              TextStyle(fontSize: 13, color: Colors.black87)),
                      SizedBox(width: 20),
                      Expanded(
                        child: TextField(
                            controller: controllerDateStarted,
                            keyboardType: TextInputType.text),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    // color: Colors.grey,
                    child: Text("Add/update medication",
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightGreen,
                    ),
                    onPressed: () async {
                      var getMedName = controllerName.text;
                      var getMedStrength = controllerStrength.text;
                      var getMedDose = controllerDose.text;
                      var getSpecInstructions = controllerSpecInstructions.text;
                      var getDateStarted = controllerDateStarted.text;
                      if (getMedName.isNotEmpty &&
                          getMedStrength.isNotEmpty &&
                          getMedDose.isNotEmpty &&
                          getSpecInstructions.isNotEmpty &&
                          getDateStarted.isNotEmpty) {
                        if (widget.isEdit) {
                          Medication updateMedication = new Medication(
                              medName: getMedName,
                              medStrength: getMedStrength,
                              medDose: getMedDose,
                              specInstructions: getSpecInstructions,
                              dateStarted: getDateStarted);
                          var box =
                              await Hive.openBox<Medication>('medication');
                          box.putAt(widget.position!, updateMedication);
                        } else {
                          Medication addMedication = new Medication(
                              medName: getMedName,
                              medStrength: getMedStrength,
                              medDose: getMedDose,
                              specInstructions: getSpecInstructions,
                              dateStarted: getDateStarted);
                          var box =
                              await Hive.openBox<Medication>('medication');
                          box.add(addMedication);
                        }
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (_) => MedicationsListScreen()),
                            (r) => false);
                      }
                    },
                  )
                ],
              ),
            ),
          )),
    );
  }
}
