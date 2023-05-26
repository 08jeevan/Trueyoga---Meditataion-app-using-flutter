import 'package:TrueYoga/Const.dart';
import 'package:TrueYoga/Screens/StreamBuilder/StreamProvider.dart';
import 'package:TrueYoga/Screens/WorkoutPageView.dart';
import 'package:TrueYoga/Widgets/RaisedButton.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class DetailesPage extends StatefulWidget {
  final List listname, listworkoutname;
  final String img;

  DetailesPage({
    required this.listname,
    required this.listworkoutname,
    required this.img,
  });

  @override
  _DetailesPageState createState() => _DetailesPageState();
}

class _DetailesPageState extends State<DetailesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: widget.listname.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          widget.img.toString(),
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 50.0,
                          child: raisedButtonfill(
                            icon: Ionicons.play_forward,
                            label: 'Start Workout',
                            onTap: () {
                              kpageAnimation(
                                context,
                                WorkOutPageView(
                                  workoutname: widget.listworkoutname,
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    ksizedBox20,
                    Padding(
                      padding: kpaddingh20,
                      child: ExpandablePanel(
                        header: Padding(
                          padding: kpaddingv10,
                          child: Text('Description', style: kmediumStyle),
                        ),
                        expanded: Text(
                          widget.listname[index].desc,
                          softWrap: true,
                        ),
                        collapsed: Container(),
                      ),
                    ),
                    Divider(
                      color: Colors.grey.shade300,
                      endIndent: 20.0,
                      indent: 20.0,
                      height: 30.0,
                    ),
                  ],
                );
              },
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: widget.listworkoutname.length,
              itemBuilder: (context, index) {
                if (widget.listworkoutname[index].label == 'break' ||
                    widget.listworkoutname[index].label == 'start') {
                  return Container();
                } else {
                  return ListTile(
                    leading: Text(
                      '0${widget.listworkoutname[index].indexno.toString()}',
                      style: klargeStyle,
                    ),
                    title: Text(
                      widget.listworkoutname[index].label,
                      style: kmediumStyle,
                    ),
                    onTap: () {
                      kpageAnimation(
                        context,
                        WorkOutDetailesArticles(
                          docname:
                              widget.listworkoutname[index].label.toString(),
                        ),
                      );
                    },
                  );
                }
              },
            ),
            ksizedBox20,
          ],
        ),
      ),
    );
  }
}
