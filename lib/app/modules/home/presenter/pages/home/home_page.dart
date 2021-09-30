import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:resenha/app/modules/home/presenter/widgets/app_bar_home_widget.dart';
import 'package:resenha/app/modules/home/presenter/widgets/floating_button_widget.dart';
import 'package:resenha/app/themes/colors_themes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: ColorsThemes.backgroundGradient,
      ),
      child: Scaffold(
        appBar: AppBarHomeWidget(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingButtonWidget(
          icon: Icons.add,
          onTap: () => Modular.to.navigate("/event/register"),
        ),
      ),
    );
  }
}
