import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_cars_rental/home_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  int _currentIndex = 0;

  late CarouselSlider carouselSlider;

  List imageList = [
    'assets/Image1.png',
    'assets/Image2.png',
    'assets/Image3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: /*Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.blue.shade900,
              Colors.blue,
              Colors.blue.shade400,
            ],
          ),
        ),
        
      ),*/
            Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              CarouselSlider(
                options: CarouselOptions(
                  height: 350.0,
                  initialPage: 0,
                  autoPlay: true,
                  reverse: false,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                  scrollDirection: Axis.horizontal,
                  autoPlayInterval: Duration(seconds: 2),
                  autoPlayAnimationDuration: Duration(milliseconds: 2000),
                  onPageChanged: (index, reason) => _currentIndex = index,
                  // pauseAutoPlayOnTouch: Duration(seconds: 10),
                  // scrollDirection: Axis.horizontal,
                ),
                items: imageList
                    .map(
                      (item) => Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                          margin: EdgeInsets.only(
                            top: 10.0,
                            bottom: 10.0,
                          ),
                          //elevation: 6.0,
                          //shadowColor: Colors.redAccent,

                          child: ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            child: Image.asset(
                              item,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.15,
            decoration: BoxDecoration(),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Search your car",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ]),
          ),
          SizedBox(
            height: 80,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imageList.map((urlOfItem) {
              int index = imageList.indexOf(urlOfItem);
              return Container(
                width: 10.0,
                height: 10.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == index
                      ? Color.fromRGBO(0, 0, 0, 0.8)
                      : Color.fromRGBO(0, 0, 0, 0.3),
                ),
              );
            }).toList(),
          ),
          SizedBox(
            height: 70,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonTheme(
                  minWidth: MediaQuery.of(context).size.width * 0.45,
                  height: MediaQuery.of(context).size.width * 0.13,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );
                    },
                    color: Colors.blue,
                    child: Text(
                      "Sign In",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white)),
                  ),
                ),
                ButtonTheme(
                  minWidth: MediaQuery.of(context).size.width * 0.45,
                  height: MediaQuery.of(context).size.width * 0.13,
                  child: RaisedButton(
                    onPressed: () {},
                    color: Colors.greenAccent.shade400,
                    child: Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white)),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    ));
  }
}
