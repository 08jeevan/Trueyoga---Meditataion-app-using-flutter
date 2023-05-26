import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

/*___  Padding  ___*/

final kpaddingh10 = EdgeInsets.symmetric(horizontal: 10.0);

final kpaddingv10 = EdgeInsets.symmetric(vertical: 10.0);

final kpaddingall10 = EdgeInsets.all(10.0);

final kpaddingh20 = EdgeInsets.symmetric(horizontal: 20.0);

final kpaddingv20 = EdgeInsets.symmetric(vertical: 20.0);

final kpaddingall20 = EdgeInsets.all(20.0);

/*___  SizedBox  ___*/

final ksizedBox5 = SizedBox(height: 5.0);
final ksizedBox10 = SizedBox(height: 10.0);
final ksizedBox15 = SizedBox(height: 15.0);
final ksizedBox20 = SizedBox(height: 20.0);

final ksizedBoxwidth5 = SizedBox(width: 5.0);
final ksizedBoxwidth15 = SizedBox(width: 10.0);

/*___  TextStyle  ___*/

final ksmallStyle = TextStyle(
  color: Colors.black,
  fontSize: 12.0,
  fontWeight: FontWeight.w500,
);

final ksmallwhiteStyle = TextStyle(
  color: Colors.black,
  fontSize: 12.0,
  fontWeight: FontWeight.w500,
);

final kmediumStyle = TextStyle(
  color: Colors.black,
  fontSize: 18.0,
  fontWeight: FontWeight.w500,
);

final klargeStyle = TextStyle(
  color: Colors.black,
  fontSize: 22.0,
  fontWeight: FontWeight.w700,
);

kcustomStyle(color, fontSize, fontWeight) {
  return TextStyle(
    color: color,
    fontSize: fontSize,
    fontWeight: fontWeight,
  );
}

/*___  Page Translation Animation  ___*/

kpageAnimation(context, Widget pagename) {
  return Navigator.push(
    context,
    PageTransition(
      type: PageTransitionType.rightToLeft,
      child: pagename,
    ),
  );
}

/*___  Primary Color  ___*/

final kprimaryColor = Colors.purple.shade800;
