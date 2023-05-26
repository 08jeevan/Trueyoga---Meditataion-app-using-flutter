import 'package:TrueYoga/Const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget alertBox({required VoidCallback cont, required VoidCallback exit}) {
  return AlertDialog(
    title: Padding(
      padding: kpaddingall20,
      child: SvgPicture.asset(
        'assets/svg/Yogapracticeamico.svg',
        height: 200.0,
        width: 200.0,
      ),
    ),
    content: Text(
      "Are you Sure to exit",
      style: klargeStyle,
    ),
    actions: [
      Padding(
        padding: kpaddingh10,
        child: Column(
          children: [
            GestureDetector(
              onTap: cont,
              child: Container(
                width: double.infinity,
                height: 45.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  border: Border.all(
                    color: Colors.purple.shade800,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Continue Workout',
                    style: kcustomStyle(
                        Colors.purple.shade800, 14.0, FontWeight.w600),
                  ),
                ),
              ),
            ),
            ksizedBox5,
            GestureDetector(
              onTap: exit,
              child: Container(
                width: double.infinity,
                height: 40.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.purple.shade800,
                ),
                child: Center(
                  child: Text(
                    'Exit anyways',
                    style: kcustomStyle(Colors.white, 14.0, FontWeight.w600),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ],
  );
}
