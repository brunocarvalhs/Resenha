import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:resenha/app/modules/events/presenter/pages/create/meeting_point/meeting_point_controller.dart';
import 'package:resenha/app/modules/events/presenter/widgets/floatind_button/floating_button_widget.dart';
import 'package:resenha/app/modules/events/presenter/widgets/register_bar/register_bar_widget.dart';
import 'package:resenha/app/shared/themes/colors_themes.dart';

class MeetingPointPage extends StatefulWidget {
  const MeetingPointPage({Key? key}) : super(key: key);

  @override
  _MeetingPointPageState createState() => _MeetingPointPageState();
}

class _MeetingPointPageState extends ModularState<MeetingPointPage, MeetingPointController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: ColorsThemes.backgroundGradient,
      ),
      child: Scaffold(
        appBar: GenericBarWidget(
          title: const Text(
            "Ponto de encontro",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xffdce2ef),
              fontSize: 20,
              fontFamily: "Rajdhani",
              fontWeight: FontWeight.w700,
            ),
          ),
          trailing: IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => showModalBottomSheet<void>(
              context: context,
              builder: (BuildContext context) => Container(
                height: 200,
                color: const Color(0xFF4C0B8D),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Observer(
                    builder: (context) => Column(
                      children: <Widget>[
                        const SizedBox(height: 16),
                        Container(
                          width: 39.52,
                          height: 4.96,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: const Color(0xff495bcc),
                          ),
                        ),
                        const SizedBox(height: 16),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        body: Stack(
          children: <Widget>[
            GoogleMap(
              onMapCreated: controller.onMapCreated,
              initialCameraPosition: CameraPosition(
                target: store.center,
                zoom: 11.0,
              ),
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.4,
              minChildSize: 0.2,
              maxChildSize: 0.6,
              builder: (BuildContext context, ScrollController scrollController) => SingleChildScrollView(
                controller: scrollController,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: ColorsThemes.backgroundGradient,
                  ),
                  width: double.infinity,
                  height: 250,
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    child: const Text(
                      "Close this bottom sheet",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: Observer(
          builder: (context) => Visibility(
            visible: false,
            child: FloatingButtonWidget(
              icon: Icons.add,
              onTap: () {},
            ),
          ),
        ),
      ),
    );
  }
}
