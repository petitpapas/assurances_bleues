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
import '../app_theme.dart';
import '../bottom_navigation_view/bottom_bar_view.dart';
import '../bottom_navigation_view/tabIcon_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late AnimationController? animationController;

  final searchTextController = TextEditingController();

  final int _selectedIndex = 0;
  bool showSearch = false;
  bool showSearchingScreen = false;
  late FocusNode focusNode;

  Widget tabBody = Container(
    color: AppTheme.background,
  );

  @override
  void initState() {
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

    tabIconsList.forEach((TabIconData tab) {
      tab.isSelected = false;
    });
    tabIconsList[0].isSelected = true;

    animationController = AnimationController(
        duration: const Duration(milliseconds: 600), vsync: this);
    tabBody = OverviewScreen(animationController: animationController);

    super.initState();
  }

  @override
  void dispose() {
    animationController?.dispose();
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

  List<TabIconData> tabIconsList = TabIconData.tabIconsList;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.background,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        // body: OverviewScreen(),
        // bottomNavigationBar: BottomBarView(
        //   tabIconsList: tabIconsList,
        //   addClick: () {},
        // ),
        body: Stack(
          children: [
            tabBody,
            bottomBar(),
          ],
        )
      ),
    );
  }

  Widget bottomBar() {
    return Column(
      children: <Widget>[
        const Expanded(
          child: SizedBox(),
        ),
        BottomBarView(
          tabIconsList: tabIconsList,
          addClick: () {},
          changeIndex: (int index) {
            if (index == 0 || index == 2) {
              animationController?.reverse().then<dynamic>((data) {
                if (!mounted) {
                  return;
                }
                setState(() {
                  tabBody =
                      OverviewScreen(animationController: animationController);
                });
              });
            } else if (index == 1 || index == 3) {
              animationController?.reverse().then<dynamic>((data) {
                if (!mounted) {
                  return;
                }
                setState(() {
                  tabBody =
                      OverviewScreen(animationController: animationController);
                });
              });
            }
          },
        ),
      ],
    );
  }
}
