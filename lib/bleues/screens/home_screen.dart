import 'package:assurances_bleues/bleues/screens/overview_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../src/screens/base/custom_dialogs.dart';
import '../../src/screens/base/custom_text_button.dart';
import '../../src/screens/base/custom_text_field.dart';
import '../../src/screens/login/phone_login_screen.dart';
import '../../src/screens/notifications/notifications_screen.dart';
import '../../src/utils/color_resources.dart';
import '../../src/utils/dimensions.dart';
import '../../src/utils/images.dart';
import '../../src/utils/styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  final searchTextController = TextEditingController();

  final int _selectedIndex = 0;
  bool showSearch = false;
  bool showSearchingScreen = false;
  late FocusNode focusNode;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    focusNode = FocusNode();
    focusNode.addListener(_onFocusChange);
    searchTextController.addListener(() {
      if (searchTextController.text.isNotEmpty) {
        setState(() {
          showSearchingScreen = true;
        });
      } else {
        setState(() {
          showSearchingScreen = false;
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {}

  void _onFocusChange() {
    if (focusNode.hasFocus) {
      showSearch = true;
    } else {
      showSearch = false;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OverviewScreen(),
    );
  }
}
