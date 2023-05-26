import 'package:TrueYoga/AdsHelper/RewardedAds.dart';
import 'package:TrueYoga/Const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

class OptionsPage extends StatefulWidget {
  @override
  State<OptionsPage> createState() => _OptionsPageState();
}

class _OptionsPageState extends State<OptionsPage> {
  final Email email = Email(
    body: 'Email body',
    subject: 'Email subject',
    recipients: ['example@example.com'],
    isHTML: false,
  );

  @override
  void initState() {
    super.initState();
    Provider.of<RewardedAds>(context, listen: false).loadRewardedAd();
  }

  // Rewarded Ads Code ends here //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: kpaddingall20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ksizedBox20,
              ksizedBox20,
              ksizedBox10,
              Text(
                'Settings',
                style: klargeStyle,
              ),
              ksizedBox20,
              ksizedBox20,
              listTiles(
                icon: Ionicons.star_outline,
                label: 'Rate Us',
                onTap: () {
                  launch(
                      "https://play.google.com/store/apps/details?id=com.fcstudio.yogaworkout.dailyyoga.yoga");
                },
              ),
              listTiles(
                icon: Ionicons.bug_outline,
                label: 'Report a bug',
                onTap: () {},
              ),
              listTiles(
                icon: Ionicons.chatbubble_outline,
                label: 'Contact Us',
                onTap: () async {
                  await FlutterEmailSender.send(email);
                },
              ),
              listTiles(
                icon: Ionicons.share_social_outline,
                label: 'Share Us',
                onTap: () {
                  Share.share(
                    "Check Out this Amazing app With free Yoga Workouts and more. You will love it. \n https://play.google.com/store/apps/details?id=com.fcstudio.yogaworkout.dailyyoga.yoga",
                  );
                },
              ),
              listTiles(
                icon: Ionicons.document_outline,
                label: 'Privacy Policy',
                onTap: () {
                  launch(
                      'https://trueyogaprivacypolicy.blogspot.com/2021/10/privacy-policy-for-true-yoga-at-true.html');
                },
              ),
              listTiles(
                icon: Ionicons.gift_outline,
                label: 'Support',
                onTap: () {
                  if (Provider.of<RewardedAds>(context, listen: false)
                          .isRewardedAdReady ==
                      false) {
                    showToast(
                      'Failed to Load Ad. Please Try Again',
                      textPadding: kpaddingall20,
                      context: context,
                      animation: StyledToastAnimation.slideFromBottom,
                      reverseAnimation: StyledToastAnimation.slideToBottom,
                      position: StyledToastPosition.bottom,
                      animDuration: Duration(milliseconds: 50),
                      duration: Duration(seconds: 2),
                      fullWidth: true,
                      backgroundColor: Colors.purple.shade800,
                      textStyle: ksmallwhiteStyle,
                    );
                  } else {
                    Provider.of<RewardedAds>(context, listen: false)
                        .showRewardedAds();
                  }
                },
              ),
              ksizedBox20,
              ksizedBox20,
              Center(
                child: Text(
                  'Version 1.0.0 - Beta',
                  style: ksmallStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget listTiles({
  required IconData icon,
  required String label,
  required VoidCallback onTap,
}) {
  return ListTile(
    minLeadingWidth: 20.0,
    leading: Icon(
      icon,
      color: Colors.black,
    ),
    title: Text(
      label,
      style: kmediumStyle,
    ),
    onTap: onTap,
  );
}
