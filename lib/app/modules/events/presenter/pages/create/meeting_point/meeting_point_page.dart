import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:resenha/app/modules/events/presenter/pages/create/meeting_point/meeting_point_controller.dart';
import 'package:resenha/app/modules/events/presenter/widgets/button/button.dart';
import 'package:resenha/app/modules/events/presenter/widgets/floatind_button/floating_button_widget.dart';
import 'package:resenha/app/modules/events/presenter/widgets/register_bar/register_bar_widget.dart';
import 'package:resenha/app/modules/events/presenter/widgets/search_bar/search_bar_widget.dart';
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
        body: Stack(
          children: <Widget>[
            Observer(
              builder: (context) => GoogleMap(
                onMapCreated: controller.onMapCreated,
                myLocationEnabled: true,
                zoomControlsEnabled: false,
                initialCameraPosition: CameraPosition(
                  target: controller.position,
                  zoom: 15.0,
                ),
                markers: Set<Marker>.of(controller.points.values),
                onLongPress: (point) => controller.add(point),
              ),
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.4,
              minChildSize: 0.2,
              maxChildSize: 1.0,
              builder: (BuildContext context, ScrollController scrollController) => SingleChildScrollView(
                controller: scrollController,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    gradient: ColorsThemes.backgroundGradient,
                  ),
                  child: Scaffold(
                    body: CustomScrollView(
                      controller: scrollController,
                      slivers: <Widget>[
                        SliverAppBar(
                          elevation: 0,
                          floating: true,
                          expandedHeight: 80,
                          backgroundColor: ColorsThemes.purple,
                          flexibleSpace: SearchBarWidget(
                            controller: controller.pointController,
                            onChanged: (search) => controller.searchPoint(search),
                          ),
                        ),
                        SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (BuildContext context, int index) {
                              return Container(
                                color: index.isOdd ? Colors.white : Colors.black12,
                                height: 100.0,
                                child: Center(
                                  child: Text('$index', textScaleFactor: 5),
                                ),
                              );
                            },
                            childCount: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingButtonWidget(
          text: "Continuar",
          icon: Icons.arrow_right,
          onTap: () => controller.redirecMembers(),
        ),
      ),
    );
  }
}
