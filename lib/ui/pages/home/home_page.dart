import 'package:flutter/material.dart';
import 'package:flutter_application/gen/fonts.gen.dart';
import 'package:flutter_application/lib.dart';
import 'package:flutter_application/ui/widgets/icon_tabbar_button.dart';
import 'package:flutter_application/utils/color_extension.dart';

import '../../../gen/assets.gen.dart';
import '../../../generated/l10n.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;
  List<String> quickFilters = ["Popular", "Mens", "Womens", "Sales"];
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: quickFilters.length, vsync: this);
    _tabController.addListener(() {
      _selectedIndex = _tabController.index;
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.white,
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Expanded(
                  flex: 2,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Text("Geeta.",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: FontFamily.lato,
                              fontSize: 24,
                            )),
                        Spacer(),
                        IconTabbarButton(
                          iconPath: Assets.icons.notification.path,
                          callback: () {},
                        ),
                        IconTabbarButton(
                          iconPath: Assets.icons.cartIcon.path,
                          callback: () {},
                        ),
                        IconTabbarButton(
                          iconPath: Assets.icons.favorite.path,
                          callback: () {},
                        ),
                        IconTabbarButton(
                          iconPath: Assets.icons.searchIcon.path,
                          callback: () {},
                        ),
                        IconTabbarButton(
                          iconPath: Assets.icons.menu.path,
                          callback: () {},
                        ),
                      ],
                    ),
                  )),
              Expanded(
                flex: 1,
                child: Container(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: TabBar(
                      indicatorColor: HexColor.fromHex("#6342E8"),
                      indicatorSize: TabBarIndicatorSize.label,
                      tabs: [
                        QuickFilterTab(
                            index: 0,
                            dataList: quickFilters,
                            seletedIndex: _selectedIndex),
                        QuickFilterTab(
                            index: 1,
                            dataList: quickFilters,
                            seletedIndex: _selectedIndex),
                        QuickFilterTab(
                            index: 2,
                            dataList: quickFilters,
                            seletedIndex: _selectedIndex),
                        QuickFilterTab(
                            index: 3,
                            dataList: quickFilters,
                            seletedIndex: _selectedIndex),
                      ],
                      controller: _tabController,
                    )),
              ),
              Expanded(flex: 1, child: Container(
                padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Row(
                  children: [
                    Text("FILTER & SORT", style: TextStyle(fontWeight: FontWeight.bold),),
                    IconTabbarButton(iconPath: Assets.icons.sortToolIc.path, callback: (){}),
                    Spacer(),
                    IconTabbarButton(iconPath: Assets.icons.gridViewIc.path, callback: (){}),
                    IconTabbarButton(iconPath: Assets.icons.fullViewIc.path, callback: (){}),
                  ],
                ),
              )),
              Expanded(
                  flex: 16,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: 0.6,
                      children: List.generate(100, (index) {
                        return HomeGridCell();
                      }),
                    ),
                  ))
            ],
          )),
    );
  }
}

class QuickFilterTab extends StatelessWidget {
  final int index;
  final List<String> dataList;
  final int seletedIndex;
  final Color activeColor = HexColor.fromHex("#6342E8");
  final Color inactiveColor = HexColor.fromHex("#A1A1A1");

  QuickFilterTab(
      {Key? key,
      required this.index,
      required this.dataList,
      required this.seletedIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (index < dataList.length) {
      return Tab(
        child: Text(
          dataList[index],
          style: TextStyle(
              color: index == seletedIndex ? activeColor : inactiveColor,
              fontSize: 14,
              fontWeight: FontWeight.bold),
        ),
      );
    } else {
      return Container();
    }
  }
}

class HomeGridCell extends StatelessWidget {
  const HomeGridCell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2 - 40,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(children: [
        Expanded(flex: 3, child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(Assets.images.demoProduct.path), fit: BoxFit.fill)
          ),
        )),
        Expanded(flex: 1, child: Column(children: [
          SizedBox(height: 10,),
          Text("Product Name", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
          SizedBox(height: 5,),
          Text("40.00 USD", style: TextStyle(color: HexColor.fromHex("#A1A1A1"),fontSize: 16, fontWeight: FontWeight.bold),)
        ],))
      ],),

    );
  }
}
