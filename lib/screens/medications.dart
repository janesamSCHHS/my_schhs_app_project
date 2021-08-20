import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:schhs_my_app_v2a/screens/home.dart';

class MedicationsPage extends StatefulWidget {
  @override
  _MedicationsPageState createState() => _MedicationsPageState();
}

class ItemModel {
  bool expanded;
  String headerItem;
  String subHeader;
  String description;
  Color colorsItem;
  // String img;

  ItemModel({
    this.expanded: false,
    required this.headerItem,
    required this.subHeader,
    required this.description,
    required this.colorsItem,
    //  required this.img
  });
}

class _MedicationsPageState extends State<MedicationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewGradientAppBar(
        gradient: LinearGradient(
            colors: [Colors.lightGreen, Colors.green, Colors.teal]),
        title: Text("Medication Safety"),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: IconButton(
                icon: Icon(
                  Icons.home_sharp,
                  size: 26.0,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return HomePage();
                    }),
                  );
                }),
          ),
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
          Expanded(
            child: ListView.builder(
              itemCount: itemData.length,
              itemBuilder: (BuildContext context, int index) {
                return ExpansionPanelList(
                  animationDuration: Duration(milliseconds: 1000),
                  dividerColor: Colors.green,
                  elevation: 1,
                  children: [
                    ExpansionPanel(
                      body: Container(
                        padding: EdgeInsets.only(
                            left: 10, top: 3, right: 20, bottom: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              itemData[index].description,
                              style: TextStyle(
                                  color: Colors.grey[800],
                                  fontSize: 12,
                                  letterSpacing: 0.3,
                                  height: 1.3),
                            ),
                          ],
                        ),
                      ),
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return Container(
                          padding: EdgeInsets.only(
                              left: 10, top: 5, right: 10, bottom: 1),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                itemData[index].headerItem,
                                style: TextStyle(
                                    letterSpacing: 0.4,
                                    color: itemData[index].colorsItem,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                itemData[index].subHeader,
                                style: TextStyle(
                                    color: Colors.teal,
                                    //itemData[index].colorsItem,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        );
                      },
                      isExpanded: itemData[index].expanded,
                    )
                  ],
                  expansionCallback: (int item, bool status) {
                    setState(() {
                      itemData[index].expanded = !itemData[index].expanded;
                    });
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  List<ItemModel> itemData = <ItemModel>[
    ItemModel(
        headerItem: 'Problems or side effects?',
        subHeader: 'SEEK SUPPORT!',
        description:
            "You should always seek healthcare or advice from a health professional such as your doctor or pharmacist.\nYou can also report your adverse event to the Australian Therapeutic Goods Administration by visiting www.tga.gov.au/reporting-problems.\n\nREMEMBER to include the details of any medication allergies or reactions on your Medicines list.",
        colorsItem: Colors.green),
    ItemModel(
      headerItem: 'Leaving Hospital',
      subHeader: 'Leave with an up to date medicines list',
      description:
          "Make sure you are aware of any medicine changes and why they have occurred.\nMake sure you are confident knowing how to take your medicines, when and what the important side effects to look out for are.\nIf you are worried or have questions about your medicines, please ask.\nCheck the active ingredients of all your medicines to avoid doubling up. Ask your health professional if you’re unsure\nTake your up to date Medicines List and discharge information to your regular doctor and pharmacy so that they can update their records with any changes",
      colorsItem: Colors.green,
      // img: 'assets/images/android_img.png'
    ),
    ItemModel(
      headerItem: 'In Hospital',
      subHeader: 'Please ask if you have concerns',
      description:
          "Take your Medicines List and medications with you and show them to your doctor, nurse or pharmacist.\nFor your safety you may be asked questions about your medicines so answer them honestly.\nIf you are worried or have questions about your medicines, please ask.",
      colorsItem: Colors.green,
      //img: ''
    ),
    ItemModel(
      headerItem: 'At Home',
      subHeader: 'Keep an up to date medicines list!',
      description:
          "Take your Medicines List every time you visit your health professional. If any changes are made, make sure to update your list!\nKeep out of reach of children and pets.\nReturn expired or old medications.\nCheck and follow each medication’s storage conditions.\nFollow each of the instructions on your medicine labels. Ask your doctor or pharmacist if you have any questions",
      colorsItem: Colors.green,
      // img: ''
    ),
    ItemModel(
      headerItem: 'Did you know?',
      subHeader: 'Always ask!',
      description:
          "It is dangerous to take other people's medicines as they may not be suitable for you.\nYou can ask your local pharmacy to package your medicines into daily blister packs for you.\nPayment will often be required for medications supplied from the hospital pharmacy on discharge, or after an outpatient appointment. Some concessions may apply - if unsure please ask",
      colorsItem: Colors.green,
      //img: ''
    ),
  ];
}
