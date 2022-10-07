import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';
import '../../utils/color_extension.dart';
import 'icon_tabbar_button.dart';

class HomeGridCell extends StatelessWidget {
  const HomeGridCell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2 - 40,
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Column(children: [
              Expanded(flex: 3, child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(Assets.images.demoProduct.path), fit: BoxFit.fill)
                ),
              )),
              Expanded(flex: 1, child: Column(children: [
                const SizedBox(height: 10,),
                const Text("Product Name", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                const SizedBox(height: 5,),
                Text("40.00 USD", style: TextStyle(color: HexColor.fromHex("#A1A1A1"),fontSize: 16, fontWeight: FontWeight.bold),)
              ],))
            ],),

          ),
          Container(
            alignment: Alignment.topRight,
            padding: const EdgeInsets.fromLTRB(0, 20, 15, 0),
            child: IconTabbarButton(iconPath: Assets.icons.favorite.path, callback: (){}),
          ),
        ],
      ),
    );
  }
}