import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:resenha/app/themes/colors_themes.dart';

import '../../../presenter/widgets/event_todo/event_todo_widget.dart';
import '../../../presenter/pages/search/search_controller.dart';
import '../../../presenter/widgets/search_bar/search_bar_widget.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends ModularState<SearchPage, SearchController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: ColorsThemes.backgroundGradient,
      ),
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              elevation: 0,
              floating: true,
              expandedHeight: 100,
              backgroundColor: ColorsThemes.purple,
              flexibleSpace: Observer(
                builder: (_) => SearchBarWidget(
                  controller: controller.textEditingController,
                  onChanged: (search) => controller.searchEvent(search),
                ),
              ),
            ),
            Observer(
              builder: (_) => SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) => EventTodoWidget(
                    event: store.getEvents[index],
                  ),
                  childCount: store.events.countEvents,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
