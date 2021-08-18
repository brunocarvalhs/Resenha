import 'package:flutter/material.dart';
import 'package:resenha/shared/models/event_model.dart';
import 'package:resenha/shared/themes/app_text_styles.dart';
import 'package:resenha/shared/widgets/photo_hero/photo_hero_widget.dart';

class EventTileWidget extends StatelessWidget {
  final EventModel data;
  const EventTileWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: ListTile(
        onTap: () => Navigator.of(context).pushNamed(
          "/event/show",
          arguments: data,
        ),
        contentPadding: EdgeInsets.zero,
        leading: PhotoHeroWidget(
          height: 68,
          width: 68,
          photo: data.photo!,
          borderRadius: 8,
        ),
        title: Text(
          data.name!,
          style: AppTextStyles.titleListTile,
        ),
        subtitle: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              data.description!,
              style: AppTextStyles.captionBody,
            ),
            Text(
              "Sex ${data.day}/${data.month} às ${data.hour}:${data.minutes}h",
              style: AppTextStyles.captionBody,
            ),
          ],
        ),
      ),
    );
  }
}
