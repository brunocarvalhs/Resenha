import 'package:flutter/material.dart';
import 'package:resenha/shared/models/event_model.dart';
import 'package:resenha/shared/widgets/event_list/event_list_controller.dart';
import 'package:resenha/shared/widgets/event_tile/event_tile_widget.dart';

class EventListWidget extends StatefulWidget {
  EventListWidget({Key? key}) : super(key: key);

  @override
  _EventListWidgetState createState() => _EventListWidgetState();
}

class _EventListWidgetState extends State<EventListWidget> {
  final controller = EventListController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<List<EventModel>>(
      valueListenable: controller.eventNotifier,
      builder: (_, events, __) => Column(
        children: events.map((e) => EventTileWidget(data: e)).toList(),
      ),
    );
  }
}
