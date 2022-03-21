import 'package:flutter/material.dart';
import 'package:workout_creator/view/widgets/ProtocolCard/protocol_card_widget.dart';
import 'package:workout_creator/view/widgets/WorkoutCard/workout_card_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListView(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 10),
            child: Text(
              "Welcome, {{user}}\nYour workout today is",
              style: textTheme.headline1,
            ),
          ),
          WorkoutCardWidget(
            urlImage: "",
            duration: "1 hour 30 mins",
            categorie: "Powerbuilding",
            objective: "Weight progression",
            exercises: 6,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 10),
            child: Text(
              "Others Protocols",
              style: textTheme.headline1,
            ),
          ),
          const ProtocolCardWidget(
            title: "Powerlifter",
            urlImage:
                "https://images.contentstack.io/v3/assets/blt45c082eaf9747747/blt173bcd45f24b3a1d/5de0b6550159607f45d26f9d/Deadlift_Header_jpg_copy.jpg",
            objective:
                "Increase gradualy payload util reach technical failure with only one repetion left.",
            duration: "2 weeks",
            workoutPerWeek: "5",
          ),
        ],
      ),
    );
  }
}
