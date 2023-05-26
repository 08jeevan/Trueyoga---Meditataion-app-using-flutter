import 'package:TrueYoga/AdsHelper/NativeAds_Banner.dart';
import 'package:TrueYoga/AdsHelper/NativeAds_Medium.dart';
import 'package:TrueYoga/Const.dart';
import 'package:TrueYoga/Widgets/RaisedButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class BreakPage extends StatefulWidget {
  Widget timer, ads;
  VoidCallback onSkip;
  BreakPage({required this.timer, required this.onSkip, required this.ads});

  @override
  State<BreakPage> createState() => _BreakPageState();
}

class _BreakPageState extends State<BreakPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 4,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'BREAK END\'S IN',
                  style: kcustomStyle(Colors.black, 15.0, FontWeight.w600),
                ),
                ksizedBox10,
                widget.timer,
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: kpaddingh20,
            child: Container(
              child: widget.ads,
            ),
          ),
        ),
        ksizedBox20,
        ksizedBox20,
        Padding(
          padding: kpaddingh20,
          child: raisedButtonOutline(
            icon: Ionicons.play_skip_forward_circle_outline,
            label: 'Skip Break',
            onTap: widget.onSkip,
          ),
        ),
        ksizedBox20,
      ],
    );
  }
}
