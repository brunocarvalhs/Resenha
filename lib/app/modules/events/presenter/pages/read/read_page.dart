import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:resenha/app/modules/login/presenter/stores/auth_store.dart';
import 'package:resenha/app/shared/themes/colors_themes.dart';

class ReadPage extends StatefulWidget {
  const ReadPage({Key? key}) : super(key: key);

  @override
  _ReadPageState createState() => _ReadPageState();
}

class _ReadPageState extends State<ReadPage> {
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
              pinned: true,
              backgroundColor: ColorsThemes.purple,
              expandedHeight: 300,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text("${Modular.get<AuthStore>().user?.name}"),
                background: Hero(
                  tag: "${Modular.get<AuthStore>().user?.photoUrl}",
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: NetworkImage("${Modular.get<AuthStore>().user?.photoUrl}"),
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                        repeat: ImageRepeat.noRepeat,
                      ),
                    ),
                  ),
                ),
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
    );
  }
}
