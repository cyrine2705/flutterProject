import 'package:flutter/material.dart';
import 'package:octorealitytest/consts/colors.dart';

class CirculaireIndicator extends StatefulWidget {
  const CirculaireIndicator({Key? key}) : super(key: key);

  @override
  State<CirculaireIndicator> createState() => _CirculaireIndicatorState();
}

class _CirculaireIndicatorState extends State<CirculaireIndicator> {
  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      CircularProgressIndicator(
        color: AppColors.green,
        backgroundColor: AppColors.primary,
        value: 5 / 20,
      ),
      const FittedBox(
        alignment: Alignment.center,
        child: Text(
          "5/20",
          style: TextStyle(color: AppColors.black),
        ),
      ),
    ]);
  }
}
