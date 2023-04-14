import 'package:flutter/material.dart';

class TabIconData {
  TabIconData({
    this.imagePath = '',
    this.index = 0,
    this.selectedImagePath = '',
    this.isSelected = false,
    this.animationController,
  });

  String imagePath;
  String selectedImagePath;
  bool isSelected;
  int index;

  AnimationController? animationController;

  static List<TabIconData> tabIconsList = <TabIconData>[
    TabIconData(
      imagePath: 'assets/icons/tab_1u.svg',
      selectedImagePath: 'assets/icons/tab_1.svg',
      index: 0,
      isSelected: true,
      animationController: null,
    ),
    TabIconData(
      imagePath: 'assets/icons/tab_2u.svg',
      selectedImagePath: 'assets/icons/tab_2.svg',
      index: 1,
      isSelected: false,
      animationController: null,
    ),
    TabIconData(
      imagePath: 'assets/icons/tab_3u.svg',
      selectedImagePath: 'assets/icons/tab_3.svg',
      index: 2,
      isSelected: false,
      animationController: null,
    ),
    TabIconData(
      imagePath: 'assets/icons/tab_4u.svg',
      selectedImagePath: 'assets/icons/tab_4.svg',
      index: 3,
      isSelected: false,
      animationController: null,
    ),
  ];
}