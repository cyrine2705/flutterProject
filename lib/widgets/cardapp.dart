import 'package:flutter/material.dart';

import 'package:octorealitytest/consts/colors.dart';
import 'package:octorealitytest/consts/sizes.dart';

class CardApp extends StatefulWidget {
  final String text;
  final String text1;
  const CardApp({Key? key, required this.text, required this.text1})
      : super(key: key);

  @override
  State<CardApp> createState() => _CardAppState();
}

class _CardAppState extends State<CardApp> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.secondary,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Theme.of(context).colorScheme.outline,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(widget.text, style: const TextStyle(fontWeight: FontWeight.bold)),
              const Icon(
                Icons.arrow_forward,
                color: AppColors.warn,
              ),
            ],
          ),
          Container(
            width: AppSizes.width * 0.18,
            height: 80,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.accent, width: 3)),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: CircleAvatar(
                backgroundColor: AppColors.secondary,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.add,
                      color: AppColors.warn,
                    ),
                    Text(
                      widget.text1,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 10,
                          color: AppColors.accent,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
