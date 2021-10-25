import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'home.dart';

class AppointPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFCECE7B),
          title: FittedBox(
            fit: BoxFit.contain,
            child: Text('Referrals/appointments',
                style: Theme.of(context).textTheme.headline3),
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
                          decoration: BoxDecoration(color: Color(0xffebf4d3)),
                          child: Image(
                            image: AssetImage('assets/images/surgery.png'),
                            height: 150,
                            // fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20, top: 5, right: 20, bottom: 20),
                    child: Center(
                      child: InkWell(
                        child: RichText(
                          text: TextSpan(
                            text: 'Referral pathways',
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(
                                    color: Color(0xFFCECE7B),
                                    fontWeight: FontWeight.w600),
                            children: <TextSpan>[
                              TextSpan(
                                  text:
                                      '\nYour GP or Specialist will refer you to us using Health Pathways an up-to-date hospital referral guideline and provides clinical management advice for referring health providers.'
                                      '\nHealth Pathways are designed to be used at the point of care, primarily for General Practitioners but is also available to Hospital Specialists, Nurses, Allied Health and other Health Professionals within Sunshine Coast and Gympie.\nThe pathways have been jointly developed by consensus and collaboration between hospital clinicians and general practice teams.',
                                  style: Theme.of(context).textTheme.bodyText1),
                              TextSpan(
                                text: '\n\nElective Surgery',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(
                                        color: Color(0xFFCECE7B),
                                        fontWeight: FontWeight.w600),
                              ),
                              TextSpan(
                                text:
                                    '\nSunshine Coast Health Service patients, who have been assessed by their specialty consultant and are found to need an elective surgical operation or procedure. Eligible patients have been referred to the health service by a valid referral, with supporting evidence that their health condition cannot be managed by a primary health care practitioner (GP). \nSupporting documents prove that all non-surgical treatment options have been pursued unsuccessfully. An assessment has been made by the surgical specialist and the patient name has been registered and placed on the elective waiting list for “elective surgery”. ',
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              TextSpan(
                                text: '\n\nWait times ',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(
                                        color: Color(0xFFCECE7B),
                                        fontWeight: FontWeight.w600),
                              ),
                              TextSpan(
                                text:
                                    '\nThe surgeon will assess how urgent the clinical need for the patient’s surgery is in accordance with Queensland Health guidelines and assessments. The patient’s need for surgery will be given a grade (category) of classification that is the same throughout all Australian public hospitals.'
                                    '\n\nCategory 1: Requires surgical intervention within 30 days.'
                                    '\nCategory 2: Requires surgical intervention within 90 days.'
                                    '\nCategory 3: Requires surgical intervention within 365 days.'
                                    '\n\nDuring the waiting period, if the patients’ condition changes; significantly getting better or worse the patient must see their General Practitioner (GP) for assessment and advice. Your GP can send an updated referral to your surgeon if further action is required. A letter of offer from Surgical Services, Sunshine Coast Health Precinct will be mailed to the patient as per their contact details with an elective surgery booking date. It is essential to confirm your elective surgery as soon as possible to avoid delays.',
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              TextSpan(
                                text: '\n\nAppointment timing',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(
                                        color: Color(0xFFCECE7B),
                                        fontWeight: FontWeight.w600),
                              ),
                              TextSpan(
                                text:
                                    '\nAn arrival time for the day of surgery will NOT be confirmed until the business day prior to the patient’s surgery. Patients are requested to follow the directions on their booking letter for their particular hospital they are booked for surgery. If the patient, family or carer has not spoken to a member of the SCHHS, they are requested to contact the appropriate hospital the business day prior to their surgery between 3:00-5:00pm to confirm their booking, attendance and complete Covid screening questions. Patients should contact the hospital reception as early as possible if there are any changes in contact details, to prevent cancellations due to poor communication.'
                                    '\nIt is essential for patients to have a sound knowledge of their medical history, relevant family history, allergies, medications, surgical/anaesthetic history and any social issues that may impact on the patient’s procedure or recovery process. If the patient booked for elective surgery does not have the capacity to answer questions in relation to these topics through age or cognition, a support person who knows the patient must be present for consenting and also on the day of surgery.'
                                    '\nIt is very important to attend all appointments before surgery for safe planning and best healthcare outcomes.'
                                    '\nA patient waiting for elective surgery may be requested to have clinical tests/ investigations in the lead up to their elective surgery.',
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              TextSpan(
                                text: '\n\nNon elective surgery ',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(
                                        color: Color(0xFFCECE7B),
                                        fontWeight: FontWeight.w600),
                              ),
                              TextSpan(
                                text:
                                    '\nAdmitted patients at the Sunshine Coast University Hospital, who are clinically assessed as requiring a surgical procedure within the public system will be placed on the Non-Elective surgical list to wait for their surgical procedure and will be clinically prioritised by the Queensland Health guidelines and assessments by trained professionals. We understand that this time can be stressful and frustrating, this information aims to help provide understanding for the patient, their families and carer’s about waiting for a surgical procedure within the public healthcare system. ',
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              TextSpan(
                                text: '\n\nEligibility ',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(
                                        color: Color(0xFFCECE7B),
                                        fontWeight: FontWeight.w600),
                              ),
                              TextSpan(
                                text:
                                    '\nEligible patients placed on the “non elective surgical list” are patients admitted into the hospital through emergency services or departments, inpatients who may have a sudden deterioration in health or patients who may be admitted to the hospital via specialist outpatient services. These patients have been medically assessed as needing surgery due to the unplanned chain of events that have caused their health to worsen. ',
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              TextSpan(
                                text: '\n\nSurgeries include: ',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(
                                        color: Color(0xFFCECE7B),
                                        fontWeight: FontWeight.w600),
                              ),
                              TextSpan(
                                text: '\n  Ear, Nose and Throat'
                                    '\n  Gastroenterology'
                                    '\n  General surgery'
                                    '\n  Obstetrics and gynaecological'
                                    '\n  Orthopaedics'
                                    '\n  Ophthalmology'
                                    '\n  Urological surgery'
                                    '\n  Vascular surgery'
                                    '\n  Plastic surgery'
                                    '\n  Dental surgery',
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              TextSpan(
                                text: '\n\nWhat to know before your surgery: ',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(
                                        color: Color(0xFFCECE7B),
                                        fontWeight: FontWeight.w600),
                              ),
                              TextSpan(
                                  text: '\nVideo with Dr Owain Evans. ',
                                  style: Theme.of(context).textTheme.headline6,
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      launch('https://vimeo.com/538974988');
                                    }),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ));
  }
}
