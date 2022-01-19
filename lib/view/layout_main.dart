import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:workout_creator/view/widgets/AppBar/appbar_main.dart';
import 'package:workout_creator/view/widgets/BottomSheets/novo_treino_bottom_sheet_widget.dart';
import 'package:workout_creator/view/widgets/Drawer/drawer_widget.dart';

class LayoutMain extends StatelessWidget {
  final Widget child;
  const LayoutMain({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBarMain(
          scaffoldKey: scaffoldKey,
        ),
      ),
      backgroundColor: const Color(0xFFF8F8F8),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            context: context,
            builder: (context) {
              return Padding(
                padding: MediaQuery.of(context).viewInsets,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: const NovoTreinoBottomSheetWidget(),
                ),
              );
            },
          );
        },
        backgroundColor: const Color(0xFF222831),
        elevation: 8,
        child: const FaIcon(
          FontAwesomeIcons.plus,
          color: Color(0xFFF5F5F5),
          size: 20,
        ),
      ),
      drawer: const DrawerWidget(),
      body: SafeArea(child: child),
    );
  }
}
