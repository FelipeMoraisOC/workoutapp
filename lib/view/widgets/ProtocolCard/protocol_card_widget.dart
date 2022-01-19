import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProtocolCardWidget extends StatelessWidget {
  final String title;
  final String urlImage;
  final String objective;
  final String duration;
  final String workoutPerWeek;

  const ProtocolCardWidget({
    Key? key,
    required this.title,
    required this.urlImage,
    required this.objective,
    required this.duration,
    required this.workoutPerWeek,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final ThemeData themeData = Theme.of(context);
    return InkWell(
      onTap: () async {
        // await showModalBottomSheet(
        //   isScrollControlled: true,
        //   backgroundColor: Colors.transparent,
        //   context: context,
        //   builder: (context) {
        //     return Padding(
        //       padding: MediaQuery.of(context).viewInsets,
        //       child: Container(
        //         height: MediaQuery.of(context).size.height * 0.6,
        //         child: TreinoBottomSheetWidget(),
        //       ),
        //     );
        //   },
        // );
      },
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  child: Image.network(
                    urlImage,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.25,
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Color(0xC0222831),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(20),
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    alignment: const AlignmentDirectional(-0.8, 0),
                    child: Text(
                      title,
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsetsDirectional.all(10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 120,
                decoration: const BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: FaIcon(
                            FontAwesomeIcons.chartBar,
                            color: themeData.primaryColor,
                            size: 14,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 3),
                            child: AutoSizeText(
                              "Objective: $objective",
                              style: textTheme.bodyText1,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.hourglassHalf,
                          color: themeData.primaryColor,
                          size: 14,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 3),
                          child: Text(
                            "Duration: $duration",
                            style: textTheme.bodyText1,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.dumbbell,
                          color: themeData.primaryColor,
                          size: 14,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 3),
                          child: Text(
                            "Workouts per week: $workoutPerWeek",
                            style: textTheme.bodyText1,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
