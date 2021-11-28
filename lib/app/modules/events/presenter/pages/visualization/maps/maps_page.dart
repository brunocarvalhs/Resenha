import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:resenha/app/modules/events/presenter/pages/visualization/maps/maps_controller.dart';
import 'package:resenha/app/modules/events/presenter/widgets/floatind_button/floating_button_widget.dart';
import 'package:resenha/app/shared/themes/colors_themes.dart';

class MapsPage extends StatefulWidget {
  const MapsPage({Key? key}) : super(key: key);

  @override
  _MapsPageState createState() => _MapsPageState();
}

class _MapsPageState extends ModularState<MapsPage, MapsController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: ColorsThemes.backgroundGradient,
      ),
      child: Scaffold(
        floatingActionButton: FloatingButtonWidget(
          icon: Icons.add,
          onTap: () {},
        ),
      ),
    );
  }
}
