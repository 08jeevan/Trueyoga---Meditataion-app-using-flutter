import 'package:TrueYoga/Const.dart';
import 'package:TrueYoga/Provider/Storage_Utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalendarPage extends StatefulWidget {
  final String stageLevel;

  CalendarPage({required this.stageLevel});

  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  late int startingDate = 1;

  colorsetter(index) {
    if (Provider.of<StorageUtil>(context).valu == index + 1) {
      return BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10.0),
      );
    } else {
      return BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10.0),
      );
    }
  }

  StorageUtil storageUtil = StorageUtil();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(widget.stageLevel),
            ListView.separated(
              shrinkWrap: true,
              padding: kpaddingall10,
              itemCount: 30,
              physics: ClampingScrollPhysics(),
              separatorBuilder: (context, index) {
                return Container();
              },
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  child: Container(
                    decoration: colorsetter(index),
                    child: ListTile(
                      title: Text(
                        'Day ${index + 1}',
                        style: kcustomStyle(
                          Colors.white,
                          15.0,
                          FontWeight.w600,
                        ),
                      ),
                      trailing: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        height: double.infinity,
                        width: 100.0,
                        child: Center(
                          child: Text('Start'),
                        ),
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
