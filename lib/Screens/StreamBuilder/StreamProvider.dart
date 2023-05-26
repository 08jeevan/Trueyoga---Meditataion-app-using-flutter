import 'package:TrueYoga/AdsHelper/NativeAds_Banner.dart';
import 'package:TrueYoga/Const.dart';
import 'package:TrueYoga/Widgets/LoadingIndicator.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class WorkOutDetailesArticles extends StatefulWidget {
  final String docname;
  WorkOutDetailesArticles({required this.docname});

  @override
  State<WorkOutDetailesArticles> createState() =>
      _WorkOutDetailesArticlesState();
}

class _WorkOutDetailesArticlesState extends State<WorkOutDetailesArticles> {
  CollectionReference moreworkoutinfo =
      FirebaseFirestore.instance.collection('ExcInfo');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: kpaddingh20,
          child: FutureBuilder<DocumentSnapshot>(
            future: moreworkoutinfo.doc(widget.docname).get(),
            builder: (BuildContext context,
                AsyncSnapshot<DocumentSnapshot> snapshot) {
              if (snapshot.hasError) {
                return Center(
                  child: Text("Something went wrong"),
                );
              }
              if (snapshot.hasData && !snapshot.data!.exists) {
                return Center(
                  child: Text("Something went wrong"),
                );
              }

              if (snapshot.connectionState == ConnectionState.done) {
                Map<String, dynamic> data =
                    snapshot.data!.data() as Map<String, dynamic>;
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ksizedBox20,
                    Text(
                      '${data['title']}',
                      style: klargeStyle,
                    ),
                    ksizedBox5,
                    Text(
                      '${data['subtitle']}',
                      style: kmediumStyle,
                    ),
                    ksizedBox15,
                    descBoxDecTitle(
                      title: 'Description',
                      color: Colors.blue.shade100,
                    ),
                    descBoxBody(
                      label: '${data['desc']}',
                      color: Colors.blue.shade100,
                    ),
                    ksizedBox15,
                    descBoxDecTitle(
                      title: 'Benifits',
                      color: Colors.blue.shade100,
                    ),
                    descBoxBody(
                      label: '${data['benifits']}',
                      color: Colors.blue.shade100,
                    ),
                    ksizedBox15,
                    NativeBannerAds(),
                    ksizedBox15,
                    descBoxDecTitle(
                      title: 'Caution',
                      color: Colors.red.shade200,
                    ),
                    descBoxBody(
                      label: '${data['caution']}',
                      color: Colors.red.shade200,
                    ),
                    ksizedBox15,
                  ],
                );
              }
              return Center(
                child: loadingIndicator(
                  text: 'Loading...',
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

Widget descBoxDecTitle({required String title, required Color color}) {
  return Container(
    padding: kpaddingall10,
    width: double.infinity,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(8.0),
        topRight: Radius.circular(8.0),
      ),
    ),
    child: Center(
      child: Text(
        title,
        style: kmediumStyle,
      ),
    ),
  );
}

Widget descBoxBody({required String label, required Color color}) {
  return Container(
    padding: kpaddingall10,
    decoration: BoxDecoration(
      border: Border.all(
        color: color,
      ),
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(8.0),
        bottomRight: Radius.circular(8.0),
      ),
    ),
    child: Text(
      label,
      style: ksmallStyle,
    ),
  );
}
