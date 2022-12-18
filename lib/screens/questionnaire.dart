import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:octorealitytest/consts/colors.dart';
import 'package:octorealitytest/consts/sizes.dart';
import 'package:octorealitytest/controllers/widget.dart';
import 'package:octorealitytest/screens/accueil.dart';
import 'package:octorealitytest/screens/remerciement.dart';

import 'package:octorealitytest/widgets/button.dart';
import 'package:octorealitytest/widgets/circulaire_progress_indicator.dart';

class Questionnaire extends StatefulWidget {
  const Questionnaire({Key? key}) : super(key: key);

  @override
  State<Questionnaire> createState() => _QuestionnaireState();
}

class _QuestionnaireState extends State<Questionnaire> {
  var selected = "";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: InkWell(
            onTap: () {
              setState(() {
                Get.find<WidgetController>().changeWidget(const Acceuil());
              });
            },
            child: Icon(
              Icons.arrow_back_ios_new,
              color: AppColors.green,
            ),
          ),
          title: const Center(
            child: Text(
              "Questionnaire",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ),
          actions: [
            const CirculaireIndicator(),
            SizedBox(
              width: AppSizes.width * 0.05,
            ),
          ],
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text("Une question a choix \n unique ",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Red Hat Display',
                    fontWeight: FontWeight.bold)),
            const Text("Une seule reponse possible ! ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Red Hat Display',
                )),
            Button(
              fun: () {
                setState(() {
                  selected = "A";
                });
              },
              text: "Réponse A",
              color: selected != "A" ? AppColors.primary : AppColors.accent,
              textColor: selected == "A" ? AppColors.white : AppColors.accent,
            ),
            Button(
              fun: () {
                setState(() {
                  selected = "B";
                });
              },
              text: "Réponse B",
              color: selected != "B" ? AppColors.primary : AppColors.accent,
              textColor: selected == "B" ? AppColors.white : AppColors.accent,
            ),
            Button(
              fun: () {
                setState(() {
                  selected = "C";
                });
              },
              text: "Réponse c",
              color: selected != "C" ? AppColors.primary : AppColors.accent,
              textColor: selected == "C" ? AppColors.white : AppColors.accent,
            ),
            SizedBox(
              height: AppSizes.height * 0.2,
            ),
            Button(
                fun: () => setState(() {
                      Get.find<WidgetController>()
                          .changeWidget(const Remerciment());
                    }),
                text: "Suivant",
                color: AppColors.warn,
                textColor: AppColors.white)
          ],
        )),
      ),
    );
  }
}
