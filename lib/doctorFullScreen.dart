
import 'package:flutter/material.dart';



class SecondPage extends StatefulWidget {
  SecondPage({this.title , this.subtitle , this.fee, this.img , this.time} );
  final title ;
  final subtitle;
  final fee ;
  final img;
  final time ;

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  List<Color> clr = [
    Color(0xff8ab5dd),
    Color(0xff94d3da),
    Color(0xfff7d2b8),
    Color(0xfff5bc77),
  ];
  List<String> title = ["648", "6", "1080", '4.9'];
  List<String> subtitle = ["Patients", "Years Exp", "Surgery", "Rating"];

  //week list items
  List <String> day = ["sun" ,"mon" ,"tue" ,"wed" , "thus"];
  List <String> date = ["1" ,"2" ,"3" ,"4" ,"5"];
  List <String> fees = ["200" ,"120" ,"125" ,"122" ,"180"];
  String fee ="2";
  String active  ="5";



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
            backgroundColor: Color(0xfff2c6a9),
            body: SingleChildScrollView(
                child: SafeArea(
                    child: Container(
                        child: Column(children: [
                          Container(
                            padding: EdgeInsets.only(left: 10, right: 10, top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                          IconButton(icon:Icon(Icons.arrow_back_ios , color: Colors.white , size: 25,), onPressed: (){
                            Navigator.pop(context);
                          }),
                                Icon(
                                  Icons.menu_open,
                                  size: 25,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 350,
                            child: Container(
                                child: Image.asset(
                                  widget.img,
                                  width: 300,
                                  height: 300,
                                )),
                          ),
                           Container(
                            width: double.infinity,

                            child: Stack(
                              overflow: Overflow.visible,
                              children: [

                                  Container(
                                    padding: EdgeInsets.only(top: 100, left: 10, right: 10),
                                    width: double.infinity,
                                    height: 500,
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Appointment",
                                              style: TextStyle(
                                                  color: Color(0xFF344766),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: [
                                                Icon(
                                                  Icons.arrow_back_ios_rounded,
                                                  size: 15,
                                                  color: Color(0xFF344766),
                                                ),
                                                Text(
                                                  "August",
                                                  style: TextStyle(
                                                      color: Color(0xFF344766),
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w500),
                                                ),
                                                Icon(
                                                  Icons.arrow_forward_ios_rounded,
                                                  size: 15,
                                                  color: Color(0xFF344766),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),

                                        Container(
                                          height: 100,
                                            child: ListView.builder(
                                          itemCount: day.length,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.horizontal,
                                            itemBuilder: (context , index){
                                              return InkWell(
                                                child: DaysListClass(
                                                    onTap: (){
                                                  setState(() {
                                                    active = date[index];
                                                    fee = fees[index];
                                                    print(date);
                                                  });
                                                },
                                                  day: day[index],
                                                  active: active,
                                                  date: date[index],),
                                              );
                                            })),

                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "About",
                                              style: TextStyle(
                                                  color: Color(0xFF344766),
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            FlatButton(
                                              onPressed: () {},
                                              highlightColor: Colors.green,
                                              child: Text(
                                                "Call Now",
                                                style: TextStyle(color: Colors.green),
                                              ),
                                            )
                                          ],
                                        ),
                                        Text(
                                          "Doctors that work within a community They are the front line and first point of contact in a patient's health care. ",
                                          style: TextStyle(
                                              color: Color(0xFF344766),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w300),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Container(
                                          height: 60,
                                          child: ListView.builder(
                                              itemCount: clr.length,
                                              scrollDirection: Axis.horizontal,
                                              shrinkWrap: true,
                                              itemBuilder: (context, index) {
                                                return AboutListClass(
                                                  clr: clr[index],
                                                  title: title[index],
                                                  subtitle: subtitle[index],
                                                );
                                              }),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(40),
                                        color: Colors.white),
                                  ),



                                Positioned(
                                  bottom: 0,
                                  child: Container(
                                    height: 70,
                                    width: 400,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          "Fee: Rs $fee \\-",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        RaisedButton(
                                          onPressed: () {},
                                          textColor: Colors.white,
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20)),
                                          color: Color(0xffaadbe2),
                                          child: Text("Appointment"),
                                        )
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        color: Color(0xff94d3da),
                                        borderRadius: BorderRadius.circular(50)),
                                  ),
                                ),
                                Positioned(
                                  top: -50,
                                  left: 30,
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    width: 330,
                                    height: 100,
                                    child: Column(
                                      children: [

                                        Text(
                                          widget.title,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18),
                                        ),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Text(
                                          widget.subtitle,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10),
                                        ),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        Text(
                                          widget.time,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10),
                                        ),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        Text(
                                          widget.fee,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 11),
                                        ),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        color: Color(0xff8eb4db),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0xffd7e3f2),
                                            offset: Offset(0, 10),
                                            spreadRadius: 0,
                                            blurRadius: 5,
                                          )
                                        ],
                                        borderRadius: BorderRadius.circular(40)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ])))));
  }
}

class DaysListClass extends StatefulWidget {
  const DaysListClass({
    this.day,
    this.date,
    this.active,
    this.onTap,
    this.fees,
    this.fee,

  }) ;
  final String date;
  final String day;
  final Function onTap;
  final String fees;
  final String  fee;
    final String active;

  @override
  _DaysListClassState createState() => _DaysListClassState();
}

class _DaysListClassState extends State<DaysListClass> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        widget.onTap?.call();

      },
      child: Row(

        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 18),
            height: 80,
            width: 50,
            decoration: widget.active != widget.date? BoxDecoration():BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(30),
                color: Color(0xFF94D3DA),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF94D3DA),
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  )
                ]),
            child: Column(

              children: [
                Text(widget.day , style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                    fontSize: 14),),
                Text(widget.date , style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                    fontSize: 14),)
              ],
            ),

          ),
          SizedBox(width: 15,)

        ],
      )
    );
  }
}

class AboutListClass extends StatefulWidget {
  AboutListClass({this.clr, this.subtitle, this.title});

  final Color clr;

  final String title;

  final String subtitle;

  @override
  _AboutListClassState createState() => _AboutListClassState();
}

class _AboutListClassState extends State<AboutListClass> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.only(top: 5),
          width: 100,
          height: 100,
          child: Column(
            children: [
              Text(
                widget.title,
                style: TextStyle(color: Colors.white),
              ),
              Text(
                widget.subtitle,
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          decoration: BoxDecoration(
            color: widget.clr,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        SizedBox(
          width:8,
        )
      ],
    );
  }
}
