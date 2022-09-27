import 'package:flutter/material.dart';
import 'package:flutter_application/ui/pages/authentication/authenticationMethods/authentication_method.dart';
import 'package:flutter_application/ui/pages/authentication/gettingStarted/getting_started_page.dart';
import 'package:flutter_application/ui/pages/authentication/registerPage/register_page.dart';
import 'package:flutter_application/utils/navigator_support.dart';

import '../pages.dart';

class AuthenticationNavigator extends StatefulWidget {
  const AuthenticationNavigator({Key? key}) : super(key: key);

  @override
  _AuthenticationNavigatorState createState() =>
      _AuthenticationNavigatorState();
}

class _AuthenticationNavigatorState extends State<AuthenticationNavigator> {
  @override
  Widget build(BuildContext context) {
    return NavigatorSupport(
      initialRoute: 'login',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case GettingStartedPage.routerName:
            return MaterialPageRoute(builder: (context) => const GettingStartedPage());
          case AuthenticationMethods.routerName:
            return MaterialPageRoute(builder: (context) => const AuthenticationMethods());
          case SignInPage.routerName:
            return MaterialPageRoute(builder: (context) => const SignInPage());
          case RegisterPage.routerName:
            return MaterialPageRoute(builder: (context) => const RegisterPage());
          default:
            return MaterialPageRoute(builder: (context) => const GettingStartedPage());
        }

      },
    );
  }
}
