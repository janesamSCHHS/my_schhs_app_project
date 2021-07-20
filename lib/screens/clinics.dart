import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:schhs_my_app_v2a/screens/clinicsInfo.dart';

import 'home.dart';

class ClinicsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFc1c1b2),
          title: Text("Clinics and Day Services"),
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
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width,
                          decoration: BoxDecoration(color: Color(0xFFB6E4FC)),
                          child: Image(
                            image: AssetImage('assets/images/outpts.png'),
                            height: 150,
                            // fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,top: 5,right: 20,bottom: 20),
                    child: Center(
                      child: InkWell(
                        child: RichText(
                          text: TextSpan(
                            text:
                            'Ambulatory Care Centre or clinic appointment',
                            style: Theme
                                .of(context)
                                .textTheme
                                .headline5!
                                .copyWith(color: Colors.orangeAccent,
                                fontWeight: FontWeight.w600),
                            children: <TextSpan>[
                              TextSpan(
                                  text:
                                  '\nYour outpatient appointment is to see a specialist about your condition without being admitted into hospital. '
                                      'You may have an outpatient appointment before and/or after your admission to hospital ',
                                  style: Theme
                                      .of(context)
                                      .textTheme
                                      .bodyText1),
                              TextSpan(
                                text: '\n\nRequesting an appointment',
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(color: Colors.orangeAccent,
                                    fontWeight: FontWeight.w600),),
                              TextSpan(
                                text:
                                '\nTo get an outpatient appointment or clinic appointment, your doctor needs to send a referral to the hospital. '
                                    'The hospital will send you a letter either offering an appointment or advising that your name has been placed on a wait list. '
                                    '\nYour letter will tell you which clinic you are required to attend and how to prepare for your appointment. '
                                    'If your condition changes or you are concerned about your health before the date of your appointment, please contact your doctor.',
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .bodyText1,
                              ),
                              TextSpan(
                                text: '\n\nReferral Centre',
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(color: Colors.orangeAccent,
                                    fontWeight: FontWeight.w600),),
                              TextSpan(
                                text:
                                '\nYou can phone us to check in on your referral from your GP or specialist: 5202 0000.',
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .bodyText1,
                              ),
                              TextSpan(
                                text: '\n\nAt your appointment',
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(color: Colors.orangeAccent,
                                    fontWeight: FontWeight.w600),),
                              TextSpan(
                                text:
                                '\nWhen you arrive, register your attendance at the reception desk with your appointment letter. You will be directed to a seating area near your clinic for you to wait. While we always try to ensure that clinics run on time, due to unavoidable delays there may be a 1-2 hour wait to see a specialist.'
                                    '\nAt your first appointment your doctor will discuss your concerns and health care plan. You may require an examination or further tests. Your doctor will let you know if you require further appointments.',
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .bodyText1,
                              ),
                              TextSpan(
                                text: '\n\nMedication',
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(color: Colors.orangeAccent,
                                    fontWeight: FontWeight.w600),),
                              TextSpan(
                                text:
                                '\nPharmacies are located onsite at Sunshine Coast University Hospital, Nambour and Gympie Hospitals. You are welcome to use your own community pharmacy, however, some medications may not be on the Pharmaceutical Benefits '
                                    'Scheme and you may have to pay extra for these.',
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .bodyText1,
                              ),
                              TextSpan(
                                text: '\n\nWhat to bring with you',
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(color: Colors.orangeAccent,
                                    fontWeight: FontWeight.w600),),
                              TextSpan(
                                text: '\nEach time you visit us',
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(color: Colors.lightGreen,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),),
                              TextSpan(
                                text:
                                '\n   •	Your Medicare card'
                                    '\n   •	Private health insurance card (if you want to use it)'
                                    '\n   •	Health Care Card and/or concession card (if you have one)'
                                    '\n   •	Current medications \n       (prescription, over the counter and herbal medicine)'
                                    '\n   •	Relevant x-rays, scans or any other test results or reports'
                                    '\n   •	Glasses, hearing and mobility aids',
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .bodyText1,
                              ),
                              TextSpan(
                                text: '\nFor an outpatient or clinic appointment',
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(color: Colors.lightGreen,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),),
                              TextSpan(
                                text:
                                '\n   •	Your appointment letter'
                                    '\n   •	Any special items listed on your letter'
                                    '\n   •	WorkCover claim number (if relevant)'
                                    '\n   •	Snacks, a drink or money to buy refreshments'
                                    '\n   •	Something to read or do while you wait',
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .bodyText1,
                              ),


                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Divider( thickness: 2, color: Colors.lightGreen,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ButtonBar(
                     // mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ElevatedButton(
                          child: new Text('Telehealth'),
                          style: ElevatedButton.styleFrom(primary: Colors.lightGreen),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return ClinicsInfo();
                                }),
                              );
                            }
                        ),
                        //SizedBox(width: 20),
                        ElevatedButton(
                          child: new Text('Choosing\nWisely'),
                            style: ElevatedButton.styleFrom(primary: Colors.lightGreen),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return ClinicsInfo();
                                }),
                              );
                            }

                        ),
                        //SizedBox(width: 20),
                        ElevatedButton(
                          child: new Text('Nurse\nNavigators'),
                          style: ElevatedButton.styleFrom(primary: Colors.lightGreen),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return ClinicsInfo();
                                }),
                              );
                            }
                        ),
                      ],
                    ),
                  ],

                ),
                SizedBox(height: 20,)
              ],
            ),
          ),
        ));
  }

}
