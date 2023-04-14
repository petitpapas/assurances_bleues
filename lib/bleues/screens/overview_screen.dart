import 'package:assurances_bleues/bleues/screens/recommend_card.dart';
import 'package:assurances_bleues/bleues/widgets/icon_with_counter.dart';
import 'package:assurances_bleues/src/utils/color_resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../src/utils/dimensions.dart';
import '../../src/utils/styles.dart';
import '../app_theme.dart';
import 'grid_menu_icon.dart';

class OverviewScreen extends StatefulWidget {
  const OverviewScreen({Key? key, this.animationController}) : super(key: key);

  final AnimationController? animationController;
  @override
  State<OverviewScreen> createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> with TickerProviderStateMixin {
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
      fit: StackFit.expand,
      children: [
        CustomScrollView(
          controller: _scrollController,
          slivers: <Widget> [
            const SliverAppBar(
              pinned: true,
              backgroundColor: Colors.transparent,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: false,
                  titlePadding: EdgeInsets.zero,
                  title: AppTopBar(),
              ),
              leading: null,
              automaticallyImplyLeading: false,
            ),

            SliverPadding(
              padding: const EdgeInsets.only(top: 8.0),
              sliver: SliverToBoxAdapter(
                child: SizedBox(
                  // width: Dimensions.getScreenSize(context).width * .9,
                  height: 130,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Card(
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Container(
                          width: width * .9,
                          // margin: EdgeInsets.only(left: Dimensions.PADDING_SIZE_DEFAULT),
                          decoration: Styles.boxDecorationWithShadow.copyWith(
                            color: ColorResources.greyColor,
                          ),
                          child: SizedBox(
                            width: width,
                            child: Image.asset(
                              'assets/images/banner02.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Card(
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Container(
                          width: width * .9,
                          // margin: EdgeInsets.only(left: Dimensions.PADDING_SIZE_DEFAULT),
                          decoration: Styles.boxDecorationWithShadow.copyWith(
                            color: ColorResources.greyColor,
                          ),
                          child: SizedBox(
                            width: width,
                            child: Image.asset(
                              'assets/images/banner04.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Card(
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Container(
                          width: width * .9,
                          // margin: EdgeInsets.only(left: Dimensions.PADDING_SIZE_DEFAULT),
                          decoration: Styles.boxDecorationWithShadow.copyWith(
                            color: ColorResources.greyColor,
                          ),
                          child: SizedBox(
                            width: width,
                            child: Image.asset(
                              'assets/images/banner03.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                child: TextFormField(
                  readOnly: true,
                  //false
                  autofocus: false,
                  // style: ,
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Icon(Icons.search, color: Colors.black),
                    ),
                    prefixIconConstraints: BoxConstraints(maxHeight: 20, maxWidth: 35),
                    hintText: "Search...",
                    // hintStyle: textFieldPlaceholderTextStyle(context),
                    isDense: true,
                    filled: true,
                    fillColor: AppTheme.white,
                    focusedBorder: AppTheme.focusedTransparentBorder,
                    disabledBorder: AppTheme.focusedTransparentBorder,
                    enabledBorder: AppTheme.focusedTransparentBorder,
                    errorBorder: AppTheme.focusedTransparentBorder,
                    focusedErrorBorder: AppTheme.focusedTransparentBorder,
                    // errorStyle: errorTextStyle(context),
                  ),
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  onSaved: (val) {},
                  onEditingComplete: () {},
                  onChanged: (val) {},
                  // validator: (val) {},
                  onTap: () {
                  },
                ),
              ),
            ),

            //Recharge and pay bill items
            SliverPadding(
              padding: EdgeInsets.only(left: height * .01, bottom: height * .01),
              sliver: const SliverToBoxAdapter(
                child: Text("Choisissez un produit", style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w500
                )),
              ),
            ),

            SliverPadding(
              padding: EdgeInsets.symmetric(vertical: height * .030, horizontal: 10),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: width * 0.35,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: width * 0.030,
                  // crossAxisSpacing: height * 0.001,
                  // childAspectRatio: 0.9,
                ),
                delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    // return GridItem(_getGridItemList()[index]);
                    return GridMenuIcon(gridModel: _getGridItemList()[index],
                      size: width * .30, padding: width * 0.03,
                      borderColor: const Color(0xFFE0E0E0),
                      press: () {},
                    );
                  },
                  childCount: _getGridItemList().length,
                ),
              ),
            ),


            SliverToBoxAdapter(
              child: Container(
                height: 130,
                margin: EdgeInsets.only(bottom: 100),
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: const <Widget>[
                    RecommendCard(
                      imageUrl: 'assets/images/tab_1.png',
                      title: "100% Remboursement sous 5 jours",
                      offerEnds: "Valable jusqu'au 16 Mars 2023",
                      startPrices: r"A partir de 100000 Fcfa Seulement!",
                    ),
                    RecommendCard(
                      imageUrl: 'assets/images/tab_2.png',
                      title: "Assurances Risques Technique",
                      offerEnds: "Valable jusqu'au 16 Mars 2023",
                      startPrices: r"A partir de 100000 Fcfa Seulement!",
                    ),
                  ],
                ),
              ),
            )
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
          // height: height * 0.12,
          decoration: const BoxDecoration(
            color: ColorResources.colorPrimary,
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(5),
                bottomLeft: Radius.circular(5)
            )
          ),
        ),

        SizedBox(
          width: width,
          child: SvgPicture.asset(
            'assets/icons/logo_circular.svg',
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.1), BlendMode.srcIn),
          ),
        ),

        SafeArea(child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [

                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,//Colors.grey[200], // border color
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey[200]!)
                    ),
                    child: CircleAvatar(
                      radius: width * .07,
                      backgroundImage: const AssetImage(
                        'assets/images/avatar.png',
                      ),
                    ),
                  ),

                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Bonjour,",
                        style: AppTheme.helloStyle,
                      ),
                      Text(
                        "Apr 14th, 2023",
                        style: AppTheme.subtitle.copyWith(
                          color: AppTheme.nearlyWhite
                        ),
                      ),
                    ],
                  ),
                ],
              ),


              // Row Container for Action bar icon
              // icon Help and bel
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  <Widget>[

                  IconWithCounter(
                    svgSrc: "assets/icons/bell.svg",
                    iconColor: Colors.white,
                    boxColor: Colors.white.withOpacity(0.1),
                    numOfitem: 2,
                    size: width * .16,
                    press: () {},
                  ),

                  SizedBox(
                    width: width * .01,
                  ),

                  IconWithCounter(
                    svgSrc: "assets/icons/help.svg",
                    iconColor: Colors.white,
                    boxColor: Colors.white.withOpacity(0.1),
                    numOfitem: 0,
                    size: width * .16,
                    press: () {},
                  ),
                ],
              ),


            ],
          ),
        ),)


      ],
    );
  }
}

