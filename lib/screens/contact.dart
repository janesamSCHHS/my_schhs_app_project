import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'about.dart';

class ContactsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: FittedBox(
          fit: BoxFit.contain,
          child: Text('Contacts', style: Theme.of(context).textTheme.headline3),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: IconButton(
                icon: Icon(
                  Icons.info_outline,
                  size: 26.0,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return AboutPage();
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
                        decoration:
                            BoxDecoration(color: Colors.deepPurple[100]),
                        child: Image(
                          image: AssetImage('assets/images/contact.png'),
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
                  /*ButtonBar(
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
                      ]),*/
                ],
              ),
              // Divider(
              //  thickness: 2,
              //  color: Colors.lightGreen,
              //  ),
              Container(
                child: Text(
                  'Our hospital contacts',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.deepPurple),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20, top: 5, right: 20, bottom: 20),
                  child: Center(
                    child: InkWell(
                      child: RichText(
                        text: TextSpan(
                          text: '\nSunshine Coast University Hospital',
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.w600),
                          children: <TextSpan>[
                            TextSpan(
                                text: '\n6 Doherty Street'
                                    '\nBirtinya QLD 4575'
                                    '\nTel: (07) 5202 0000',
                                style: Theme.of(context).textTheme.bodyText1),
                            TextSpan(
                              text: '\n\nNambour General Hospital',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                      color: Colors.deepPurple,
                                      fontWeight: FontWeight.w600),
                            ),
                            TextSpan(
                              text: '\nHospital Road'
                                  '\nPO Box 547'
                                  '\nNambour QLD 4560'
                                  '\nTel: (07) 5470 6600',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            TextSpan(
                              text: '\n\nGympie Hospital',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                      color: Colors.deepPurple,
                                      fontWeight: FontWeight.w600),
                            ),
                            TextSpan(
                              text: '\n12 Henry Street'
                                  '\nLocked Mail Bag 15'
                                  '\nGympie QLD 4570'
                                  '\nTel: (07) 5489 8444',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            TextSpan(
                              text: '\n\nCaloundra Hospital',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                      color: Colors.deepPurple,
                                      fontWeight: FontWeight.w600),
                            ),
                            TextSpan(
                              text: '\nWest Terrace'
                                  '\nCaloundra QLD 4551'
                                  '\nTel: (07) 5436 8500',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            TextSpan(
                              text: '\n\nMaleny Soldiers Memorial Hospital',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                      color: Colors.deepPurple,
                                      fontWeight: FontWeight.w600),
                            ),
                            TextSpan(
                              text: '\n17 Bean Street'
                                  '\nMaleny QLD 4552'
                                  '\nTel: (07) 5420 5000',
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
/*

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
*/
