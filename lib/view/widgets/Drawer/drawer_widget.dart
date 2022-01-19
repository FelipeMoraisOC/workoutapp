import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Drawer(
      elevation: 16,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Align(
            alignment: const AlignmentDirectional(0, 0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.1,
                decoration: const BoxDecoration(),
                alignment: const AlignmentDirectional(0, 0),
                child: Text(
                  'Workout Protocoller',
                  style: textTheme.headline1,
                ),
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Protocols',
              style: textTheme.headline3,
            ),
            subtitle: Text(
              'Update protocols and workouts',
              style: textTheme.subtitle2,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Color(0xFF303030),
              size: 20,
            ),
            tileColor: const Color(0xFFF5F5F5),
            dense: false,
          ),
          ListTile(
            title: Text(
              'Profile',
              style: textTheme.headline3,
            ),
            subtitle: Text(
              'Update profile information',
              style: textTheme.subtitle2,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Color(0xFF303030),
              size: 20,
            ),
            tileColor: Color(0xFFF5F5F5),
            dense: false,
          ),
          ListTile(
            title: Text(
              'Settings',
              style: textTheme.headline3,
            ),
            subtitle: Text(
              'Change app and account settings',
              style: textTheme.subtitle2,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Color(0xFF303030),
              size: 20,
            ),
            tileColor: Color(0xFFF5F5F5),
            dense: false,
          ),
        ],
      ),
    );
  }
}
