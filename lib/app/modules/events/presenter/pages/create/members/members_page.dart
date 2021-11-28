import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:resenha/app/modules/events/presenter/pages/create/members/members_controller.dart';
import 'package:resenha/app/modules/events/presenter/widgets/button/button.dart';
import 'package:resenha/app/shared/themes/colors_themes.dart';

class MembersPage extends StatefulWidget {
  const MembersPage({Key? key}) : super(key: key);

  @override
  _MembersPageState createState() => _MembersPageState();
}

class _MembersPageState extends ModularState<MembersPage, MembersController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: ColorsThemes.backgroundGradient,
      ),
      child: Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(10),
          child: ButtonWidget(
            onTap: () => {},
          ),
        ),
      ),
    );
  }
}
