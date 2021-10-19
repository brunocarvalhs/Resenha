import 'package:flutter/material.dart';
import 'package:resenha/app/modules/events/infra/models/event_model.dart';

class BannerEventWidget extends StatelessWidget {
  final EventModel event;
  final VoidCallback onTap;

  const BannerEventWidget({
    Key? key,
    required this.onTap,
    required this.event,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
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
                    "${event.data.day}/${event.data.month} às ${event.data.hour}:${event.data.minute}",
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
