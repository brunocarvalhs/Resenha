import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:resenha/app/modules/events/presenter/pages/visualization/read/read_controller.dart';
import 'package:resenha/app/modules/events/presenter/widgets/function_card/function_card.dart';
import 'package:resenha/app/shared/themes/colors_themes.dart';

class ReadPage extends StatefulWidget {
  const ReadPage({Key? key}) : super(key: key);

  @override
  _ReadPageState createState() => _ReadPageState();
}

class _ReadPageState extends ModularState<ReadPage, ReadController> {
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
              flexibleSpace: Observer(
                builder: (context) => FlexibleSpaceBar(
                  background: Hero(
                    tag: "${store.eventModel?.id}",
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          image: NetworkImage("${store.eventModel?.image}"),
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter,
                          repeat: ImageRepeat.noRepeat,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.only(top: 30),
              sliver: SliverToBoxAdapter(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Observer(builder: (context) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
                        child: Text(
                          "${store.eventModel?.title}",
                          style: const TextStyle(
                            color: Color(0xffdce2ef),
                            fontSize: 30,
                            fontFamily: "Rajdhani",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      );
                    }),
                    Observer(builder: (context) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
                        child: Text(
                          "${store.eventModel?.description}",
                          style: const TextStyle(
                            color: Color(0xffdce2ef),
                            fontSize: 20,
                            fontFamily: "Rajdhani",
                          ),
                        ),
                      );
                    }),
                  ],
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
        bottomSheet: Container(
          color: ColorsThemes.purpleDark,
          height: 100,
          child: Observer(
            builder: (_) => ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: FunctionCard(
                    icon: Icons.map,
                    title: "Ponto de encontro",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: FunctionCard(
                    icon: Icons.share,
                    title: "Compartilhar evento",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: FunctionCard(
                    icon: Icons.group,
                    title: "Criar grupo",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: FunctionCard(
                    icon: Icons.date_range,
                    title: "Exportar evento",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
