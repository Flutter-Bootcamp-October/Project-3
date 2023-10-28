import 'package:flutter/material.dart';

List<Map> coachsData = [
  {"name": "Martha", "imagePath": "lib/assets/images/Martha.jpg"},
  {"name": "Henry", "imagePath": "lib/assets/images/Henry.jpg"},
  {"name": "Tom", "imagePath": "lib/assets/images/Tom.jpg"}
];

List<Map> metersData = [
  {
    "label": "Steps",
    "icon": 'lib/assets/icons/activity.png',
    "percent": 4534,
    "total": 10000,
    "isMain": true
  },
  {
    "label": "Zone Min",
    "icon": 'lib/assets/icons/comfort-zone.png',
    "percent": 1,
    "total": 22,
    "isMain": false
  },
  {
    "label": "mi",
    "icon": 'lib/assets/icons/location.png',
    "percent": 1.88,
    "total": 5,
    "isMain": false
  },
  {
    "label": "cal",
    "icon": 'lib/assets/icons/fire.png',
    "percent": 1834,
    "total": 2260,
    "isMain": false
  }
];

List<Map> postssData = [
  {
    "title": "Velveteen Rabbit",
    "icon": Icons.headphones_outlined,
    "type": "Mindfulness",
    "imagePath": "lib/assets/images/forest.jpg",
    "time": "32 min"
  },
  {
    "title": "Total Body Dumbell",
    "icon": Icons.play_circle_outline,
    "type": "Workout",
    "imagePath": "lib/assets/images/dumbell_workout.jpg",
    "time": "15 min"
  },
  {
    "title": "Morning Clarity Run",
    "icon": Icons.headphones_outlined,
    "type": "Workout",
    "imagePath": "lib/assets/images/run.jpg",
    "time": "30 min"
  },
  {
    "title": "Deep Sleep Relax",
    "icon": Icons.headphones_outlined,
    "type": "Mindfulness",
    "imagePath": "lib/assets/images/sleeping_cat.jpg",
    "time": "20 mi"
  },
  {
    "title": "Get Grounded Yoga",
    "icon": Icons.headphones_outlined,
    "type": "Workout",
    "imagePath": "lib/assets/images/yoga.jpg",
    "time": "12 min"
  }
];

//--------------------------------------------------
List<Map> coachScreenButtons = [
  {"text": "Available to you", "icon": Icons.lock_open},
  {"text": "Favorites", "icon": Icons.bookmark_border_outlined},
  {"text": "Strength", "icon": Icons.handshake_outlined},
  {"text": "Mindfulness", "icon": Icons.landscape},
  {"text": "Cardio", "icon": Icons.favorite},
  {"text": "Cardio", "icon": Icons.self_improvement_rounded},
  {"text": "Mobility & recovery", "icon": Icons.run_circle},
  {"text": "New from Fitbit", "icon": Icons.fitbit},
];

List<List<Map>> bottomSheet = [
  [
    {"text": "Start excercise", "icon": Icons.run_circle},
    {"text": "Start sleep", "icon": Icons.hotel},
  ],
  [
    {"text": "Activity", "icon": Icons.directions_walk_outlined},
    {"text": "Sleep", "icon": Icons.nights_stay_outlined},
    {"text": "Food", "icon": Icons.dining_outlined},
    {"text": "Water", "icon": Icons.water_drop_outlined},
    {"text": "Weight", "icon": Icons.monitor_weight_outlined},
    {"text": "Cycle details", "icon": Icons.sync},
  ]
];

List<Map> friends = [
  {
    "name": "Sara S.",
    "message": "Hey, wanna go for a run tonight?",
    "time": "Oct 6, 2023",
    "image": "lib/assets/images/friend.png"
  },
  {
    "name": "Sophie A.",
    "message": "Thanks!",
    "time": "Oct 4, 2023",
    "image": "lib/assets/images/friend2.png"
  },
];

List<String> community = [
  "lib/assets/images/family-removebg-preview.png",
  "lib/assets/images/friends-removebg-preview.png",
  "lib/assets/images/groups-removebg-preview.png",
  "lib/assets/images/feed-removebg-preview.png"
];

List<Map> goals = [
  {"title": "Sleep", "goals": "3 goals", "icon": "lib/assets/icons/sleep.png"},
  {
    "title": "Activity",
    "goals": "6 goals",
    "icon": "lib/assets/icons/activity.png"
  },
  {
    "title": "Health",
    "goals": "6 goals",
    "icon": "lib/assets/icons/health.png"
  },
  {
    "title": "Mindfulness",
    "goals": "1 goal",
    "icon": "lib/assets/icons/mindfulness.png"
  },
  {
    "title": "Nutrition",
    "goals": "2 goals",
    "icon": "lib/assets/icons/nutrition.png"
  },
];
