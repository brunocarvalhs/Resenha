import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:resenha/app/modules/events/presenter/pages/list/list_controller.dart';
import 'package:resenha/app/modules/events/presenter/widgets/app_bar_home_widget.dart';
import 'package:resenha/app/modules/events/presenter/widgets/event_todo_widget.dart';
import 'package:resenha/app/modules/events/presenter/widgets/floating_button_widget.dart';
import 'package:resenha/app/themes/colors_themes.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends ModularState<ListPage, ListController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: ColorsThemes.backgroundGradient,
      ),
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Colors.transparent,
                expandedHeight: 110,
                flexibleSpace: AppBarHomeWidget(),
              ),
            ];
          },
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
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
                      "Total ${store.events.length}",
                      style: TextStyle(
                        color: Color(0xffabb0cc),
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Observer(
                  builder: (_) => ListView.builder(
                    padding: const EdgeInsets.all(10),
                    itemCount: store.events.length,
                    itemBuilder: (BuildContext context, int index) => EventTodoWidget(
                      event: store.events[index],
                      onTap: () {},
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingButtonWidget(
          icon: Icons.add,
          onTap: () => Modular.to.pushNamed("/register"),
        ),
      ),
    );
  }
}
