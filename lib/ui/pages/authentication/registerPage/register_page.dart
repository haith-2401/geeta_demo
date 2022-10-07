import 'package:flutter/material.dart';
import 'package:flutter_application/lib.dart';
import 'package:flutter_application/utils/color_extension.dart';

import '../../../../gen/assets.gen.dart';
import '../../../widgets/TextFieldSection.dart';

class RegisterPage extends StatefulWidget {
  static const String routerName = "RegisterPage";

  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    //?
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            width: mediaQueryData.size.width,
            height: mediaQueryData.size.height,
            margin: const EdgeInsets.symmetric(vertical: 0.0),
            padding: const EdgeInsets.symmetric(vertical: 0.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  Assets.images.authenticationBackground.path,
                ),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 80,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.fromLTRB(44, 0, 0, 0),
                  child: InkResponse(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 18,
                        width: 18,
                        alignment: Alignment.topLeft,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              Assets.images.backArrow.path,
                            ),
                          ),
                        ),
                      )),
                ),
                const SizedBox(
                  height: 80,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.fromLTRB(44, 0, 44, 0),
                  child: const Text("Get’s started with Geeta.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Lato",
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.fromLTRB(44, 0, 44, 0),
                  child: Row(
                    children: [
                      const Text("Already have an account?",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Lato",
                          )),
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          alignment: Alignment.centerLeft,
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed(SignInPage.routerName);
                        },
                        child: const Text(
                          "Log in",
                          style: TextStyle(
                              fontStyle: FontStyle.normal,
                              color: Colors.white,
                              fontSize: 12),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                    child: Container(
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.fromLTRB(44, 0, 44, 40),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      alignment: Alignment.centerLeft,
                    ),
                    onPressed: () {
                      // Handle authentication and navigate
                    },
                    child: const Text(
                      "REGISTER",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ))
              ],
            ),
          ),
        ),
        Expanded(
            flex: 3,
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  TextFieldSection(sectionTitle: "Your Name", imagePath:  Assets.images.icAvatar.path, shouldShowWarning: true,),
                  TextFieldSection(
                    sectionTitle: "Email address",
                    imagePath: Assets.images.icEnvelope.path,
                  ),
                  TextFieldSection(
                    sectionTitle: "Password",
                    imagePath: Assets.images.icLock.path,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(44, 0, 44, 0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: HexColor.fromHex("#6342E8"),
                          shape: const StadiumBorder(),
                          side: const BorderSide(width: 0),
                        fixedSize: Size(MediaQuery.of(context).size.width - 88, 54),
                      ),
                      child: const Text(
                        "REGISTER",
                        style:
                            TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "By  joining I agree to receive emails from Geeta.",
                        style: TextStyle(
                            fontSize: 12, color: HexColor.fromHex("#A1A1A1")),
                      ),
                    ],
                  )
                ],
              ),
            )),
      ],
    ));
  }
}
