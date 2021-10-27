import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:resenha/app/modules/events/infra/models/event_model.dart';

class EventTodoWidget extends StatelessWidget {
  final EventModel event;

  const EventTodoWidget({
    Key? key,
    required this.event,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Modular.to.pushNamed("/events/read/${event.id}"),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        margin: const EdgeInsets.symmetric(vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
              tag: event.id,
              child: Container(
                margin: const EdgeInsets.only(right: 20),
                width: 78,
                height: 78,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: NetworkImage(event.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        event.title,
                        style: const TextStyle(
                          color: Color(0xffdce2ef),
                          fontSize: 18,
                          fontFamily: "Rajdhani",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        event.category,
                        textAlign: TextAlign.right,
                        style: const TextStyle(
                          color: Color(0xffabb0cc),
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        event.description,
                        style: const TextStyle(
                          color: Color(0xffabb0cc),
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(Icons.event),
                          Text(
                            "${event.date.day}/${event.date.month} às ${event.date.hour}:${event.date.minute}",
                            style: const TextStyle(
                              color: Color(0xffdce2ef),
                              fontSize: 13,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Icon(Icons.people),
                          Text(
                            "10",
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
