import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.grey.shade300,
      appBar: PreferredSize(
        
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          automaticallyImplyLeading: false,
          //backgroundColor: LinearGradient(colors: ),
          elevation: 0,
          title: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              print('Menu button');
            },
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 25, top: 10, bottom: 5),
              width: 40,
              //height: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40), color: Colors.white),
            )
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.blue.shade300,
                  Colors.blue.shade900,
                ],
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Colors.blue.shade300,
                          Colors.blue.shade900,
                        ],
                      ),
                      color: Colors.blue),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.only(top: 10),
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding:
                              EdgeInsets.only(top: 10, left: 15, bottom: 20),
                          alignment: Alignment.centerLeft,
                          //width: MediaQuery.of(context).size.width * 0.5,
                          //height: MediaQuery.of(context).size.height * 0.1,
                          decoration: BoxDecoration(
                              //color: Colors.white
                              ),
                          child: Text(
                            "Choose a Car",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                width: MediaQuery.of(context).size.width * 0.75,
                                child: TextField(
                                  decoration: InputDecoration(
                                      prefixIcon:
                                          Icon(Icons.location_on_outlined),
                                      suffixIcon: Container(
                                        padding: EdgeInsets.only(right: 7),
                                        child: Container(
                                          //padding: EdgeInsets.only(right: 10),
                                          //alignment: Alignment.center,
                                          width: 50,
                                          decoration: BoxDecoration(
                                              color: Colors.pink.shade300,
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Icon(
                                            Icons.date_range_rounded,
                                            color: Colors.white,
                                            size: 25,
                                          ),
                                        ),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintText: "Florida, USA",
                                      hintStyle: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontWeight: FontWeight.bold),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(20))),
                                ),
                              ),
                              Container(
                                child: Icon(
                                  Icons.format_list_bulleted_rounded,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              )
                            ]),
                        Container(
                          margin: EdgeInsets.only(top: 45, left: 10),
                          width: MediaQuery.of(context).size.width * 0.85,
                          //height: MediaQuery.of(context).size.height * 0.07,
                          decoration: BoxDecoration(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "23 Results",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.more_horiz_rounded))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ]),
              Container(
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width * 0.85,
                height: MediaQuery.of(context).size.height * 0.25,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(20),
                    )),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          //padding: EdgeInsets.all(20),
                          width: 60,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star_rounded,
                                color: Colors.white,
                                size: 18,
                              ),
                              Text(
                                "4.5",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Text(
                            "18 Deals",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.tealAccent.shade700,
                                fontSize: 15),
                          ),
                        )
                      ],
                    ),
                    Image(
                      image: AssetImage("assets/Cars3.png"),
                      width: 250,
                    ),
                  ],
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.65,
                  height: MediaQuery.of(context).size.height * 0.1,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(20),
                        //topRight: Radius.circular(20)
                      )),
                  child: Container(
                    margin: EdgeInsets.only(left: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Blue KIA Cerato",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "From 199/day",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: MediaQuery.of(context).size.height * 0.1,
                  decoration: BoxDecoration(
                      //color: Colors.blue.shade700,

                      ),
                  child: Container(
                    //color: Colors.white,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        //topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      color: Colors.blue.shade600,
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.double_arrow_rounded,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ]),
              Container(
                margin: EdgeInsets.only(top: 30),
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width * 0.85,
                height: MediaQuery.of(context).size.height * 0.25,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(20),
                    )),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          //padding: EdgeInsets.all(20),
                          width: 60,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star_rounded,
                                color: Colors.white,
                                size: 18,
                              ),
                              Text(
                                "4.5",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Text(
                            "10 Deals",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.tealAccent.shade700,
                                fontSize: 15),
                          ),
                        )
                      ],
                    ),
                    Image(
                      image: AssetImage("assets/Cars1.png"),
                      width: 250,
                    ),
                  ],
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.65,
                  height: MediaQuery.of(context).size.height * 0.1,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(20),
                        //topRight: Radius.circular(20)
                      )),
                  child: Container(
                    margin: EdgeInsets.only(left: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Red Tesla Model S",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "From 179/day",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: MediaQuery.of(context).size.height * 0.1,
                  decoration: BoxDecoration(
                      //color: Colors.blue.shade700,

                      ),
                  child: Container(
                    //color: Colors.white,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        //topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      color: Colors.blue.shade600,
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.double_arrow_rounded,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ]),
              Container(
                margin: EdgeInsets.only(top: 30),
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width * 0.85,
                height: MediaQuery.of(context).size.height * 0.25,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(20),
                    )),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          //padding: EdgeInsets.all(20),
                          width: 60,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star_rounded,
                                color: Colors.white,
                                size: 18,
                              ),
                              Text(
                                "4.5",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Text(
                            "10 Deals",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.tealAccent.shade700,
                                fontSize: 15),
                          ),
                        )
                      ],
                    ),
                    Image(
                      image: AssetImage("assets/Cars4.png"),
                      width: 180,
                    ),
                  ],
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.65,
                  height: MediaQuery.of(context).size.height * 0.1,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(20),
                        //topRight: Radius.circular(20)
                      )),
                  child: Container(
                    margin: EdgeInsets.only(left: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Black Tesla Model S",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "From 179/day",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: MediaQuery.of(context).size.height * 0.1,
                  decoration: BoxDecoration(
                      //color: Colors.blue.shade700,

                      ),
                  child: Container(
                    //color: Colors.white,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        //topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      color: Colors.blue.shade600,
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.double_arrow_rounded,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ]),
              Container(
                margin: EdgeInsets.only(top: 30),
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width * 0.85,
                height: MediaQuery.of(context).size.height * 0.25,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(20),
                    )),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          //padding: EdgeInsets.all(20),
                          width: 60,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star_rounded,
                                color: Colors.white,
                                size: 18,
                              ),
                              Text(
                                "4.5",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Text(
                            "10 Deals",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.tealAccent.shade700,
                                fontSize: 15),
                          ),
                        )
                      ],
                    ),
                    Image(
                      image: AssetImage("assets/Cars5.png"),
                      width: 180,
                    ),
                  ],
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.65,
                  height: MediaQuery.of(context).size.height * 0.1,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(20),
                        //topRight: Radius.circular(20)
                      )),
                  child: Container(
                    margin: EdgeInsets.only(left: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Red Tesla Model S",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "From 179/day",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: MediaQuery.of(context).size.height * 0.1,
                  decoration: BoxDecoration(
                      //color: Colors.blue.shade700,

                      ),
                  child: Container(
                    //color: Colors.white,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        //topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      color: Colors.blue.shade600,
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.double_arrow_rounded,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ])
            ],
          )
        ],
      ),
    );
  }
}
