import 'package:TrueYoga/AdsHelper/InterstitalAds.dart';
import 'package:TrueYoga/AdsHelper/NativeAds_Medium.dart';
import 'package:TrueYoga/Const.dart';
import 'package:TrueYoga/Data/HomePageListTileData.dart';
import 'package:TrueYoga/Data/WeightLoaddYoga.dart';
import 'package:TrueYoga/Screens/DetailsPage.dart';
import 'package:TrueYoga/Screens/Others/OptionsPage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';
import 'package:ionicons/ionicons.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Stream<QuerySnapshot> streambuilder =
      FirebaseFirestore.instance.collection('Articles').snapshots();

  @override
  Widget build(BuildContext context) {
    var greetingmessage = '';

    DateTime now = DateTime.now();
    var timeNow = int.parse(DateFormat('kk').format(now));
    if (timeNow <= 12) {
      greetingmessage = 'Good Morning!';
    } else if ((timeNow > 12) && (timeNow <= 16)) {
      greetingmessage = 'Good Afternoon!';
    } else if ((timeNow > 16) && (timeNow < 20)) {
      greetingmessage = 'Good Evening!';
    } else {
      greetingmessage = 'Good Night!';
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: kpaddingh20,
              height: 100.0,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            greetingmessage.toString(),
                            style: kcustomStyle(
                              Colors.grey.shade500,
                              12.0,
                              FontWeight.w500,
                            ),
                          ),
                          ksizedBox5,
                          Text('Welcome Back!', style: klargeStyle),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      kpageAnimation(context, OptionsPage());
                    },
                    child: Icon(
                      Ionicons.menu,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: kpaddingh20,
              child: ExpandablePanel(
                theme: ExpandableThemeData(hasIcon: false, useInkWell: false),
                header: Padding(
                  padding: kpaddingv10,
                  child: Container(
                    child: Image.asset(
                      'assets/homepagetiles/fatburning.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                expanded: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              kpageAnimation(
                                context,
                                DetailesPage(
                                  img: 'assets/homepagetiles/fatburningb.png',
                                  listname: weightLossBeginner,
                                  listworkoutname: weightLossBeginnerlist,
                                ),
                              );
                            },
                            child: Container(
                              child: Image.asset(
                                'assets/homepagetiles/fatburningb.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        ksizedBoxwidth15,
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              kpageAnimation(
                                context,
                                DetailesPage(
                                  img: 'assets/homepagetiles/fatburninga.png',
                                  listname: weightLossAdvanced,
                                  listworkoutname: weightLossAdvancedlist,
                                ),
                              );
                            },
                            child: Container(
                              child: Image.asset(
                                'assets/homepagetiles/fatburninga.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    ksizedBox20,
                    Divider(
                      height: 0.0,
                      indent: 25.0,
                      endIndent: 25.0,
                      color: Colors.grey.shade600,
                    ),
                  ],
                ),
                collapsed: Container(),
              ),
            ),

            ksizedBox20,
            // Padding(
            //   padding: kpaddingh20,
            //   child: Row(
            //     children: [
            //       Expanded(
            //         child: GestureDetector(
            //           onTap: () {
            //             kpageAnimation(
            //               context,
            //               DetailesPage(
            //                 img: 'assets/homepagetiles/sunriseyoga.png',
            //                 listname: morningWorkout,
            //                 listworkoutname: morningWorkoutlist,
            //               ),
            //             );
            //           },
            //           child: Container(
            //             child: Image.asset(
            //               'assets/homepagetiles/sunriseyoga.png',
            //               fit: BoxFit.contain,
            //             ),
            //           ),
            //         ),
            //       ),
            //       ksizedBoxwidth15,
            //       Expanded(
            //         child: GestureDetector(
            //           onTap: () {
            //             kpageAnimation(
            //               context,
            //               DetailesPage(
            //                 img: 'assets/homepagetiles/bedtimeyoga.png',
            //                 listname: bedtimeWorkout,
            //                 listworkoutname: bedtimeWorkoutlist,
            //               ),
            //             );
            //           },
            //           child: Container(
            //             child: Image.asset(
            //               'assets/homepagetiles/bedtimeyoga.png',
            //               fit: BoxFit.contain,
            //             ),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            ksizedBox20,
            Padding(
              padding: kpaddingh20,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Healthy Life',
                  style: klargeStyle,
                ),
              ),
            ),
            ksizedBox15,

            GridView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              padding: kpaddingh20,
              itemCount: homePageListTileData.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12.0,
                mainAxisSpacing: 12.0,
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    kpageAnimation(
                      context,
                      DetailesPage(
                        img: homePageListTileData[index].bgImg,
                        listname: homePageListTileData[index].categoryName,
                        listworkoutname:
                            homePageListTileData[index].workoutsList,
                      ),
                    );
                  },
                  child: Container(
                    child: Image.asset(
                      homePageListTileData[index].bgImg,
                      fit: BoxFit.contain,
                    ),
                  ),
                );
              },
            ),
            ksizedBox20,
            Padding(
              padding: kpaddingh20,
              child: NativeAds(),
            ),
            // StreamBuilder<QuerySnapshot>(
            //   stream: streambuilder,
            //   builder: (BuildContext context,
            //       AsyncSnapshot<QuerySnapshot> snapshot) {
            //     if (snapshot.hasError) {
            //       return Container();
            //     }

            //     if (snapshot.connectionState == ConnectionState.waiting) {
            //       return Container();
            //     }

            //     return Column(
            //       children: [
            //         Padding(
            //           padding: kpaddingh20,
            //           child: Align(
            //             alignment: Alignment.centerLeft,
            //             child: Text(
            //               'Articles for you',
            //               style: klargeStyle,
            //             ),
            //           ),
            //         ),
            //         ksizedBox10,
            //         Container(
            //           height: 220.0,
            //           width: MediaQuery.of(context).size.width,
            //           child: ListView(
            //             padding: kpaddingh10,
            //             scrollDirection: Axis.horizontal,
            //             children: snapshot.data!.docs.map(
            //               (DocumentSnapshot document) {
            //                 Map<String, dynamic> data =
            //                     document.data()! as Map<String, dynamic>;
            //                 return GestureDetector(
            //                   onTap: () {},
            //                   child: Padding(
            //                     padding: kpaddingh10,
            //                     child: Container(
            //                       width: 200.0,
            //                       child: Stack(
            //                         alignment: Alignment.center,
            //                         children: <Widget>[
            //                           ClipRRect(
            //                             borderRadius:
            //                                 BorderRadius.circular(5.0),
            //                             child: Image.network(
            //                               data['image'],
            //                               fit: BoxFit.cover,
            //                               height: 240.0,
            //                             ),
            //                           ),
            //                           Positioned(
            //                             bottom: 5.0,
            //                             left: 5.0,
            //                             right: 5.0,
            //                             child: Container(
            //                               padding: kpaddingall10,
            //                               decoration: BoxDecoration(
            //                                 borderRadius:
            //                                     BorderRadius.circular(5.0),
            //                                 color: Colors.white,
            //                               ),
            //                               child: Text(data['title']),
            //                             ),
            //                           ),
            //                         ],
            //                       ),
            //                     ),
            //                   ),
            //                 );
            //               },
            //             ).toList(),
            //           ),
            //         ),
            //       ],
            //     );
            //   },
            // ),
            ksizedBox20, ksizedBox20,
          ],
        ),
      ),
    );
  }
}
