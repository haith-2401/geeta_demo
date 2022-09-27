import 'package:flutter/material.dart';
import '../../gen/assets.gen.dart';
import '../../utils/color_extension.dart';

class TextFieldSection extends StatefulWidget {

  final bool isActive;
  final bool shouldShowWarning;
  final String sectionTitle;
  final String imagePath;

  const TextFieldSection(
      {Key? key,
      this.isActive = false,
      required this.sectionTitle,
      required this.imagePath,
      this.shouldShowWarning = false})
      : super(key: key);

  @override
  State<TextFieldSection> createState() => _TextFieldSectionState();
}

class _TextFieldSectionState extends State<TextFieldSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.fromLTRB(44, 40, 44, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.sectionTitle, style: const TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),),
          const SizedBox(height: 10,),
          Container(
              width: MediaQuery.of(context).size.width -88,
              height: 50,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: widget.isActive? HexColor.fromHex("#6342E8") : HexColor.fromHex("#A1A1A1")),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage(widget.imagePath)),
                  const SizedBox(width: 10,),
                  const Expanded(child: TextField(style: TextStyle(fontSize: 12, color: Colors.black),)),
                  const SizedBox(width: 10,),
                  Image(image: AssetImage(widget.isActive? Assets.images.icErrorCircleViolet.path : Assets.images.icErrorCircleBlack.path)),
                ],
              )
          )
        ],
      ),
    );
  }
}