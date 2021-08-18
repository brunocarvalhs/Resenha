import 'package:flutter/material.dart';
import 'package:resenha/modules/event/widgets/app_bar_event/app_bar_event_widget.dart';

class EventNewScreen extends StatefulWidget {
  const EventNewScreen({Key? key}) : super(key: key);

  @override
  _EventNewScreenState createState() => _EventNewScreenState();
}

class _EventNewScreenState extends State<EventNewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarEventWidget(
        routerBack: () => Navigator.pop(context),
        icon: Icons.settings,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 22),
                    child: Text("Categoria"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
