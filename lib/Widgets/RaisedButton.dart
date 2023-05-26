import 'package:TrueYoga/Const.dart';
import 'package:flutter/material.dart';

Widget raisedButtonfill({
  required String label,
  required IconData icon,
  required VoidCallback onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      padding: kpaddingall10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Colors.purple.shade800,
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 20.0,
              color: Colors.white,
            ),
            ksizedBoxwidth5,
            Text(
              label,
              style: kcustomStyle(
                Colors.white,
                15.0,
                FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

raisedButtonOutline({
  required String label,
  required IconData icon,
  VoidCallback? onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      padding: kpaddingall10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(color: Colors.purple.shade800),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 20.0,
              color: Colors.purple.shade800,
            ),
            ksizedBoxwidth5,
            Text(
              label,
              style: kcustomStyle(
                Colors.purple.shade800,
                15.0,
                FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
