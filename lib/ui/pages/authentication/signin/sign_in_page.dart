import 'package:flutter/material.dart';
import 'package:flutter_application/lib.dart';
import 'package:flutter_application/utils/color_extension.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../generated/l10n.dart';
import '../../../widgets/TextFieldSection.dart';
import '../registerPage/register_page.dart';

class SignInPage extends StatefulWidget {
  static const String routerName = "SignInPage";

  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    //?
    var rememberMeCheckedValue = true;
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: Container(
            width: mediaQueryData.size.width,
            height: mediaQueryData.size.height,
            margin: EdgeInsets.symmetric(vertical: 0.0),
            padding: EdgeInsets.symmetric(vertical: 0.0),
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
                  padding: EdgeInsets.fromLTRB(44, 0, 0, 0),
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
                  padding: EdgeInsets.fromLTRB(44, 0, 44, 0),
                  child: const Text("Welcome Back!",
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
                  padding: EdgeInsets.fromLTRB(44, 0, 44, 0),
                  child: const Text(
                      "Yay! You're back! Thanks for shopping with us\nWe have excited deals and promotions going on, grab your pick now! ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Lato",
                      )),
                ),
                Expanded(
                    child: Container(
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.fromLTRB(44, 0, 44, 40),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      alignment: Alignment.centerLeft,
                    ),
                    onPressed: () {
                      // Handle authentication and navigate
                    },
                    child: const Text(
                      "LOG IN",
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
            child: Container(
          color: Colors.white,
          child: Column(
            children: [
              TextFieldSection(sectionTitle: "Email address", imagePath:  Assets.images.icEnvelope.path, shouldShowWarning: true, showIcon: true,),
              TextFieldSection(sectionTitle: "Password", imagePath: Assets.images.icLock.path, shouldShowWarning: true, showIcon: true,),
              const SizedBox(height: 10,),
              Container(
                padding: const EdgeInsets.fromLTRB(44, 0, 44, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                        value: rememberMeCheckedValue,
                        onChanged: (newValue) {
                          setState(() {
                            rememberMeCheckedValue = newValue ?? false;
                          });
                        }),
                    const Text(
                      "Remember me",
                      style: TextStyle(
                          fontSize: 12, color: Colors.black),
                    ),
                    Expanded(child: Container()),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        alignment: Alignment.centerLeft,
                      ),
                      onPressed: () {
                        // Handle authentication and navigate
                      },
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                            color: HexColor.fromHex("#6342E8"),
                            fontSize: 12),
                      ),
                    )
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(MainNavigator.routerName);
                },
                style: ElevatedButton.styleFrom(
                    primary: HexColor.fromHex("#6342E8"),
                    shape: const StadiumBorder(),
                    side: const BorderSide(width: 0),
                  fixedSize: Size(MediaQuery.of(context).size.width - 88, 54),),
                child: const Text(
                  "LOG IN",
                  style:
                      TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not registered yet?",
                    style: TextStyle(
                        fontSize: 12, color: HexColor.fromHex("#A1A1A1")),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      alignment: Alignment.centerLeft,
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed(RegisterPage.routerName);
                    },
                    child: Text(
                      " Create an Account",
                      style: TextStyle(
                          color: HexColor.fromHex("#6342E8"),
                          fontSize: 12),
                    ),
                  )
                ],
              )
            ],
          ),
        )),
      ],
    ));
  }
}
