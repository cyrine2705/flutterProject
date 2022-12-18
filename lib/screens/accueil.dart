import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:octorealitytest/consts/colors.dart';
import 'package:octorealitytest/consts/sizes.dart';
import 'package:octorealitytest/controllers/widget.dart';
import 'package:octorealitytest/screens/questionnaire.dart';
import 'package:octorealitytest/widgets/button.dart';
import 'package:octorealitytest/widgets/cardapp.dart';

import 'package:flutter_svg/flutter_svg.dart';

class Acceuil extends StatefulWidget {
  const Acceuil({Key? key}) : super(key: key);

  @override
  State<Acceuil> createState() => _AcceuilState();
}

class _AcceuilState extends State<Acceuil> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: AppSizes.height * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: AppSizes.width * 0.05),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: const Color.fromRGBO(234, 233, 241, 1),
                        width: 3)),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: CircleAvatar(
                    backgroundColor: AppColors.green,
                    child: const Text(
                      "CS",
                      style: TextStyle(
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: AppSizes.width * 0.05, top: AppSizes.height * 0.01),
              child: const Text(
                "👋 Hello Cyrine Srairi",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: AppSizes.width * 0.05, top: AppSizes.height * 0.03),
              child: const Text(
                  "C’est le moment \nde nous en dire \nplus sur vous 😇",
                  style: TextStyle(fontSize: 44, fontWeight: FontWeight.w300)),
            ),
            const Image(
              image: AssetImage("assets/images/1.png"),
            ),
            Center(
                child: Button(
              fun: () => setState(() {
                Get.find<WidgetController>()
                    .changeWidget(const Questionnaire());
              }),
              text: "Commencer !",
              color: AppColors.warn,
              textColor: Colors.white,
            )),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Center(
                child: SizedBox(
                  width: Get.width * 0.9,
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Theme.of(context).colorScheme.outline,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                    ),
                    tileColor: AppColors.secondary,
                    minLeadingWidth: 20,
                    dense: true,
                    leading: SvgPicture.asset(
                      "assets/images/Profile.svg",
                      color: AppColors.warn,
                    ),
                    title: const Text('Profil Incomplet',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: const Text('Améliorer votre profil'),
                    trailing: SizedBox(
                        height: Get.height * 0.05,
                        width: Get.width * 0.3,
                        child: Container(
                          decoration: BoxDecoration(
                              color: AppColors.warn,
                              borderRadius: BorderRadius.circular(8.0)),
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                "Completer",
                                style: TextStyle(
                                    fontSize: 14, color: AppColors.white),
                              ),
                              SvgPicture.asset(
                                "assets/images/Edit.svg",
                                color: AppColors.white,
                              ),
                            ],
                          ),
                        )),
                    onTap: () {},
                  ),
                ),
              ),
            ),
            Center(
              child: SizedBox(
                width: AppSizes.width * 0.9,
                height: AppSizes.height * 0.2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: AppSizes.width * 0.45,
                      child: const CardApp(
                        text: "Suivi d poids",
                        text1: "saisissez \n votre poids",
                      ),
                    ),
                    SizedBox(
                      width: AppSizes.width * 0.45,
                      child: const CardApp(
                          text: "Exercice",
                          text1: "connectez votre app \n santé"),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
