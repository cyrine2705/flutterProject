import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:octorealitytest/consts/colors.dart';
import 'package:octorealitytest/controllers/widget.dart';


class TableauDeBord extends StatefulWidget {
  const TableauDeBord({Key? key}) : super(key: key);

  @override
  State<TableauDeBord> createState() => _TableauDeBordState();
}

class _TableauDeBordState extends State<TableauDeBord> {
    final WidgetController widgetController = Get.put(WidgetController());

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions = <Widget>[
    GetBuilder<WidgetController>(builder: (_) {
      return _.currentWidget;
    }),
    const Text(
      'Chat',
      style: optionStyle,
    ),
    const Text(
      'Alerts',
      style: optionStyle,
    ),
    const Text(
      'Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Acceuil',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.commentDots),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.bell),
            label: 'Alerts',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.user),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.greenAccent.shade200,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 20.0,
        onTap: _onItemTapped,
      ),
    ));
  }
}
