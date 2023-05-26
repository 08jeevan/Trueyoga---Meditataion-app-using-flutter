import 'package:flutter/material.dart';
import 'package:native_admob_flutter/native_admob_flutter.dart';

class NativeAds extends StatefulWidget {
  @override
  _NativeAdsState createState() => _NativeAdsState();
}

class _NativeAdsState extends State<NativeAds>
    with AutomaticKeepAliveClientMixin {
  final controller = NativeAdController();

  @override
  void initState() {
    super.initState();
    controller
        .load(keywords: ['yoga', 'sport', 'workout', 'excersise', 'fat loose']);
    controller.onEvent.listen((event) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return controller.isLoaded
        ? NativeAd(
            // Ads Id
            unitId: "ca-app-pub-1082417208908203/1460061025",
            nonPersonalizedAds: true,
            height: 310,

            builder: (context, child) {
              return Material(
                elevation: 8,
                child: child,
              );
            },
            buildLayout: mediumAdTemplateLayoutBuilder,
            icon: AdImageView(size: 40),
            headline: AdTextView(
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              maxLines: 1,
            ),
            body:
                AdTextView(style: TextStyle(color: Colors.black), maxLines: 2),
            media: AdMediaView(
              height: 140,
              width: MATCH_PARENT,
            ),
            attribution: AdTextView(
              width: WRAP_CONTENT,
              text: 'Ad',
              decoration: AdDecoration(
                border: BorderSide(color: Colors.green, width: 1),
                borderRadius: AdBorderRadius.all(15.0),
              ),
              style: TextStyle(color: Colors.green),
              padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 1.0),
            ),
            button: AdButtonView(
              elevation: 5,
              decoration: AdDecoration(backgroundColor: Colors.blue),
              height: MATCH_PARENT,
              textStyle: TextStyle(color: Colors.white),
            ),
            ratingBar: AdRatingBarView(starsColor: Colors.white),
            advertiser: AdTextView(),
          )
        : SizedBox();
  }

  @override
  bool get wantKeepAlive => true;
}
