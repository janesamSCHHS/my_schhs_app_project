import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'home.dart';

class ClinicsInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFc1c1b2),
          title: Text("Services and information"),
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
                          decoration: BoxDecoration(color: Color(0x2601ced3)),
                          child: Image(
                            image: AssetImage('assets/images/onlineDr.png'),
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
                            'Telehealth – is it for me?',
                            style: Theme
                                .of(context)
                                .textTheme
                                .headline5!
                                .copyWith(color: Colors.lightGreen,
                                fontWeight: FontWeight.w600),
                            children: <TextSpan>[
                              TextSpan(
                                  text:
                                  '\nYou may be offered the option of telehealth, a digital appointment to enable patients to receive quality care closer to home.\nTelehealth utilises secure videoconference technology to enable a patient to see, hear and speak to their clinician for an appointment, without having to travel to their location.\n\nAsk your clinician if this is an option.',
                                  style: Theme
                                      .of(context)
                                      .textTheme
                                      .bodyText1),

                              TextSpan(
                                text: '\n\nChoosing Wisely',
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(color: Colors.lightGreen,
                                    fontWeight: FontWeight.w600),),
                              TextSpan(
                                text:
                                '\nThe Sunshine Coast Hospital and Health Service is proud to be a Choosing Wisely champion health service.'
                                    '\n\nAs a patient, family member of carer, you may like to use these Choosing Wisely questions when you meet with your health professional to make sure you get the right amount of care – not too much and not too little.'
                                    '\n\n   B - What are the benefits?'
                                    '\n   R - What are the risks?'
                                    '\n   A - What are the alternatives?'
                                    '\n   N - What if I do nothing?'
                                    '\n   D - What are the delivery options?'
                                    '\n\nYou can download this Choosing Wisely Factsheet (PDF 1039 kB) to help you prepare for your appointment. Take it in with you so that you remember your questions!'
                                    '\nFor more information visit www.choosingwisely.org.au',
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .bodyText1,
                              ),
                              TextSpan(
                                text: '\n\nNurse Navigators ',
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(color: Colors.lightGreen,
                                    fontWeight: FontWeight.w600),),
                              TextSpan(
                                text:
                                '\nNurse Navigators support patients to improve their health literacy and capacity to self-manage their conditions. Nurse Navigators assist patients to access services in the right place, at the right time and by the right health-care professional or care provider.\n\nNurse Navigators link with all primary and acute care health professionals who identify and refer their most complex patients (adult or children), who require a coordinated approach to improve their health outcomes. Based upon similar criteria, other referrals to the service will come from specialists, hospitals and hospital data bases. Learn more  -5470 5247.',
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

              ],
            ),
          ),
        ));
  }

}
