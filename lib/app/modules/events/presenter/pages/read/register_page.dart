import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:resenha/app/modules/events/presenter/widgets/floating_button_widget.dart';
import 'package:resenha/app/themes/colors_themes.dart';

class ReadPage extends StatefulWidget {
  const ReadPage({Key? key}) : super(key: key);

  @override
  _ReadPageState createState() => _ReadPageState();
}

class _ReadPageState extends State<ReadPage> {
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
