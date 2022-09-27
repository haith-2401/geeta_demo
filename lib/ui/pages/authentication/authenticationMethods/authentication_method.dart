import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/lib.dart';
import 'package:flutter_application/ui/pages/authentication/registerPage/register_page.dart';
import 'package:flutter_application/utils/color_extension.dart';

import '../../../../gen/assets.gen.dart';

class AuthenticationMethods extends StatefulWidget {
  const AuthenticationMethods({Key? key}) : super(key: key);
  static const String routerName = "AuthenticationMethods";

  @override
  State<AuthenticationMethods> createState() => _AuthenticationMethodsState();
}

class _AuthenticationMethodsState extends State<AuthenticationMethods> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
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
                      Assets.images.
                      authenticationMethodBg.path,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                            child: Center(
                              child: Text("Geeta.", style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 44,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Lato")
                              ),
                            )
                        ),
                      ),
                      Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Container(
                                child: Text(
                                    "Create your fashion\n in your own way",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Lato",)
                                ),
                              ),
                              const SizedBox(height: 30,),
                              Container(
                                child: Text(
                                    "Each men and women has their own style,\nGeeta help you to create your unique style. ",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: "Lato",)
                                ),
                              ),
                            ],
                          )
                      ),
                      Expanded(
                          flex: 2,
                          child: Container(
                            child: Column(
                              children: [
                                RoundButton(btnTitle: "LOG IN",
                                    btnTitleColor: Colors.black,
                                    callback: () {
                                      Navigator.of(context)
                                          .pushNamed(SignInPage.routerName);
                                    },),
                                Container(
                                  height: 40,
                                  child: Center(
                                    child: Text("- OR -", style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Lato",)
                                    ),
                                  ),
                                ),
                                RoundButton(bgColor: HexColor.fromHex("#6342E8"),
                                  btnTitle: "REGISTER",
                                  btnTitleColor: Colors.white,
                                  callback: () {
                                    Navigator.of(context)
                                        .pushNamed(RegisterPage.routerName);
                                  },),
                              ],
                            ),
                          )),
                    ]
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RoundButton extends StatelessWidget {
  final Color bgColor;
  final String btnTitle;
  final Color btnTitleColor;
  final VoidCallback callback;

  const RoundButton({Key? key,
    this.bgColor = Colors.transparent,
    required this.btnTitle,
    required this.btnTitleColor,
    required this.callback,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callback.call();
      },
      child: Text(btnTitle, style: TextStyle(
        color: btnTitleColor,
        fontSize: 14,
        fontWeight: FontWeight.bold,
        fontFamily: "Lato",),
      ),
      style: ElevatedButton.styleFrom(
        primary: bgColor,
        elevation: 0,
        onSurface: Colors.black,
        side: BorderSide(
            color: Colors.black,
            width: bgColor == Colors.transparent? 2 : 0,
            style: BorderStyle.solid),
        fixedSize: const Size(222, 54),
        shape: const StadiumBorder(),),
    );
  }
}
