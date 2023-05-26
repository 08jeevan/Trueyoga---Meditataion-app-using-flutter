import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';

Widget countDownTimer({
  countdowncontroller,
  required int duration,
  required VoidCallback onComplete,
}) {
  return CircularCountDownTimer(
    duration: duration,
    controller: countdowncontroller,
    fillColor: Colors.redAccent,
    initialDuration: 0,
    height: 90.0,
    width: 90.0,
    ringColor: Colors.grey,
    backgroundColor: Color(0xffeff1ff),
    strokeWidth: 5.0,
    strokeCap: StrokeCap.butt,
    isReverse: true,
    textStyle: TextStyle(
      fontSize: 25.0,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
    textFormat: CountdownTextFormat.MM_SS,
    isTimerTextShown: true,
    autoStart: true,
    onComplete: onComplete,
  );
}
