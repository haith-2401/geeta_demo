import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/ui/pages/authentication/authenticationMethods/authentication_method.dart';

class GettingStartedPage extends StatefulWidget {
  static const String routerName = "GettingStartedPage";

  const GettingStartedPage({Key? key}) : super(key: key);

  @override
  State<GettingStartedPage> createState() => _GettingStartedPageState();
}

class _GettingStartedPageState extends State<GettingStartedPage> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              child: CarouselSlider(
            options: CarouselOptions(
                height: MediaQuery.of(context).size.height,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
            items: [1, 2, 3].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          Assets.images.gettingStartedPng.path,
                        ),
                      ),
                    ),
                    child: Column(
                      children: [
                        Expanded(flex: 3, child: Container()),
                        Expanded(
                            flex: 2,
                            child: Column(
                              children: [
                                Container(
                                  child: Center(
                                      child: Text("Geeta.",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 104,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: "Lato"))),
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 50),
                                  child: Center(
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pushNamed(AuthenticationMethods.routerName);
                                      },
                                      child: Text("SHOP NOW"),
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.transparent,
                                          elevation: 0,
                                          onSurface: Colors.white,
                                          side: BorderSide(
                                              color: Colors.white,
                                              width: 3,
                                              style: BorderStyle.solid),
                                          fixedSize: Size(222, 54),
                                          shape: StadiumBorder()),
                                    ),
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                  );
                },
              );
            }).toList(),
          )),
          Column(
            children: [
              Spacer(),
              Container(
                height: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [0, 1, 2].map((index) {
                    return Container(
                      width: _current == index ? 64.0 : 8.0,
                      height: 8.0,
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
