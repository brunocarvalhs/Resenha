import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:resenha/app/modules/events/presenter/widgets/banner_event/banner_event_widget.dart';
import 'package:resenha/app/modules/events/presenter/widgets/search_bar/search_bar_widget.dart';
import 'package:resenha/app/themes/colors_themes.dart';

import '../../../presenter/pages/list/list_controller.dart';
import '../../widgets/app_bar/app_bar_widget.dart';
import '../../../presenter/widgets/event_todo/event_todo_widget.dart';
import '../../../presenter/widgets/floatind_button/floating_button_widget.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends ModularState<ListPage, ListController> {
  @override
  void initState() {
    super.initState();
    controller.automaticScrollPromotions();
  }

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
                builder: (_) => controller.isSearch
                    ? SearchBarWidget(
                        controller: controller.textEditingController,
                        onChanged: (search) => controller.searchEvent(search),
                        onTapClose: () => controller.setIsSearch(),
                      )
                    : AppBarWidget(
                        onTapSearch: () => controller.setIsSearch(),
                      ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Container(
                  height: 200,
                  child: Observer(
                    builder: (_) => PageView.builder(
                      controller: controller.pageController,
                      itemCount: store.countEventsPromotions,
                      itemBuilder: (BuildContext context, int index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: BannerEventWidget(
                          onTap: () => controller.pushEvent(store.getEventsPromotions[index].id),
                          event: store.getEventsPromotions[index],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Festas agendadas",
                      style: TextStyle(
                        color: Color(0xffdce2ef),
                        fontSize: 18,
                        fontFamily: "Rajdhani",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "Total ${store.countEvents}",
                      style: TextStyle(
                        color: Color(0xffabb0cc),
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Observer(
              builder: (_) => SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) => EventTodoWidget(
                    event: store.getEvents[index],
                    onTap: () => controller.pushEvent(store.getEvents[index].id),
                  ),
                  childCount: store.countEvents,
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingButtonWidget(
          icon: Icons.add,
          onTap: () => controller.redirectRegister(),
        ),
      ),
    );
  }
}
