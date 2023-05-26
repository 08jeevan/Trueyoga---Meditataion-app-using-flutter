import 'package:TrueYoga/Const.dart';
import 'package:TrueYoga/Widgets/LoadingIndicator.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ArticlesPage extends StatelessWidget {
  final CollectionReference moreworkoutinfo =
      FirebaseFirestore.instance.collection('Articles');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: FutureBuilder<DocumentSnapshot>(
        future: moreworkoutinfo.doc('8VEecGIP2n9ER6lufANz').get(),
        builder:
            (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
          if (snapshot.hasError) {
            return Container(
              height: 250.0,
              child: Center(
                child: Text("Something went wrong"),
              ),
            );
          }
          if (snapshot.hasData && !snapshot.data!.exists) {
            return Container(
              height: 250.0,
              child: Center(
                child: Text("Something went wrong"),
              ),
            );
          }

          if (snapshot.connectionState == ConnectionState.done) {
            Map<String, dynamic> data =
                snapshot.data!.data() as Map<String, dynamic>;
            return Padding(
              padding: kpaddingh20,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ksizedBox15,
                    '${data['title']}' == ''
                        ? Container()
                        : Text(
                            '${data['title']}',
                            style: klargeStyle,
                          ),
                    ksizedBox15,
                    '${data['image']}' == ''
                        ? Container()
                        : Image.network('${data['image']}'),
                    ksizedBox15,
                    '${data['content']}' == ''
                        ? Container()
                        : Text(
                            '${data['content']}',
                            style: kmediumStyle,
                          ),
                    ksizedBox20,
                  ],
                ),
              ),
            );
          }

          return Center(
            child: loadingIndicator(
              text: 'Loading',
            ),
          );
        },
      ),
    );
  }
}
