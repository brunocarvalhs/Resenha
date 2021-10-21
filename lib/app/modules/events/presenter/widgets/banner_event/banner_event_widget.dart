import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:resenha/app/modules/events/infra/models/event_model.dart';

class BannerEventWidget extends StatelessWidget {
  final EventModel event;

  const BannerEventWidget({
    Key? key,
    required this.event,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Modular.to.pushNamed("/events/read/${event.id}"),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey,
          image: DecorationImage(
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.darken),
            image: NetworkImage(event.image),
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
            repeat: ImageRepeat.noRepeat,
          ),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${event.title}",
                style: TextStyle(
                  color: Color(0xffdce2ef),
                  fontSize: 18,
                  fontFamily: "Rajdhani",
                  fontWeight: FontWeight.w700,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.event),
                  Text(
                    "${event.date.day}/${event.date.month} às ${event.date.hour}:${event.date.minute}",
                    style: TextStyle(
                      color: Color(0xffdce2ef),
                      fontSize: 13,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
