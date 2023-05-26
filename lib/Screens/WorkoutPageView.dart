import 'package:TrueYoga/AdsHelper/InterstitalAds.dart';
import 'package:TrueYoga/AdsHelper/NativeAds_Banner.dart';
import 'package:TrueYoga/Const.dart';
import 'package:TrueYoga/Data/WorkOutDetailsData.dart';
import 'package:TrueYoga/Provider/Timer.dart';
import 'package:TrueYoga/Screens/BreakPage.dart';
import 'package:TrueYoga/Screens/WorkOutDonePage.dart';
import 'package:TrueYoga/Screens/WorkOutPage.dart';
import 'package:TrueYoga/Widgets/AlertDialog.dart';
import 'package:TrueYoga/Widgets/CountDownWidget.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:native_admob_flutter/native_admob_flutter.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WorkOutPageView extends StatefulWidget {
  final List workoutname;
  WorkOutPageView({required this.workoutname});
  @override
  _WorkOutPageViewState createState() => _WorkOutPageViewState();
}

class _WorkOutPageViewState extends State<WorkOutPageView> {
  final PageController _pageController = PageController(initialPage: 0);
  CountDownController _countdowncontroller = CountDownController();
  final controller = NativeAdController();
  bool end = false;
  int number = 0;
  bool shouldPop = false;
  bool ispaused = false;

  //
  showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return alertBox(
          cont: () {
            _countdowncontroller.resume();
            Navigator.pop(context);
          },
          exit: () {
            setState(() {
              Navigator.pop(context);
              Navigator.pop(context);
              shouldPop = true;
            });
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (shouldPop == false) {
          _countdowncontroller.pause();
          return showAlertDialog(context);
        } else {
          return shouldPop == true;
        }
      },
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: AppBar(
            automaticallyImplyLeading: false,
            flexibleSpace: Container(),
            centerTitle: true,
            title: Padding(
              padding: const EdgeInsets.only(top: 35.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SmoothPageIndicator(
                    controller: _pageController,
                    count: widget.workoutname.length,
                    effect: ScrollingDotsEffect(
                      dotHeight: 10.0,
                      dotWidth: 10.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: PageView.builder(
          physics: NeverScrollableScrollPhysics(),
          controller: _pageController,
          itemCount: widget.workoutname.length,
          itemBuilder: (BuildContext context, int index) {
            return widget.workoutname[index].label == 'break'
                ? BreakPage(
                    timer: countDownTimer(
                      countdowncontroller: _countdowncontroller,
                      duration: widget.workoutname[index].time,
                      onComplete: () {
                        timerController(
                          context,
                          _pageController,
                          widget.workoutname,
                        );
                      },
                    ),
                    onSkip: () {
                      timerController(
                          context, _pageController, widget.workoutname);
                    },
                    ads: NativeBannerAds(),
                  )
                : WorkOutPage(
                    label: widget.workoutname[index].label,
                    imgUrl: widget.workoutname[index].imgUrl,
                    resumeLabel: ispaused == false ? 'Pause' : 'Resume',
                    onPause: () {
                      if (ispaused == false) {
                        _countdowncontroller.pause();
                        setState(() {
                          ispaused = true;
                        });
                      } else if (ispaused == true) {
                        _countdowncontroller.resume();
                        setState(() {
                          ispaused = false;
                        });
                      }
                    },
                    onResume: () {},
                    onSkip: () {
                      timerController(
                          context, _pageController, widget.workoutname);
                    },
                    timer: countDownTimer(
                      countdowncontroller: _countdowncontroller,
                      duration: widget.workoutname[index].time,
                      // duration: 3,
                      onComplete: () {
                        timerController(
                            context, _pageController, widget.workoutname);
                      },
                    ),
                  );
          },
        ),
      ),
    );
  }
}
