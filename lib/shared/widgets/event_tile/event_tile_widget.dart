import 'package:flutter/material.dart';
import 'package:resenha/shared/models/event_model.dart';
import 'package:resenha/shared/themes/app_text_styles.dart';
import 'package:resenha/shared/widgets/photo_hero/photo_hero_widget.dart';

class EventTileWidget extends StatelessWidget {
  final EventModel data;
  const EventTileWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      onTap: () =>
          Navigator.of(context).pushNamed("/event/show", arguments: data),
      child: Semantics(
        child: Container(
          constraints: const BoxConstraints(minHeight: 50),
          padding: const EdgeInsets.symmetric(vertical: 10),
          // margin: margin,
          decoration: BoxDecoration(
            // color: color,
            borderRadius: const BorderRadius.all(Radius.circular(5)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              PhotoHeroWidget(
                photo: data.photo!,
                width: 80,
                height: 80,
                borderRadius: 10,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              data.name!,
                              style: AppTextStyles.captionBoldShape,
                            ),
                            Text(
                              data.category!,
                              style: AppTextStyles.captionBody,
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Text(
                              data.description!,
                              style: AppTextStyles.captionBody,
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Wrap(
                                spacing: 6,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  Icon(Icons.calendar_today),
                                  Text(
                                    "Sex ${data.day}/${data.month} às ${data.hour}:${data.minutes}h",
                                    style: AppTextStyles.captionBody,
                                  ),
                                ],
                              ),
                              Wrap(
                                spacing: 6,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  Icon(Icons.people),
                                  Text("${data.members}"),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      // description ?? Container()
                    ],
                  ),
                ),
              ),
              // icon ?? Container(),
            ],
          ),
        ),
      ),
    );
  }
}
