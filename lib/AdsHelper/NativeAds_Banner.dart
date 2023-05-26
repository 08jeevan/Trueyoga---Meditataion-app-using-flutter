import 'package:flutter/material.dart';
import 'package:native_admob_flutter/native_admob_flutter.dart';

class NativeBannerAds extends StatefulWidget {
  @override
  _NativeBannerAdsState createState() => _NativeBannerAdsState();
}

class _NativeBannerAdsState extends State<NativeBannerAds>
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
            // Ads Unit ID//
            unitId: "ca-app-pub-1082417208908203/5974855250",
            controller: controller,
            height: 115,
            builder: (context, child) {
              return Material(
                borderRadius: BorderRadius.circular(8.0),
                elevation: 0,
                child: child,
              );
            },
            buildLayout: smallAdTemplateLayoutBuilder,
            icon: AdImageView(size: 70),
            headline: AdTextView(
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              maxLines: 1,
            ),
            body: AdTextView(style: TextStyle(color: Colors.black)),
            advertiser: AdTextView(style: TextStyle(color: Colors.black)),
            media: AdMediaView(height: 80, width: 120),
            button: AdButtonView(
              decoration: AdDecoration(backgroundColor: Colors.blue),
              textStyle: TextStyle(color: Colors.white),
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
          )
        : SizedBox();
  }

  @override
  bool get wantKeepAlive => true;
}
