class WorkOutDetails {
  String title;
  String desc;
  List<WorkOutList> workouts;

  WorkOutDetails({
    required this.title,
    required this.desc,
    required this.workouts,
  });
}

class WorkOutList {
  var label;
  int time;
  int indexno;
  String imgUrl;

  WorkOutList({
    required this.label,
    required this.time,
    required this.indexno,
    required this.imgUrl,
  });
}
