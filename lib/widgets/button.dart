import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class Button extends StatelessWidget {
  dynamic fun;
  String text;
  Color color;
  Color textColor;
  Button(
      {Key? key,
      required this.fun,
      required this.text,
      required this.color,
      required this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.07,
      width: Get.width * 0.9,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(color),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)))),
          onPressed: fun,
          child: Text(
            text,
            style: TextStyle(fontSize: 14, color: textColor),
          )),
    );
  }
}
