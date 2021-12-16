import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:resenha/app/shared/themes/colors_themes.dart';

import '../../../presenter/widgets/banner_event/banner_event_widget.dart';
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
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: ColorsThemes.backgroundGradient,
      ),
      child: Scaffold(
        body: RefreshIndicator(
          onRefresh: () => controller.request(),
          notificationPredicate: (scrollNotification) => controller.scrollController(scrollNotification),
          backgroundColor: Colors.transparent,
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                elevation: 0,
                floating: true,
                expandedHeight: 100,
                backgroundColor: ColorsThemes.purple,
                flexibleSpace: AppBarWidget(
                  onTapSearch: () => controller.redirectSearch(),
                ),
              ),
              Observer(
                builder: (_) => SliverToBoxAdapter(
                  child: Visibility(
                    visible: controller.isPromotions,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: SizedBox(
                        height: 200,
                        child: PageView.builder(
                          controller: controller.pageController,
                          itemCount: store.countPromotions,
                          itemBuilder: (BuildContext context, int index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: BannerEventWidget(
                              event: store.getPromotions[index],
                            ),
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
                      const Text(
                        "Festas agendadas",
                        style: TextStyle(
                          color: Color(0xffdce2ef),
                          fontSize: 18,
                          fontFamily: "Rajdhani",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Observer(builder: (context) {
                        return Text(
                          "Total ${store.events.countEvents}",
                          style: const TextStyle(
                            color: Color(0xffabb0cc),
                            fontSize: 13,
                          ),
                        );
                      }),
                    ],
                  ),
                ),
              ),
              Observer(
                builder: (_) => SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) => EventTodoWidget(
                      event: store.events.getEvents[index],
                      onTap: (id) => controller.redirectRead(id),
                    ),
                    childCount: store.events.countEvents,
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingButtonWidget(
          text: "Adicionar evento",
          icon: Icons.add,
          onTap: () => controller.redirectRegister(),
        ),
      ),
    );
  }
}
