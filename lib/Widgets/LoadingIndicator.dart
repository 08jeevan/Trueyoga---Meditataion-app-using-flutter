import 'package:flutter/material.dart';

Widget loadingIndicator({required String text}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        height: 18.0,
        width: 18.0,
        child: CircularProgressIndicator(
          strokeWidth: 2.0,
          valueColor: new AlwaysStoppedAnimation<Color>(Colors.purple.shade800),
        ),
      ),
      SizedBox(width: 8.0),
      Text(
        text,
        style: TextStyle(
          fontSize: 13.0,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
    ],
  );
}
