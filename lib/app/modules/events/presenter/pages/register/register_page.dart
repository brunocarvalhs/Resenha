import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:resenha/app/modules/events/presenter/widgets/floatind_button/floating_button_widget.dart';
import 'package:resenha/app/shared/themes/colors_themes.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: ColorsThemes.backgroundGradient,
      ),
      child: Scaffold(
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
          onTap: () => Modular.to.pushNamed("/event/register"),
        ),
      ),
    );
  }
}
