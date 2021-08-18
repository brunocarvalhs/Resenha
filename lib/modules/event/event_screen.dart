import 'package:flutter/material.dart';
import 'package:resenha/shared/models/event_model.dart';
import 'package:resenha/shared/widgets/photo_hero/photo_hero_widget.dart';

class EventScreen extends StatefulWidget {
  final EventModel event;

  const EventScreen({Key? key, required this.event}) : super(key: key);

  @override
  _EventScreenState createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            floating: true,
            snap: true,
            pinned: true,
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(widget.event.name!),
              centerTitle: false,
              background: PhotoHeroWidget(
                photo: widget.event.photo!,
                width: size.width,
                height: size.height,
              ),
            ),
          ),
          SliverFillRemaining()
        ],
      ),
    );
  }
}
