import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppBarMain extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const AppBarMain({
    Key? key,
    required this.scaffoldKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF222831),
      automaticallyImplyLeading: true,
      leading: IconButton(
        iconSize: 60,
        color: const Color(0x00F5F5F5),
        icon: const FaIcon(
          FontAwesomeIcons.bars,
          color: Color(0xFFF5F5F5),
          size: 24,
        ),
        onPressed: () async {
          scaffoldKey.currentState!.openDrawer();
        },
      ),
      actions: [
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
          child: Container(
            width: 80,
            height: 70,
            decoration: const BoxDecoration(),
            child: Align(
              alignment: const AlignmentDirectional(0, 0),
              child: Container(
                width: 47,
                height: 47,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.network('https://picsum.photos/seed/179/600'),
              ),
            ),
          ),
        ),
      ],
      centerTitle: true,
      elevation: 4,
    );
  }
}
