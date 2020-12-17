import 'package:docotorlist/doctorFullScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List title = [
    "Prof Dr. Lakshmi prasad",
    "Prof Dr. jane Foster",
    "Prof Dr. Tommy Smith"
  ];
  List subtitle = [
    "Heart surgeon - Indian",
    "Heart surgeon - Indian",
    "Heart surgeon - Indian",
  ];
  List time = [
    "10.40Am - 2.40Pm",
    "10.40Am - 2.40Pm",
    "10.40Am - 2.40Pm"
  ];
  List price = ["Rs 1000/-", "Rs 500/-", "Rs 550/-"];
  List<Color> clr = [
    Color(0xfff1b56c),
    Color(0xfff3c5a6),
    Color(0xff96d1dc),
  ];
  List img = ["img/doc9.png", "img/doc8.png", "img/doc11.png"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.blueGrey[50],
            body: SingleChildScrollView(
                child: SafeArea(
                    child: Container(
              margin: EdgeInsets.all(15),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu_open,
                      size: 34,
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xff9fd5dd),
                      radius: 22,
                      backgroundImage: AssetImage("img/bot6.png"),
                    )
                  ],
                ),
                SizedBox(
                  height: 13,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hello Jane",
                          style: TextStyle(
                              color: Color(0xFF344766),
                              fontWeight: FontWeight.bold,
                              fontSize: 16)),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Find Your Specialist",
                        style: TextStyle(
                            color: Color(0xFF344766),
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Stack(
                  overflow: Overflow.visible,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Search Doctor",
                          hintStyle: TextStyle(
                            color: Color(0xFFE6E8EA),
                          ),
                          prefixIcon: Icon(
                            Icons.search_rounded,
                            size: 30,
                            color: Color(0xFFE6E8EA),
                          ),
                          filled: true,
                          isDense: true,
                          fillColor: Color(0xffffffff),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                              ))),
                    ),
                    Positioned(
                      right: -10,
                      top: -2,
                      child: CircleAvatar(
                        backgroundColor: Color(0xFFE6E8EA),
                        radius: 30,
                        child: CircleAvatar(
                          backgroundColor: Color(0xff9dd6dd),
                          radius: 25,
                          child: Icon(
                            Icons.add_road,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  margin: EdgeInsets.only(left: 5),
                  child: Row(
                    children: [
                      Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Color(0xff8db4db),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xffd6e2f0),
                                    offset: Offset(1, 10),
                                    blurRadius: 4,
                                    spreadRadius: 2)
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "img/hrt.png",
                                height: 50,
                                width: 50,
                              ),
                              Text(
                                "Cardiology",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Color(0xff94d3da),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xffdceef1),
                                    offset: Offset(3, 15),
                                    blurRadius: 7,
                                    spreadRadius: 3)
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "img/di.png",
                                height: 50,
                                width: 50,
                              ),
                              Text(
                                "Gastrology",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Color(0xfff2c7a7),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xfff9e7df),
                                    offset: Offset(3, 15),
                                    blurRadius: 7,
                                    spreadRadius: 0)
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "img/mind.png",
                                height: 50,
                                width: 50,
                              ),
                              Text(
                                "Neurology",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top Doctor",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF344766),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                ListView.builder(
                    itemCount: price.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      String tl = title[index];
                      return Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            height: 130,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.blueGrey[50],
                                      offset: Offset(4, 4),
                                      blurRadius: 15)
                                ]),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  backgroundColor: clr[index],
                                  child: InkWell(
                                    child: Image.asset(
                                      img[index],
                                      height: 60,
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  SecondPage(title: title[index], subtitle: subtitle[index], fee: price[index], img: img[index], time: time[index],)));
                                    },
                                  ),
                                  radius: 40,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text( title[index]
                                      ,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF4C5C79),
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        subtitle[index],
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.timelapse_outlined,
                                            color: Color(0xFFA7EFF0),
                                            size: 13,
                                          ),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          Text(
                                               time[index],
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              child: Text(
                                                price[index],
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.grey),
                                          )),
                                          RaisedButton(
                                            onPressed: () {},
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            elevation: 1,
                                            child: Text(
                                              "Appointment",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            color: Color(0xffabdcdf),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      );
                    })
              ]),
            )))));
  }
}

class TopDoctorListClass extends StatefulWidget {
  TopDoctorListClass(
      {this.title, this.img, this.subtitle, this.clr, this.time, this.price});

  final String img;
  final String title;
  final String subtitle;
  final String time;
  final String price;
  final Color clr;

  @override
  _TopDoctorListClassState createState() => _TopDoctorListClassState();
}

class _TopDoctorListClassState extends State<TopDoctorListClass> {
  @override
  Widget build(BuildContext context) {
    return SizedBox();
  }
}
//     return Column(
//       children: [
//         Container(
//           padding: EdgeInsets.all(10),
//           height: 130,
//           decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(20),
//               boxShadow: [
//                 BoxShadow(
//                     color: Colors.blueGrey[50],
//                     offset: Offset(4, 4),
//                     blurRadius: 15)
//               ]),
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               CircleAvatar(
//
//                 backgroundColor: widget.clr,
//                 child: InkWell(
//
//                   child: Image.asset(widget.img , height: 60,),
//                   onTap: (){
//                     Navigator.push(context, MaterialPageRoute(builder: (context) =>SecondPage()) );
//                   },
//                 ),
//
//                 radius: 40,
//               ),
//               SizedBox(
//                 width: 10,
//               ),
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       widget.title,
//                       style: TextStyle(
//                           fontSize: 15,
//                           color: Color(0xFF4C5C79),
//                           fontWeight: FontWeight.w600),
//                     ),
//                     SizedBox(
//                       height: 5,
//                     ),
//                     Text(
//                       widget.subtitle,
//                       style: TextStyle(
//                           fontSize: 12,
//                           color: Colors.grey,
//                           fontWeight: FontWeight.w400),
//                     ),
//                     SizedBox(
//                       height: 2,
//                     ),
//                     Row(
//                       children: [
//                         Icon(
//                           Icons.timelapse_outlined,
//                           color: Color(0xFFA7EFF0),
//                           size: 13,
//                         ),
//                         SizedBox(
//                           width: 3,
//                         ),
//                         Text(
//                           widget.time,
//                           style: TextStyle(
//                             color: Colors.grey,
//                             fontSize: 10,
//                           ),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Container(
//                             child: Text(
//                               widget.price,
//                               style: TextStyle(fontSize: 10, color: Colors.grey),
//                             )),
//                         RaisedButton(
//                           onPressed: () {},
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(20)),
//                           elevation: 1,
//                           child: Text(
//                             "Appointment",
//                             style: TextStyle(color: Colors.white),
//                           ),
//                           color: Color(0xffabdcdf),
//                         )
//                       ],
//                     )
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//         SizedBox(
//           height: 10,
//         )
//       ],
//     );
//   }
// }
