import 'package:TrueYoga/Data/WorkOutDetailsData.dart';
import 'package:TrueYoga/Model/HomePageListTile.dart';

String pathname = 'assets/homepagetiles/';

List homePageListTileData = [
  HomePageListTiles(
    bgImg: '${pathname}tileone.png',
    categoryName: glowingface,
    workoutsList: glowingfaceworkoutlist,
  ),
  HomePageListTiles(
    bgImg: '${pathname}tiletwo.png',
    categoryName: healthyhair,
    workoutsList: healthyhairworkoutlist,
  ),
  HomePageListTiles(
    bgImg: '${pathname}tilethree.png',
    categoryName: backpain,
    workoutsList: backpainworkoutlist,
  ),
  HomePageListTiles(
    bgImg: '${pathname}tilefour.png',
    categoryName: immunityBooster,
    workoutsList: immunityBoosterworkoutlist,
  ),
  HomePageListTiles(
    bgImg: '${pathname}tilefive.png',
    categoryName: increaseheight,
    workoutsList: increaseheightworkoutlist,
  ),
];
