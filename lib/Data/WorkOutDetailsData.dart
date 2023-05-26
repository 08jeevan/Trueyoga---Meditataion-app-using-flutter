import 'package:TrueYoga/Model/WorkOutDetailes.dart';

String imagepathname = 'assets/workoutgif/';

/* break */

simpleTest() {
  return WorkOutList(
    label: 'break',
    time: 15,
    indexno: 0,
    imgUrl: '',
  );
}

/* Immunity Booster WorkOut */

List<WorkOutDetails> immunityBooster = [
  WorkOutDetails(
    title: 'Yoga for Immunity boost',
    desc:
        'Exercising helps to boost our metabolism and if you choose the right kind of exercise it can also raise immunity and strengthen your respiratory system. Performing some easy yoga asanas can help to improve the immune system and strengthen the muscles of the lungs',
    workouts: immunityBoosterworkoutlist,
  ),
];

List<WorkOutList> immunityBoosterworkoutlist = [
  WorkOutList(
    label: 'Child Pose',
    time: 20,
    indexno: 1,
    imgUrl: '${imagepathname}child_pose-min.gif',
  ),
  simpleTest(),
  WorkOutList(
    label: 'Bow pose',
    time: 20,
    indexno: 2,
    imgUrl: '${imagepathname}bow_pose-min.gif',
  ),
  simpleTest(),
  WorkOutList(
    label: 'Cobra pose',
    time: 20,
    indexno: 3,
    imgUrl: '${imagepathname}cobra_pose-min.gif',
  ),
  simpleTest(),
  WorkOutList(
    label: 'Seated Forward Bend',
    time: 20,
    indexno: 4,
    imgUrl: '${imagepathname}seated_forward_bend-min.gif',
  ),
  simpleTest(),
  WorkOutList(
    label: 'Corpse Pose',
    time: 20,
    indexno: 5,
    imgUrl: '${imagepathname}corpse_pose-min.gif',
  ),
  simpleTest(),
  WorkOutList(
    label: 'Warrior Two',
    time: 20,
    indexno: 6,
    imgUrl: '${imagepathname}warrior_two-min.gif',
  ),
];

/* Increase Height WorkOut */

List<WorkOutDetails> increaseheight = [
  WorkOutDetails(
    title: 'Yoga for Increase Height',
    desc:
        'Yoga can make you grow taller by addressing a few key issues. Essentially, yoga stretches your spine, lengthens your back and leg muscles, and improves your posture. It also detoxifies your body, thus spurring the growth of healthy cells. A regular and consistent yoga schedule reduces stress and relaxes you. This, in turn, releases growth hormones which increases the height naturally. \nDisclaimer: Yoga will certainly make a difference to a person’s height, especially during the crucial growing-up years. However, it is important to factor in genetics, nutrition and the general state of health. And remember, your height may not be the only reason why people will look up to you. Just think tall, stand tall, walk tall, and the world will be at your feet',
    workouts: increaseheightworkoutlist,
  ),
];

List<WorkOutList> increaseheightworkoutlist = [
  WorkOutList(
    label: 'Mountain Pose',
    time: 5,
    indexno: 1,
    imgUrl: '${imagepathname}mountain_pose-min.gif',
  ),
  simpleTest(),
  WorkOutList(
    label: 'Tree Pose',
    time: 5,
    indexno: 2,
    imgUrl: '${imagepathname}tree_pose-min.gif',
  ),
  simpleTest(),
  WorkOutList(
    label: 'Camel Pose',
    time: 5,
    indexno: 3,
    imgUrl: '${imagepathname}camel_pose-min.gif',
  ),
  simpleTest(),
  WorkOutList(
    label: 'Seated Forward Bend',
    time: 5,
    indexno: 4,
    imgUrl: '${imagepathname}seated_forward_bend-min.gif',
  ),
  simpleTest(),
  WorkOutList(
    label: 'Cobra Pose',
    time: 5,
    indexno: 5,
    imgUrl: '${imagepathname}cobra_pose-min.gif',
  ),
  simpleTest(),
  WorkOutList(
    label: 'Bow Pose',
    time: 5,
    indexno: 6,
    imgUrl: '${imagepathname}bow_pose-min.gif',
  ),
];

// /* Glowing face WorkOut */

List<WorkOutDetails> glowingface = [
  WorkOutDetails(
    title: 'Yoga for Skin Glow',
    desc:
        'Yoga can also make your skin appear healthier and more vibrant. Some positions can provide temporary benefits, and over time, a regular yoga practice may address some of the factors that are contributing to dull-looking skin',
    workouts: glowingfaceworkoutlist,
  ),
];

List<WorkOutList> glowingfaceworkoutlist = [
  WorkOutList(
    label: 'Forward Fold',
    time: 20,
    indexno: 1,
    imgUrl: '${imagepathname}forward_fold-min.gif',
  ),
  simpleTest(),
  WorkOutList(
    label: 'Downward Facing Dog',
    time: 20,
    indexno: 2,
    imgUrl: '${imagepathname}downward_facing_dog_pose-min.gif',
  ),
  simpleTest(),
  WorkOutList(
    label: 'Dolphin Pose',
    time: 20,
    indexno: 3,
    imgUrl: '${imagepathname}dolphine_pose-min.gif',
  ),
  simpleTest(),
  WorkOutList(
    label: 'Cobra Pose',
    time: 20,
    indexno: 4,
    imgUrl: '${imagepathname}cobra_pose-min.gif',
  ),
  simpleTest(),
  WorkOutList(
    label: 'Triangle Pose',
    time: 30,
    indexno: 5,
    imgUrl: '${imagepathname}triangle_pose-min.gif',
  ),
  simpleTest(),
  WorkOutList(
    label: 'Mountain Pose',
    time: 30,
    indexno: 6,
    imgUrl: '${imagepathname}mountain_pose-min.gif',
  ),
  simpleTest(),
  WorkOutList(
    label: 'Plough Pose',
    time: 20,
    indexno: 7,
    imgUrl: '${imagepathname}plow_pose-min.gif',
  ),
];

// /* Healthy hair WorkOut */

List<WorkOutDetails> healthyhair = [
  WorkOutDetails(
    title: 'Yoga for Hair Growth',
    desc:
        'Healthy hair can enhance a person’s appearance. Yoga may or may not enhance your hair health, but it can certainly act as a stress reliever and improve your well-being.',
    workouts: healthyhairworkoutlist,
  ),
];

List<WorkOutList> healthyhairworkoutlist = [
  WorkOutList(
    label: 'Standing Forward Bend',
    time: 30,
    indexno: 1,
    imgUrl: '${imagepathname}standing_forward_bend-min.gif',
  ),
  simpleTest(),
  WorkOutList(
    label: 'Downward Facing Dog',
    time: 30,
    indexno: 2,
    imgUrl: '${imagepathname}downward_facing_dog_pose-min.gif',
  ),
  simpleTest(),
  WorkOutList(
    label: 'Wide-Legged Standing Forward Bend',
    time: 30,
    indexno: 3,
    imgUrl: '${imagepathname}wide_legged_forward_bend-min.gif',
  ),
  simpleTest(),
  WorkOutList(
    label: 'Rabbit Pose',
    time: 30,
    indexno: 4,
    imgUrl: '${imagepathname}rabbit_pose.jpg',
  ),
  simpleTest(),
  WorkOutList(
    label: 'Child Pose',
    time: 30,
    indexno: 5,
    imgUrl: '${imagepathname}child_pose-min.gif',
  ),
];

// /* Back Pain WorkOut */

List<WorkOutDetails> backpain = [
  WorkOutDetails(
    title: 'Yoga for Back Pain',
    desc:
        'Monsoon brings a variety of infections and diseases. To counter this, it is necessary that you improve the functioning of your immune system. Many don\'t know that practicing yoga can help boost immunity. With yoga, there is no excuse of bad weather as it can be easily done at home. All you need to do is roll out your yoga mat and begin your practise of asanas, pranayama or meditation. Here are a few asanas that are designed to give you the added benefits of increased immunity. They can help in preventing weight gain, boost immunity and maintain fitness during the rainy season',
    workouts: backpainworkoutlist,
  ),
];

List<WorkOutList> backpainworkoutlist = [
  WorkOutList(
    label: 'Cat Cow',
    time: 30,
    indexno: 1,
    imgUrl: '${imagepathname}cat_cow_pose-min.gif',
  ),
  simpleTest(),
  WorkOutList(
    label: 'Downward Facing Dog',
    time: 30,
    indexno: 2,
    imgUrl: '${imagepathname}downward_facing_dog_pose-min.gif',
  ),
  simpleTest(),
  WorkOutList(
    label: 'Extended Triangle',
    time: 30,
    indexno: 3,
    imgUrl: '${imagepathname}extended_side_angle_pose-min.gif',
  ),
  simpleTest(),
  WorkOutList(
    label: 'Sphinx Pose',
    time: 30,
    indexno: 4,
    imgUrl: '${imagepathname}sphinx_pose-min.gif',
  ),
  simpleTest(),
  WorkOutList(
    label: 'Cobra Pose',
    time: 30,
    indexno: 5,
    imgUrl: '${imagepathname}cobra_pose-min.gif',
  ),
  simpleTest(),
  WorkOutList(
    label: 'Locust Pose',
    time: 30,
    indexno: 6,
    imgUrl: '${imagepathname}loctus_pose-min.gif',
  ),
  simpleTest(),
  WorkOutList(
    label: 'Bridge Pose',
    time: 30,
    indexno: 7,
    imgUrl: '${imagepathname}bridge_pose-min.gif',
  ),
  simpleTest(),
  WorkOutList(
    label: 'Two Knee Spinal Twist',
    time: 30,
    indexno: 8,
    imgUrl: '${imagepathname}two_knee_spinal_twist-min.gif',
  ),
  simpleTest(),
  WorkOutList(
    label: 'Child Pose',
    time: 30,
    indexno: 9,
    imgUrl: '${imagepathname}child_pose-min.gif',
  ),
];
