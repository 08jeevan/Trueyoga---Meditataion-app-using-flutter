import 'package:TrueYoga/AdsHelper/InterstitalAds.dart';
import 'package:TrueYoga/AdsHelper/NativeAds_Banner.dart';
import 'package:TrueYoga/Const.dart';
import 'package:TrueYoga/Widgets/RaisedButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';

class WorkOutDonePage extends StatefulWidget {
  @override
  State<WorkOutDonePage> createState() => _WorkOutDonePageState();
}

class _WorkOutDonePageState extends State<WorkOutDonePage> {
  @override
  void initState() {
    super.initState();
    Provider.of<InterstitalAds>(context, listen: false).createInterstitialAd();
  }

  @override
  void dispose() {
    super.dispose();
    Provider.of<InterstitalAds>(context, listen: false).dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: kpaddingall20,
              child: Container(
                child: SvgPicture.asset(
                  'assets/svg/secuss.svg',
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              'Congratulations, You Have Finished Your Workout',
              style: klargeStyle,
              textAlign: TextAlign.center,
            ),
          ),
          ksizedBox20,
          ksizedBox20,
          Padding(
            padding: kpaddingh20,
            child: raisedButtonfill(
              icon: Ionicons.home_outline,
              label: 'Back to Home',
              onTap: () {
                Provider.of<InterstitalAds>(context, listen: false)
                    .showInterstitialAd();
                Navigator.pop(context);
                Navigator.pop(context);
              },
            ),
          ),
          ksizedBox20,
          ksizedBox20,
        ],
      ),
    );
  }
}
