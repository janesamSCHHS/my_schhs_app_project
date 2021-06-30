import 'package:flutter/material.dart';


class OurFacilities extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                // height: 200.0,
                // width: 400.0,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'Our facilities The Sunshine Coast HHS provides services through:\n•	Sunshine Coast University Hospital\n•	Nambour General Hospital•	Caloundra Health Service\n•	Gympie Hospital\n•	Maleny Soldiers Memorial Hospitaland a comprehensive range of sub-acute, ambulatory and extended care, community health, mental health and oral health services, \nand an aged care services at the Glenbrook Residential Aged Care Facility.\nThe Sunshine Coast University Hospital (SCUH) at Birtinya commenced services in March 2017, and will expand to a 738-bed facility. SCUH offers a range of new and expanded services for the Sunshine Coast, including the Sunshine Coast Health Institute – a unique partnership for education and research - on site.\nThrough the opening of SCUH and the transformation of existing facilities and Nambour and Caloundra, the Sunshine Coast HHS is investing to meet the growing healthcare needs of our community and deliver exceptional care into the future.\n \nCar parking, transport and maps\n•	Location\n•	Maps\n•	Parking (including disabled parking)\n•	Public transport', style: TextStyle(color: Colors.black87, fontSize: 12.0),
                    ),
                  ),
                ),
              ),
              SizedBox()
            ]),
      ),
    );
  }
}
