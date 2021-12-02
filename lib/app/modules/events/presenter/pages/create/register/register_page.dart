import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:resenha/app/modules/events/presenter/pages/create/register/register_controller.dart';
import 'package:resenha/app/modules/events/presenter/widgets/date_text_field/date_text_field.dart';
import 'package:resenha/app/modules/events/presenter/widgets/floatind_button/floating_button_widget.dart';
import 'package:resenha/app/modules/events/presenter/widgets/register_bar/register_bar_widget.dart';
import 'package:resenha/app/modules/events/presenter/widgets/text_area_default/text_area_default.dart';
import 'package:resenha/app/modules/events/presenter/widgets/text_field_default/text_field_default.dart';
import 'package:resenha/app/modules/events/presenter/widgets/time_text_field/time_text_field.dart';
import 'package:resenha/app/shared/themes/colors_themes.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends ModularState<RegisterPage, RegisterController> {
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
                  "Criar Evento",
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
                    icon: const Icon(Icons.settings),
                    onPressed: () => showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) => Container(
                        height: 200,
                        color: const Color(0xFF4C0B8D),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Observer(
                            builder: (context) => Column(
                              children: <Widget>[
                                const SizedBox(height: 16),
                                Container(
                                  width: 39.52,
                                  height: 4.96,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2),
                                    color: const Color(0xff495bcc),
                                  ),
                                ),
                                const SizedBox(height: 16),
                                ListTile(
                                  title: const Text(
                                    'Permirir convidados adicionar outros convidados',
                                  ),
                                  leading: Switch(
                                    value: controller.isPrivate,
                                    activeColor: const Color(0xFF6200EE),
                                    onChanged: (bool value) => setState(() {
                                      controller.setInviteEvent(value);
                                    }),
                                  ),
                                ),
                                ListTile(
                                  title: const Text(
                                    'Evento privado',
                                  ),
                                  leading: Switch(
                                    value: controller.isInvite,
                                    activeColor: const Color(0xFF6200EE),
                                    onChanged: (bool value) => setState(() {
                                      controller.setPrivateEvent(value);
                                    }),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // SliverToBoxAdapter(
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       const Padding(
            //         padding: EdgeInsets.symmetric(horizontal: 10),
            //         child: Text(
            //           "Categoria",
            //           style: TextStyle(
            //             color: Color(0xffdce2ef),
            //             fontSize: 18,
            //             fontFamily: "Rajdhani",
            //             fontWeight: FontWeight.w700,
            //           ),
            //         ),
            //       ),
            //       SizedBox(
            //         height: 200,
            //         child: Observer(
            //           builder: (_) => ListView.builder(
            //             scrollDirection: Axis.horizontal,
            //             itemCount: controller.countCategory,
            //             itemBuilder: (BuildContext context, int index) => Padding(
            //               padding: const EdgeInsets.all(8.0),
            //               child: CategoryCard(
            //                 title: controller.getCategoryIndex(index).name,
            //                 image: controller.getCategoryIndex(index).image,
            //                 onTap: () => controller.setCategory(index),
            //                 selected: controller.isSelected(index),
            //               ),
            //             ),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 40, left: 10, right: 10),
                child: TextFieldDefault(
                  hint: "Nome",
                  onChanged: (value) => controller.setName(value),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 40, left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Observer(
                      builder: (context) => DateTextField(
                        day: controller.getDay,
                        mount: controller.getMonth,
                        onTap: () => controller.defineDate(context),
                      ),
                    ),
                    Observer(
                      builder: (context) => TimeTextField(
                        hour: controller.getHour,
                        minute: controller.getMinute,
                        onTap: () => controller.defineTime(context),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 40, left: 10, right: 10),
                child: TextAreaDefault(
                  hint: "Descrição",
                  onChanged: (value) => controller.setDiscrible(value),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingButtonWidget(
          icon: Icons.arrow_right,
          onTap: () => controller.redirectMeetingPoint(),
        ),
      ),
    );
  }
}
