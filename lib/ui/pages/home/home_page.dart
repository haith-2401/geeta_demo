import 'package:flutter/material.dart';
import 'package:flutter_application/gen/fonts.gen.dart';
import 'package:flutter_application/lib.dart';
import 'package:flutter_application/ui/widgets/icon_tabbar_button.dart';
import 'package:flutter_application/utils/color_extension.dart';

import '../../../gen/assets.gen.dart';
import '../../widgets/home_grid_cell.dart';
import '../../widgets/quick_filter_tab.dart';

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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      const Text("Geeta.",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: FontFamily.lato,
                            fontSize: 24,
                          )),
                      const Spacer(),
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
                  )),
              Expanded(
                flex: 1,
                child: Container(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
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
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Row(
                  children: [
                    const Text("FILTER & SORT", style: TextStyle(fontWeight: FontWeight.bold),),
                    IconTabbarButton(iconPath: Assets.icons.sortToolIc.path, callback: (){}),
                    const Spacer(),
                    IconTabbarButton(iconPath: Assets.icons.gridViewIc.path, callback: (){}),
                    IconTabbarButton(iconPath: Assets.icons.fullViewIc.path, callback: (){}),
                  ],
                ),
              )),
              Expanded(
                  flex: 16,
                  child: Container(
                    color: Colors.transparent,
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child:
                    GridView.builder(
                        itemCount: 100,

                        gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 0.6),
                        itemBuilder: (_, int index) {
                          return InkWell(
                            onTap: () {
                              print("Did tap Grid cell");
                            },
                            onLongPress: () {},
                            child: const HomeGridCell()
                          );
                        }),
                    // GridView.count(
                    //   crossAxisCount: 2,
                    //   childAspectRatio: 0.6,
                    //   children: List.generate(100, (index) {
                    //     return HomeGridCell();
                    //   }),
                    // ),
                  ))
            ],
          )),
    );
  }
}
