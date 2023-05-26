import 'package:flutter/cupertino.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class RewardedAds with ChangeNotifier {
  RewardedAd? rewardedAd;
  bool isRewardedAdReady = false;

  void loadRewardedAd() {
    RewardedAd.load(
      adUnitId: "ca-app-pub-1082417208908203/6952060857",
      request: AdRequest(),
      rewardedAdLoadCallback: RewardedAdLoadCallback(
        onAdLoaded: (ad) {
          this.rewardedAd = ad;

          ad.fullScreenContentCallback = FullScreenContentCallback(
            onAdDismissedFullScreenContent: (ad) {
              isRewardedAdReady = false;
              notifyListeners();
              loadRewardedAd();
            },
          );

          isRewardedAdReady = true;
          notifyListeners();
        },
        onAdFailedToLoad: (err) {
          print('Failed to load a rewarded ad: ${err.message}');

          isRewardedAdReady = false;
          notifyListeners();
        },
      ),
    );
  }

  showRewardedAds() {
    rewardedAd?.show(
      onUserEarnedReward: (_, reward) {},
    );
  }
}
