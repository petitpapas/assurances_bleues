import 'package:assurances_bleues/bleues/widgets/icon_with_counter.dart';
import 'package:assurances_bleues/src/utils/color_resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../src/utils/dimensions.dart';
import '../../src/utils/styles.dart';
import 'grid_menu_icon.dart';

class OverviewScreen extends StatefulWidget {
  const OverviewScreen({Key? key}) : super(key: key);

  @override
  State<OverviewScreen> createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        //Body background color
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: height,
            color: Colors.grey[100],
          ),
        ),

        CustomScrollView(
          controller: _scrollController,
          slivers: <Widget> [
            SliverAppBar(
              pinned: true,
              backgroundColor: Colors.transparent,
              flexibleSpace: const FlexibleSpaceBar(
                  centerTitle: false,
                  titlePadding: EdgeInsets.zero,
                  title: AppTopBar(),
              ),
              toolbarHeight: height * .34,
              leading: null,
              automaticallyImplyLeading: false,
            ),

            //Recharge and pay bill items
            SliverStack(
                children: <Widget>[
                  // const SliverPositioned.fill(
                  //     child: Card()
                  // ),

                  SliverPadding(
                    padding: EdgeInsets.only(top: height * .01, left: height * .01),
                    sliver: const SliverToBoxAdapter(
                      child: Padding(
                        padding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Text("Select a product"),
                      ),
                    ),
                  ),

                  SliverPadding(
                    padding: EdgeInsets.only(top: height * .060, left: 10, right: 10, bottom:height * .02),
                    sliver: SliverGrid(
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: height * 0.15,
                        crossAxisSpacing: 0,
                        mainAxisSpacing: height * 0.015,
                        // crossAxisSpacing: height * 0.001,
                        // childAspectRatio: 0.9,
                      ),
                      delegate: SliverChildBuilderDelegate(
                            (BuildContext context, int index) {
                          // return GridItem(_getGridItemList()[index]);
                          return GridMenuIcon(gridModel: _getGridItemList()[index],
                            size: width * .25, padding: width * 0.03,
                            borderColor: const Color(0xFFE0E0E0),
                            press: () {},
                          );
                        },
                        childCount: _getGridItemList().length,
                      ),
                    ),
                  )
                ]
            ),
          ],
        )
      ],
    );
  }
}

List<GridModel> _getGridItemList() {
  List<GridModel> list = [];
  list.add(GridModel("assets/icons/health_insurrance.svg", "Assurance Santé", ColorResources.colorPrimary, '', Colors.white, null));
  list.add(GridModel("assets/icons/car_insurance.svg", "Assurance Vehicule", ColorResources.colorPrimary, '', Colors.white, null));
  list.add(GridModel("assets/icons/office_insurance.svg", "Plan Investissement", ColorResources.colorPrimary, '', Colors.white, null));
  list.add(GridModel("assets/icons/office_building.svg", "Assurance Business", ColorResources.colorPrimary, '', Colors.white, null));
  list.add(GridModel("assets/icons/travel_insurance.svg", "Assurance Voyage", ColorResources.colorPrimary, '', Colors.white, null));
  list.add(GridModel("assets/icons/health_insurrance.svg", "Assurance Santé", ColorResources.colorPrimary, '', Colors.white, null));
  list.add(GridModel("assets/icons/car_insurance.svg", "Assurance Marchandise", ColorResources.colorPrimary, '', Colors.white, null));
  list.add(GridModel("assets/icons/office_building.svg", "Assurance Tous Risque", ColorResources.colorPrimary, '', Colors.white, null));

  return list;
}

class AppTopBar extends StatelessWidget {
  const AppTopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          alignment: Alignment.topLeft,
          height: height * 0.24,
          decoration: const BoxDecoration(
            color: ColorResources.colorPrimary,
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20)
            )
          ),
        ),

        SizedBox(
          width: width,
          child: SvgPicture.asset(
            'assets/icons/logo_circular.svg',
            fit: BoxFit.cover,
            color: Colors.white.withOpacity(0.1),
          ),
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Row for Avatar and help
            Padding(
              padding: EdgeInsets.only(left: width * .02, right: width * .02,
                  top: height * .05, bottom: height * .03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,//Colors.grey[200], // border color
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey[200]!)
                    ),
                    child: CircleAvatar(
                      radius: width * .05,
                      backgroundImage: const AssetImage(
                        'assets/images/avatar.png',
                      ),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconWithCounter(
                        svgSrc: "assets/icons/bell.svg",
                        iconColor: Colors.white,
                        boxColor: Colors.white.withOpacity(0.1),
                        numOfitem: 2,
                        size: width * 0.12,
                        press: () {},
                      ),

                      SizedBox(
                        width: width * .025,
                      ),

                      IconWithCounter(
                        svgSrc: "assets/icons/help.svg",
                        iconColor: Colors.white,
                        boxColor: Colors.white.withOpacity(0.1),
                        numOfitem: 0,
                        size: width * 0.12,
                        press: () {},
                      ),
                    ],
                  )
                ],
              ),
            ),

            SizedBox(
              width: Dimensions.getScreenSize(context).width,
              height: height * 0.2,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: width * .85,
                    height: 80,
                    margin: const EdgeInsets.only(left: Dimensions.PADDING_SIZE_DEFAULT),
                    decoration: Styles.boxDecoration.copyWith(
                      color: Color(0xFFF1F1FC),
                    ),
                    child: Stack(
                      children: [
                        Center(
                          child: SvgPicture.asset(
                            'assets/icons/banner_01.svg',
                            fit: BoxFit.cover,
                          ),
                        ),

                        Center(
                          child: Text(
                            "SALE OFF 20%",
                            style: defaultExtraBold.copyWith(
                              color: ColorResources.greyColor,
                            ),
                          ),
                        ),
                      ],
                    )
                  ),
                  Container(
                    width: 240,
                    height: 80,
                    margin: const EdgeInsets.only(left: Dimensions.PADDING_SIZE_DEFAULT),
                    decoration: Styles.boxDecoration.copyWith(
                      color: ColorResources.greyColor,
                    ),
                    child: SizedBox(
                      width: width,
                      child: SvgPicture.asset(
                        'assets/icons/logo_circular.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: 240,
                    height: 80,
                    margin: const EdgeInsets.only(left: Dimensions.PADDING_SIZE_DEFAULT),
                    decoration: Styles.boxDecoration.copyWith(
                      color: ColorResources.greyColor,
                    ),
                    child: Image.asset('assets/images/banner02.png', fit: BoxFit.cover,),
                  ),
                ],
              ),
            ),
          ],
        )

      ],
    );
  }
}

