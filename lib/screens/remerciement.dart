import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:octorealitytest/consts/colors.dart';
import 'package:octorealitytest/controllers/widget.dart';
import 'package:octorealitytest/screens/accueil.dart';

import 'package:octorealitytest/widgets/button.dart';

class Remerciment extends StatefulWidget {
  const Remerciment({Key? key}) : super(key: key);

  @override
  State<Remerciment> createState() => _RemercimentState();
}

class _RemercimentState extends State<Remerciment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Merci pour votre réponse ",
            style: TextStyle(
                fontSize: 24,
                fontFamily: 'Red Hat Display',
                fontWeight: FontWeight.bold)),
        const SizedBox(
          height: 20,
        ),
        Button(
            fun: () => setState(() {
                  Get.find<WidgetController>().changeWidget(const Acceuil());
                }),
            text: "Retour au tableau de bord",
            color: AppColors.primary,
            textColor: AppColors.accent)
      ],
    )));
  }
}
