import 'package:TrueYoga/AdsHelper/InterstitalAds.dart';
import 'package:TrueYoga/AdsHelper/RewardedAds.dart';
import 'package:TrueYoga/Screens/HomePage.dart';
import 'package:TrueYoga/Screens/WorkOutDonePage.dart';
import 'package:TrueYoga/Widgets/GreetingWidget.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:native_admob_flutter/native_admob_flutter.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart' as rewarded;
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  rewarded.MobileAds.instance.initialize();
  await MobileAds.initialize();
  MobileAds.setTestDeviceIds(['33BE2250B43518CCDA7DE426D04EE231']);
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => GreetingWidget(),
        ),
        ChangeNotifierProvider(
          create: (context) => InterstitalAds(),
        ),
        ChangeNotifierProvider(
          create: (context) => RewardedAds(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: 'Montserrat',
          scaffoldBackgroundColor: Color(0xffeff1ff),
          appBarTheme: AppBarTheme(
            color: Color(0xffeff1ff),
            elevation: 0.0,
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
