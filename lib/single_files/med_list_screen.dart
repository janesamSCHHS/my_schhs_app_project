import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:schhs_app2021/screens/home.dart';
import 'package:schhs_app2021/screens/medications.dart';

import 'add_or_edit_med_screen.dart';
import 'med.dart';

class MedicationsListScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MedicationsListState();
  }
}

class MedicationsListState extends State<MedicationsListScreen> {
  List<Medication> listMedications = [];

  void getMedications() async {
    final box = await Hive.openBox<Medication>('medication');
    setState(() {
      listMedications = box.values.toList();
    });
  }

  @override
  void initState() {
    getMedications();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: NewGradientAppBar(
          gradient: LinearGradient(
              colors: [Colors.lightGreen, Colors.green, Colors.teal]),
          title: Text('My medications',
              style: Theme.of(context).textTheme.headline3),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.add,
                size: 24,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => AddOrEditMedicationScreen(false)));
              },
            ),
            IconButton(
              icon: Icon(
                Icons.info_rounded,
                size: 24,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return MedicationsPage();
                  }),
                );
              },
            ),
            IconButton(
                icon: Icon(
                  Icons.home_sharp,
                  size: 24.0,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return HomePage();
                    }),
                  );
                }),
          ],
        ),
        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Image(
                image: AssetImage('assets/images/medications.png'),
                height: 160,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: Center(
                  child: Text(
                    "??? Please add your medications here using  '+'  icon\n??? For further information click  ' i '  above",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: listMedications.length,
                itemBuilder: (context, position) {
                  Medication getMedication = listMedications[position];
                  var strength = getMedication.medStrength;
                  var dose = getMedication.medDose;
                  var specInstructions = getMedication.specInstructions;
                  var dateStarted = getMedication.dateStarted;
                  return Card(
                    // color: Colors.lightBlueAccent,
                    elevation: 8,
                    child: Container(
                      height: 135,
                      padding: EdgeInsets.only(
                        left: 15,
                        top: 10,
                        right: 15,
                        bottom: 15,
                      ),
                      child: Stack(
                        children: <Widget>[
                          Align(
                              alignment: Alignment.topLeft,
                              child: Text(getMedication.medName,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black87))),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              margin: EdgeInsets.only(right: 25),
                              child: IconButton(
                                  icon: Icon(
                                    Icons.edit,
                                    size: 20.0,
                                    color: Colors.lightGreen,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) =>
                                                AddOrEditMedicationScreen(true,
                                                    position, getMedication)));
                                  }),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: IconButton(
                                icon: Icon(Icons.delete,
                                    size: 20.0, color: Colors.red),
                                onPressed: () {
                                  final box =
                                      Hive.box<Medication>('medication');
                                  box.deleteAt(position);
                                  setState(() =>
                                      {listMedications.removeAt(position)});
                                }),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                                "Dose: $dose    |   Strength: $strength ",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black87)),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              'Date started: $dateStarted \nInstructions: $specInstructions',
                              style: TextStyle(
                                  fontSize: 14, color: Colors.black87),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
