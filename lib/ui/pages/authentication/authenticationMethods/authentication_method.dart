import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/lib.dart';
import 'package:flutter_application/ui/pages/authentication/registerPage/register_page.dart';
import 'package:flutter_application/utils/color_extension.dart';

import '../../../../gen/assets.gen.dart';
import '../../../widgets/RoundButton.dart';

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
      body: Stack(
        children: [
          Container(
            width: mediaQueryData.size.width,
            height: mediaQueryData.size.height,

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
          Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Center(
                    child: Text("Geeta.", style: Theme.of(context).textTheme.headline2
                    ),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Column(
                      children: const [
                        Text(
                            "Create your fashion\n in your own way",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Lato",)
                        ),
                        SizedBox(height: 30,),
                        Text(
                            "Each men and women has their own style,\nGeeta help you to create your unique style. ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Lato",)
                        ),
                      ],
                    )
                ),
                Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        RoundButton(btnTitle: "LOG IN",
                            btnTitleColor: Colors.black,
                            callback: () {
                              Navigator.of(context)
                                  .pushNamed(SignInPage.routerName);
                            },),
                        const SizedBox(
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
                    )),
              ]
          ),
        ],
      ),
    );
  }
}
