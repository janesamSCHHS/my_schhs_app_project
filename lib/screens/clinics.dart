import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class ClinicsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFc1c1b2),
        title: Text(
          "Clinics and Day Services",
          style: TextStyle(fontSize: 19),
        ),
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
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(color: Color(0xFFB6E4FC)),
                        child: Image(
                          image: AssetImage('assets/images/outpts.png'),
                          height: 160,
                          // fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ButtonBar(
                      layoutBehavior: ButtonBarLayoutBehavior.constrained,
                      buttonPadding: EdgeInsets.only(left: 5, right: 5),
                      children: <Widget>[
                        BBbuttons(
                          title: 'Telehealth',
                          destination: Telehealth(),
                        ),
                        BBbuttons(
                          title: 'Choosing\nWisely',
                          destination: ChoosingWise(),
                        ),
                        BBbuttons(
                          title: 'Nurse\nNavigators',
                          destination: NurseNav(),
                        ),
                      ]),
                ],
              ),
              // Divider(
              //  thickness: 2,
              //  color: Colors.lightGreen,
              //  ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20, top: 5, right: 20, bottom: 20),
                  child: Center(
                    child: InkWell(
                      child: RichText(
                        text: TextSpan(
                          text:
                              '\nAmbulatory Care Centre or clinic appointment',
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(
                                  color: Colors.orangeAccent,
                                  fontWeight: FontWeight.w600),
                          children: <TextSpan>[
                            TextSpan(
                                text:
                                    '\nYour outpatient appointment is to see a specialist about your condition without being admitted into hospital. '
                                    'You may have an outpatient appointment before and/or after your admission to hospital ',
                                style: Theme.of(context).textTheme.bodyText1),
                            TextSpan(
                              text: '\n\nRequesting an appointment',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                      color: Colors.orangeAccent,
                                      fontWeight: FontWeight.w600),
                            ),
                            TextSpan(
                              text:
                                  '\nTo get an outpatient appointment or clinic appointment, your doctor needs to send a referral to the hospital. '
                                  'The hospital will send you a letter either offering an appointment or advising that your name has been placed on a wait list. '
                                  '\nYour letter will tell you which clinic you are required to attend and how to prepare for your appointment. '
                                  'If your condition changes or you are concerned about your health before the date of your appointment, please contact your doctor.',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            TextSpan(
                              text: '\n\nReferral Centre',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                      color: Colors.orangeAccent,
                                      fontWeight: FontWeight.w600),
                            ),
                            TextSpan(
                              text:
                                  '\nYou can phone us to check in on your referral from your GP or specialist: 5202 0000.',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            TextSpan(
                              text: '\n\nAt your appointment',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                      color: Colors.orangeAccent,
                                      fontWeight: FontWeight.w600),
                            ),
                            TextSpan(
                              text:
                                  '\nWhen you arrive, register your attendance at the reception desk with your appointment letter. You will be directed to a seating area near your clinic for you to wait. While we always try to ensure that clinics run on time, due to unavoidable delays there may be a 1-2 hour wait to see a specialist.'
                                  '\nAt your first appointment your doctor will discuss your concerns and health care plan. You may require an examination or further tests. Your doctor will let you know if you require further appointments.',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            TextSpan(
                              text: '\n\nMedication',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                      color: Colors.orangeAccent,
                                      fontWeight: FontWeight.w600),
                            ),
                            TextSpan(
                              text:
                                  '\nPharmacies are located onsite at Sunshine Coast University Hospital, Nambour and Gympie Hospitals. You are welcome to use your own community pharmacy, however, some medications may not be on the Pharmaceutical Benefits '
                                  'Scheme and you may have to pay extra for these.',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            TextSpan(
                              text: '\n\nWhat to bring with you',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                      color: Colors.orangeAccent,
                                      fontWeight: FontWeight.w600),
                            ),
                            TextSpan(
                              text: '\nEach time you visit us',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      color: Colors.lightGreen,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: '\n   •	Your Medicare card'
                                  '\n   •	Private health insurance card (if you want to use it)'
                                  '\n   •	Health Care Card and/or concession card (if you have one)'
                                  '\n   •	Current medications \n       (prescription, over the counter and herbal medicine)'
                                  '\n   •	Relevant x-rays, scans or any other test results or reports'
                                  '\n   •	Glasses, hearing and mobility aids',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            TextSpan(
                              text: '\nFor an outpatient or clinic appointment',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      color: Colors.lightGreen,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: '\n   •	Your appointment letter'
                                  '\n   •	Any special items listed on your letter'
                                  '\n   •	WorkCover claim number (if relevant)'
                                  '\n   •	Snacks, a drink or money to buy refreshments'
                                  '\n   •	Something to read or do while you wait',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // SizedBox(
              //  height: 20,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class Telehealth extends StatelessWidget {
  const Telehealth({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Stack(children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(color: Color(0x2601ced3)),
                    child: Image(
                      image: AssetImage('assets/images/onlineDr.png'),
                      height: 150,
                      // fit: BoxFit.fill,
                    ),
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Color(0xFF01ced3),
                        size: 26.0,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ClinicsPage()));
                      }),
                ]),
                Container(
                    child: Padding(
                        padding: const EdgeInsets.only(
                            left: 30, top: 5, right: 30, bottom: 20),
                        child: Center(
                            child: InkWell(
                          child: RichText(
                            text: TextSpan(
                              text: '\nTelehealth – is it for me?',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                      color: Color(0xFF01ced3),
                                      fontWeight: FontWeight.w600),
                              children: <TextSpan>[
                                TextSpan(
                                    text:
                                        '\n\nYou may be offered the option of telehealth, a digital appointment to enable patients to receive quality care closer to home.\n\nTelehealth utilises secure videoconference technology to enable a patient to see, hear and speak to their clinician for an appointment, without having to travel to their location.',
                                    style:
                                        Theme.of(context).textTheme.bodyText1),
                                TextSpan(
                                    text:
                                        '\n\nAsk your clinician if this is an option.',
                                    style:
                                        Theme.of(context).textTheme.headline4),
                              ],
                            ),
                          ),
                        )))),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .4,
                  decoration: BoxDecoration(color: Color(0x2601ced3)),
                  child: Image(
                    image: AssetImage('assets/images/telehealth.png'),
                    // height: 200,
                    //  fit: BoxFit.fill,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ChoosingWise extends StatelessWidget {
  const ChoosingWise({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Stack(children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(color: Color(0xFFeceffe)),
                    child: Image(
                      image: AssetImage('assets/images/ChoosingW.png'),
                      height: 150,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Color(0xff5a68ad),
                        size: 26.0,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ClinicsPage()));
                      }),
                ]),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 30, top: 5, right: 30, bottom: 20),
                    child: Center(
                      child: InkWell(
                        child: RichText(
                          text: TextSpan(
                            text: '\nChoosing Wisely',
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(
                                    color: Color(0xff5a68ad),
                                    fontWeight: FontWeight.w600),
                            children: <TextSpan>[
                              TextSpan(
                                text:
                                    '\n\nThe Sunshine Coast Hospital and Health Service is proud to be a Choosing Wisely champion health service.'
                                    '\n\nAs a patient, family member of carer, you may like to use these Choosing Wisely questions when you meet with your health professional to make sure you get the right amount of care – not too much and not too little.'
                                    '\n\n     B - What are the benefits?'
                                    '\n     R - What are the risks?'
                                    '\n     A - What are the alternatives?'
                                    '\n     N - What if I do nothing?'
                                    '\n     D - What are the delivery options?'
                                    '\n\nYou can download this Choosing Wisely Factsheet (PDF 1039 kB) to help you prepare for your appointment. Take it in with you so that you remember your questions!'
                                    '\n\nFor more information visit www.choosingwisely.org.au',
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .2,
                  decoration: BoxDecoration(color: Color(0xFFeceffe)),
                  child: Image(
                    image: AssetImage('assets/images/CWlogo.png'),
                    //height: 200,
                    //fit: BoxFit.fill,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NurseNav extends StatelessWidget {
  const NurseNav({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(color: Color(0xFFf3eaf9)),
                      child: Image(
                        image: AssetImage('assets/images/nursing.png'),
                        height: 150,
                        // fit: BoxFit.fill,
                      ),
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Color(0xff8e8299),
                          size: 26.0,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ClinicsPage()));
                        }),
                  ],
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 30, top: 5, right: 30, bottom: 20),
                    child: Center(
                      child: InkWell(
                        child: RichText(
                          text: TextSpan(
                            text: '\n\nNurse Navigators',
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(
                                    color: Color(0xff8e8299),
                                    fontWeight: FontWeight.w600),
                            children: <TextSpan>[
                              TextSpan(
                                  text:
                                      '\n\nNurse Navigators support patients to improve their health literacy and capacity to self-manage their conditions. Nurse Navigators assist patients to access services in the right place, at the right time and by the right health-care professional or care provider.\n\nNurse Navigators link with all primary and acute care health professionals who identify and refer their most complex patients (adult or children), who require a coordinated approach to improve their health outcomes. Based upon similar criteria, other referrals to the service will come from specialists, hospitals and hospital data bases. ',
                                  style: Theme.of(context).textTheme.bodyText1),
                              TextSpan(
                                  text: '\n\nLearn more  -5470 5247.',
                                  style: Theme.of(context).textTheme.headline4),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .27,
                  decoration: BoxDecoration(color: Color(0xFFf3eaf9)),
                  child: Image(
                    image: AssetImage('assets/images/nurseNav.png'),
                    //height: 200,
                    // fit: BoxFit.fill,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BBbuttons extends StatelessWidget {
  final title;
  BBbuttons({@required this.title, required this.destination});
  final destination;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        child: Text(
          title,
          textAlign: TextAlign.center,
        ),
        style: ElevatedButton.styleFrom(
            primary: Colors.lightGreen,
            minimumSize: Size(36, 50),
            padding: EdgeInsets.only(left: 18, right: 18)),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => this.destination));
        });
  }
}

/*

floatingActionButton: FloatingActionButton(
child: Icon(Icons.navigation),
backgroundColor: Colors.green,
foregroundColor: Colors.white,
onPressed: () => {},
),*/
