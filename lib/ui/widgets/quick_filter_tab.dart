import 'package:flutter/material.dart';

import '../../utils/color_extension.dart';

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