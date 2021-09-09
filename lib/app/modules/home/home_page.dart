import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:resenha/app/shared/themes/app_colors.dart';

import 'home_store.dart';
import 'widgets/app_bar_home_widget.dart';
import 'widgets/floating_button_widget.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: AppColors.backgroundGradient,
      ),
      child: Scaffold(
        appBar: AppBarHomeWidget(),
        body: ScopedBuilder<HomeStore, Exception, int>(
          store: store,
          onState: (_, counter) {
            return Padding(
              padding: EdgeInsets.all(10),
              child: Text('$counter'),
            );
          },
          onError: (context, error) => Center(
            child: Text(
              'Too many clicks',
              style: TextStyle(color: Colors.red),
            ),
          ),
        ),
        floatingActionButton: FloatingButtonWidget(
          icon: Icons.add,
          onTap: () => Modular.to.navigate('/profile'),
        ),
      ),
    );
  }
}
