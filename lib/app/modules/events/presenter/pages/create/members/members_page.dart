import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:resenha/app/modules/events/presenter/pages/create/members/members_controller.dart';
import 'package:resenha/app/modules/events/presenter/widgets/button/button.dart';
import 'package:resenha/app/modules/events/presenter/widgets/contact_todo/contact_todo.dart';
import 'package:resenha/app/modules/events/presenter/widgets/floatind_button/floating_button_widget.dart';
import 'package:resenha/app/modules/events/presenter/widgets/register_bar/register_bar_widget.dart';
import 'package:resenha/app/shared/themes/colors_themes.dart';

class MembersPage extends StatefulWidget {
  const MembersPage({Key? key}) : super(key: key);

  @override
  _MembersPageState createState() => _MembersPageState();
}

class _MembersPageState extends ModularState<MembersPage, MembersController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
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
              flexibleSpace: GenericBarWidget(
                title: const Text(
                  "Membros",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xffdce2ef),
                    fontSize: 20,
                    fontFamily: "Rajdhani",
                    fontWeight: FontWeight.w700,
                  ),
                ),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.update),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Observer(
              builder: (context) => SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) => ContactTodo(
                    contact: controller.getContacts[index],
                  ),
                  childCount: controller.countContacts,
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingButtonWidget(
          text: "Registrar",
          icon: Icons.save,
          onTap: () => {},
        ),
      ),
    );
  }
}
