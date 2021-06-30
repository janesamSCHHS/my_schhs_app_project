import 'package:flutter/cupertino.dart';
import 'package:schhs_my_app_v2a/logic/constants.dart';


class CardBox extends StatelessWidget {
  final Widget? child;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final double? width, height;


  const CardBox({required Key? key,  required this.padding, required this.margin, required this.child, required this.width, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: COLOR_WHITE,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: COLOR_GREY.withAlpha(40), width: 2)
      ),
      padding: padding,
      child: Center(child: child),
    );
  }
}

/*Card(
margin: EdgeInsets.symmetric(vertical: 2, horizontal: 40.0),
// color: Color(0xFF228375),
child: ListTile(
onTap: () {
Navigator.push(
context,
MaterialPageRoute(builder: (context) {
return AboutPage();
}),
);
},
leading: Icon(Icons.home_outlined, color: Colors.black87),
title: Text(
"About SCHHS",
style: TextStyle(
color: Colors.black87,
),
),
),
), //about*/