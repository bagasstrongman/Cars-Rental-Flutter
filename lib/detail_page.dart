import 'package:flutter/material.dart';
import 'package:flutter_cars_rental/home_page.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(top: 30, left: 10),
            alignment: Alignment.topRight,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60)),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.blue.shade300,
                  Colors.blue.shade900,
                ],
              ),
            ),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return HomePage();
                      }));
                    },
                    icon: Icon(Icons.arrow_back_ios_rounded),
                    color: Colors.white),
              ],
            ),
          ),
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(color: Colors.white),
              child: ListView(scrollDirection: Axis.horizontal, children: [
                Column(children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(color: Colors.white),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(color: Colors.white),
                  ),
                ])
              ]),
            ),
            Container(
              margin: EdgeInsets.only(top: 30, bottom: 10),
              width: MediaQuery.of(context).size.width * 0.8,
              child: Text(
                "Trip Dates",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.65,
                height: MediaQuery.of(context).size.width * 0.15,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    //topRight: Radius.circular(20),
                    //bottomRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 5),
                        decoration: BoxDecoration(
                            color: Colors.pink.shade300,
                            borderRadius: BorderRadius.circular(15)),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.date_range_rounded),
                          color: Colors.white,
                        )),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        "07-03-2022 - 05-07-2022",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.15,
                height: MediaQuery.of(context).size.width * 0.15,
                decoration: BoxDecoration(
                  color: Colors.blue.shade600,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    //topLeft: Radius.circular(20),
                    //bottomLeft: Radius.circular(20)
                  ),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.double_arrow_rounded),
                  color: Colors.white,
                ),
              ),
            ]),
            Container(
              margin: EdgeInsets.only(top: 30, bottom: 10),
              width: MediaQuery.of(context).size.width * 0.8,
              child: Text(
                "Pickup & Return",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.65,
                height: MediaQuery.of(context).size.width * 0.15,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                ),
                child: Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 5),
                        decoration: BoxDecoration(
                            color: Colors.pink.shade300,
                            borderRadius: BorderRadius.circular(15)),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.location_on_outlined),
                          color: Colors.white,
                        )),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        "Miami 768 Fl",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.15,
                height: MediaQuery.of(context).size.width * 0.15,
                decoration: BoxDecoration(
                  color: Colors.blue.shade600,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.double_arrow_rounded),
                  color: Colors.white,
                ),
              ),
            ])
          ]),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                margin: EdgeInsets.only(bottom: 10),
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.1,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50))),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Container(
                            //margin: EdgeInsets.only(left: 20, top: 20),
                            child: Text(
                              "Total",
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Container(
                            //margin: EdgeInsets.only(left: 30),
                            child: Text(
                              "399 Dollars/trip",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
