import 'package:flutter/material.dart';
import 'package:resenha/app/models/user_model.dart';
import 'package:resenha/resources/widgets/floating_button_widget.dart';

class HomeScreen extends StatefulWidget {
  // final UserModel user;

  // const HomeScreen({Key? key, required this.user}) : super(key: key);
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [

          ],
        ),
      ),
      floatingActionButton: FloatingButtonWidget(
        icon: Icons.add,
        onTap: () => {},
      ),
    );
  }
}
