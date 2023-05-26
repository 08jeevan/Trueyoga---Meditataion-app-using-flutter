import 'package:TrueYoga/Const.dart';
import 'package:TrueYoga/Data/WorkOutDetailsData.dart';
import 'package:TrueYoga/Screens/WorkOutDonePage.dart';
import 'package:flutter/animation.dart';

bool end = false;
int _currentPage = 0;

timerController(context, pageController, itemlength) {
  if (_currentPage == itemlength.length - 1) {
    end = true;
  } else if (_currentPage == 0) {
    end = false;
  }

  if (end == false) {
    _currentPage++;
  } else {
    kpageAnimation(context, WorkOutDonePage());
  }

  pageController.animateToPage(
    _currentPage,
    duration: Duration(milliseconds: 100),
    curve: Curves.easeIn,
  );
}
