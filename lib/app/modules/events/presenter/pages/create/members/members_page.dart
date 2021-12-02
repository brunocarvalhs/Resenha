import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:resenha/app/modules/events/presenter/pages/create/members/members_controller.dart';
import 'package:resenha/app/modules/events/presenter/widgets/button/button.dart';
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
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(10),
          child: ButtonWidget(
            onTap: () => {},
          ),
        ),
      ),
    );
  }
}
