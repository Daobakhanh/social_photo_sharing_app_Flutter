import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final paddingSafeAreaSize = MediaQuery.of(context).padding.top +
        MediaQuery.of(context).padding.bottom;
    const double marginCard = 10;
    //define height
    final heightSmallCardCustom = (size.height - paddingSafeAreaSize) / 5;
    final heightSmallCardDefault =
        (size.height - heightSmallCardCustom - paddingSafeAreaSize) / 3;

    //define width
    final widthQuarterOfScreen = (size.width - marginCard) / 4;

    return Scaffold(
      body: SafeArea(
        top: true,
        child: Container(
          color: Colors.white,
          child: Stack(
            // alignment: Alignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: heightSmallCardCustom,
                          color: Colors.blue,
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          // height: heightSmallCardCustom / 4,
                                          // width: widthQuarterOfScreen / 3,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          // height: heightSmallCardCustom / 4,
                                          // width: widthQuarterOfScreen / 3,
                                          color: Colors.orange,
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          // height: heightSmallCardCustom / 4,
                                          // width: widthQuarterOfScreen / 3,
                                          color: Colors.blueGrey,
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          // height: heightSmallCardCustom / 4,
                                          // width: widthQuarterOfScreen / 3,
                                          color: Colors.red,
                                        ),
                                      )
                                    ],
                                  )),
                              Expanded(
                                flex: 2,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            // width: widthQuarterOfScreen / 3,
                                            height: heightSmallCardCustom / 4,
                                            color: Colors.green,
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            // width: widthQuarterOfScreen / 3,
                                            height: heightSmallCardCustom / 4,
                                            color: Colors.yellow,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: heightSmallCardDefault,
                          color: Colors.black,
                        ),
                        Container(
                          height: heightSmallCardDefault,
                          color: Colors.yellowAccent,
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.pink,
                      // width: size.width / 2,
                      margin: const EdgeInsets.only(right: marginCard),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.pink,
                    ),
                  ),
                ],
              ),
              Positioned(
                  // left: 0,
                  // top: 0,
                  right: 20,
                  bottom: 20,
                  child: Container(
                      child: IconButton(
                        icon: const Icon(Icons.home),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black38,
                                offset: Offset(3, 6),
                                blurRadius: 6)
                          ],
                          color: Colors.blue,
                          borderRadius:
                              BorderRadius.all(Radius.circular(24))))),
              Positioned(
                  bottom: heightSmallCardDefault * 4 / 3,
                  left: (widthQuarterOfScreen * 2) / 3,
                  child: Container(
                    width: widthQuarterOfScreen,
                    height: heightSmallCardDefault / 2,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
