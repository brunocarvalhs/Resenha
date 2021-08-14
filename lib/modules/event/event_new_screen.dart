import 'package:flutter/material.dart';
import 'package:resenha/modules/event/widgets/app_bar_event_widget.dart';

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
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.settings,
            size: 30,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(child: Text("")),
    );
  }
}
