import 'package:flutter/material.dart';
import 'package:resenha/modules/event/widgets/app_bar_event_widget.dart';
import 'package:resenha/shared/themes/app_dimensions.dart';

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
      body: SafeArea(child: Text("")),
    );
  }
}
