import 'package:TrueYoga/AdsHelper/NativeAds_Banner.dart';
import 'package:TrueYoga/Const.dart';
import 'package:TrueYoga/Screens/StreamBuilder/StreamProvider.dart';
import 'package:TrueYoga/Widgets/RaisedButton.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class WorkOutPage extends StatefulWidget {
  final Widget timer;
  final VoidCallback onPause, onResume, onSkip;
  final String label, imgUrl, resumeLabel;

  WorkOutPage({
    required this.timer,
    required this.onPause,
    required this.onResume,
    required this.label,
    required this.onSkip,
    required this.resumeLabel,
    required this.imgUrl,
  });

  @override
  _WorkOutPageState createState() => _WorkOutPageState();
}

class _WorkOutPageState extends State<WorkOutPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kpaddingh20,
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              children: [
                ksizedBox20,
                Text(
                  widget.label,
                  style: kmediumStyle,
                ),
                ksizedBox20,
                ksizedBox20,
                Expanded(
                  child: Image.asset(
                    widget.imgUrl,
                    fit: BoxFit.contain,
                  ),
                ),
                ksizedBox20,
                ksizedBox20,
                ksizedBox20,
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: widget.timer,
            ),
          ),
          ksizedBox20,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              raisedButtonOutline(
                icon: Ionicons.information_circle_outline,
                label: 'Info',
                onTap: () {
                  kpageAnimation(
                    context,
                    WorkOutDetailesArticles(
                      docname: widget.label,
                    ),
                  );
                },
              ),
              raisedButtonOutline(
                icon: widget.resumeLabel == 'Pause'
                    ? Ionicons.pause_circle_outline
                    : Ionicons.play_forward_circle_outline,
                label: widget.resumeLabel,
                onTap: widget.onPause,
              ),
              raisedButtonOutline(
                icon: Ionicons.play_skip_forward_circle_outline,
                label: 'Skip',
                onTap: widget.onSkip,
              ),
            ],
          ),
          ksizedBox20,
          ksizedBox20,
        ],
      ),
    );
  }
}
