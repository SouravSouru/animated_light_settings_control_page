import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:light_animated_view/utilites/colors.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double SliderValue = 0.0;
  List<Color> colorSection = [
    AppColors.color1,
    AppColors.color2,
    AppColors.color3,
    AppColors.color4,
    AppColors.color5,
    AppColors.color6,
    AppColors.white
  ];
  List<String> upperListIteams = ["Main Light", "Desk Light", "Bed Lights"];

  int selectedUpperListIndex = 0;

  double lightTextPadding = 0.0;
  double scenes1padding = 130.0;
  double scenes2padding = 130.0;
  double circleColorPadding = 0.0;
  double topListViewPadding = 500;
  double blubPadding = 50.0;
  double blubstantPadding = 20.0;
  double selectedOppacity = 1;

  int selectedColors = 10;
  void _updatePadding(double value) async {
    await Future.delayed(Duration(seconds: 1));
    setState(() {
      lightTextPadding = value;
      scenes1padding = 200;
      scenes2padding = 200;
      circleColorPadding = 12;
      topListViewPadding = 10;
      blubPadding = 80;
      blubstantPadding = 50;
    });

    await Future.delayed(Duration(seconds: 1));
    setState(() {
      SliderValue = 100.0;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _updatePadding(lightTextPadding == 0.0 ? 20.0 : 0.0);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _updatePadding(lightTextPadding == 0.0 ? 20.0 : 0.0);
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.bgColors,
      body: SafeArea(
        child: Container(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                width: width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0, left: 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                                size: 20,
                              ),
                              Text(
                                "Bed",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                            ],
                          ),
                          Text(
                            "Room",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 6),
                            child: Container(
                              height: 50,
                              child: AnimatedPadding(
                                padding: EdgeInsets.only(top: lightTextPadding),
                                duration: const Duration(seconds: 2),
                                curve: Curves.linearToEaseOut,
                                child: lightTextPadding > 5
                                    ? Text(
                                        "4 Lights",
                                        style: TextStyle(
                                            color: AppColors.buldlight,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      )
                                    : Text(""),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Stack(
                      clipBehavior: Clip.antiAlias,
                      children: [
                        AnimatedPadding(
                          padding:
                              EdgeInsets.only(left: 30.0, top: blubPadding),
                          duration: const Duration(seconds: 2),
                          curve: Curves.linearToEaseOut,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: selectedColors == 0
                                    ? AppColors.color1
                                        .withOpacity(selectedOppacity)
                                    : selectedColors == 1
                                        ? AppColors.color2
                                            .withOpacity(selectedOppacity)
                                        : selectedColors == 2
                                            ? AppColors.color3
                                                .withOpacity(selectedOppacity)
                                            : selectedColors == 3
                                                ? AppColors.color4.withOpacity(
                                                    selectedOppacity)
                                                : selectedColors == 4
                                                    ? AppColors.color5
                                                        .withOpacity(
                                                            selectedOppacity)
                                                    : selectedColors == 5
                                                        ? AppColors.color6
                                                            .withOpacity(
                                                                selectedOppacity)
                                                        : selectedColors == 10
                                                            ? Colors.yellow
                                                                .withOpacity(
                                                                    selectedOppacity)
                                                            : Colors.red
                                  ..withOpacity(selectedOppacity)),
                          ),
                        ),
                        AnimatedPadding(
                          padding: EdgeInsets.only(
                              right: 20.0, top: blubstantPadding),
                          duration: const Duration(seconds: 2),
                          curve: Curves.linearToEaseOut,
                          child: Container(
                            height: 40,
                            width: 120,
                            child: ClipPath(
                                clipper: TriangleClipper(),
                                child: Container(
                                  color: AppColors.lightcover,
                                )),
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 35.0,
                              ),
                              child: Container(
                                color: AppColors.lightcover,
                                height: 60,
                                width: 7,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              AnimatedPadding(
                padding: EdgeInsets.only(left: topListViewPadding),
                duration: const Duration(seconds: 2),
                curve: Curves.linearToEaseOut,
                child: Container(
                  height: 60,
                  width: width,
                  color: Colors.transparent,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: upperListIteams.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                selectedUpperListIndex = index;
                              });
                            },
                            child: Container(
                                width: 120,
                                decoration: BoxDecoration(
                                    color: selectedUpperListIndex == index
                                        ? AppColors.lightGreen
                                        : Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      index == 2
                                          ? Icons.bed_outlined
                                          : index == 1
                                              ? Icons.fastfood_rounded
                                              : Icons.lightbulb_outline,
                                      color: selectedUpperListIndex == index
                                          ? AppColors.white
                                          : AppColors.lightGreen,
                                    ),
                                    Text(
                                      upperListIteams[index],
                                      style: TextStyle(
                                          color: selectedUpperListIndex == index
                                              ? AppColors.white
                                              : AppColors.lightGreen,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    )
                                  ],
                                )),
                          ),
                        );
                      }),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Container(
                        width: width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30),
                                topLeft: Radius.circular(30))),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 20.0, left: 18, right: 18),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Intesity",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.lightbulb_outline,
                                      color: Colors.grey,
                                      size: 30,
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: SfSlider(
                                        min: 0.0,
                                        max: 100.0,
                                        value: SliderValue,
                                        activeColor: AppColors.buldlight,
                                        interval: 20,
                                        showTicks: false,
                                        showLabels: false,
                                        enableTooltip: false,
                                        minorTicksPerInterval: 1,
                                        onChanged: (dynamic value) {
                                          setState(() {
                                            print("selected persentage $value");
                                            SliderValue = value;
                                            if (value == 0.0) {
                                              selectedOppacity = 0;
                                            }
                                            if (value > 20) {
                                              selectedOppacity = 0.2;
                                            }
                                            if (value >= 40) {
                                              selectedOppacity = 0.4;
                                            }
                                            if (value >= 60) {
                                              selectedOppacity = 0.6;
                                            }
                                            if (value >= 80) {
                                              selectedOppacity = 0.8;
                                            }
                                            if (value >= 100) {
                                              selectedOppacity = 1;
                                            }
                                          });
                                        },
                                      ),
                                    ),
                                    Icon(
                                      Icons.lightbulb_outline,
                                      color: SliderValue > 50
                                          ? AppColors.buldlight
                                          : Colors.grey,
                                      size: 30,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 18.0),
                                child: Text(
                                  "Colors",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 18.0),
                                child: Container(
                                  height: 30,
                                  width: width,
                                  color: Colors.transparent,
                                  child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: colorSection.length,
                                      padding: EdgeInsets.all(0),
                                      itemBuilder: (context, index) {
                                        return AnimatedPadding(
                                          padding: EdgeInsets.only(
                                              left: circleColorPadding),
                                          duration: const Duration(seconds: 2),
                                          curve: Curves.linearToEaseOut,
                                          child: InkWell(
                                            onTap: () {
                                              setState(() {
                                                selectedColors = index;
                                              });
                                            },
                                            child: Container(
                                              width: 30,
                                              decoration: BoxDecoration(
                                                  color: colorSection[index],
                                                  shape: BoxShape.circle),
                                              child: index == 6
                                                  ? Center(
                                                      child: Icon(
                                                        Icons.add,
                                                        color: Colors.black,
                                                      ),
                                                    )
                                                  : Container(),
                                            ),
                                          ),
                                        );
                                      }),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 18.0),
                                child: Text(
                                  "Scenes",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ), //
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                            width: 150,
                                            height: 55,
                                            decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                    colors: [
                                                      AppColors.color1,
                                                      AppColors.color1shade
                                                    ],
                                                    begin:
                                                        const FractionalOffset(
                                                            0.0, 1.0),
                                                    end: const FractionalOffset(
                                                        1.0, 0.0),
                                                    //stops: [0.0, 1.0],
                                                    tileMode: TileMode.clamp),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10))),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Icon(
                                                  Icons.lightbulb_outline_sharp,
                                                  color: AppColors.white,
                                                ),
                                                Text(
                                                  "Birthday",
                                                  style: TextStyle(
                                                      color: AppColors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 18),
                                                )
                                              ],
                                            )),
                                        AnimatedPadding(
                                          padding: EdgeInsets.only(
                                              left: scenes1padding),
                                          duration: const Duration(seconds: 2),
                                          curve: Curves.linearToEaseOut,
                                          child: Container(
                                              width: 150,
                                              height: 55,
                                              decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                      colors: [
                                                        AppColors.color4,
                                                        AppColors.color4shade
                                                      ],
                                                      begin:
                                                          const FractionalOffset(
                                                              0.0, 1.0),
                                                      end:
                                                          const FractionalOffset(
                                                              1.0, 0.0),
                                                      //stops: [0.0, 1.0],
                                                      tileMode: TileMode.clamp),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(10))),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Icon(
                                                    Icons
                                                        .lightbulb_outline_sharp,
                                                    color: AppColors.white,
                                                  ),
                                                  Text(
                                                    "Party",
                                                    style: TextStyle(
                                                        color: AppColors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 18),
                                                  )
                                                ],
                                              )),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Row(
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                            width: 150,
                                            height: 55,
                                            decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                    colors: [
                                                      AppColors.color3,
                                                      AppColors.color3shade
                                                    ],
                                                    begin:
                                                        const FractionalOffset(
                                                            0.0, 1.0),
                                                    end: const FractionalOffset(
                                                        1.0, 0.0),
                                                    //stops: [0.0, 1.0],
                                                    tileMode: TileMode.clamp),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10))),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Icon(
                                                  Icons.lightbulb_outline_sharp,
                                                  color: AppColors.white,
                                                ),
                                                Text(
                                                  "Relax",
                                                  style: TextStyle(
                                                      color: AppColors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 18),
                                                )
                                              ],
                                            )),
                                        AnimatedPadding(
                                          padding: EdgeInsets.only(
                                              left: scenes2padding),
                                          duration: const Duration(seconds: 2),
                                          curve: Curves.linearToEaseOut,
                                          child: Container(
                                              width: 150,
                                              height: 55,
                                              decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                      colors: [
                                                        AppColors.color2,
                                                        AppColors.color2shade
                                                      ],
                                                      begin:
                                                          const FractionalOffset(
                                                              0.0, 1.0),
                                                      end:
                                                          const FractionalOffset(
                                                              1.0, 0.0),
                                                      //stops: [0.0, 1.0],
                                                      tileMode: TileMode.clamp),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(10))),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Icon(
                                                    Icons
                                                        .lightbulb_outline_sharp,
                                                    color: AppColors.white,
                                                  ),
                                                  Text(
                                                    "Fun",
                                                    style: TextStyle(
                                                        color: AppColors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 18),
                                                  )
                                                ],
                                              )),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 30.0),
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 2,
                                spreadRadius: 1,
                                offset: Offset(0, 0.5),
                              ),
                            ],
                          ),
                          child: Center(
                            child: Icon(
                              Icons.power_settings_new,
                              color: Colors.orange,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final path = Path();
    path.lineTo(size.width / 2.1, 0);
    path.lineTo(size.width / 1.4, size.height);
    path.lineTo(0, size.height);
    path.lineTo(size.width / 5, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(TriangleClipper oldClipper) => true;
}
