import 'package:flutter/material.dart';
import 'customicon.dart';

class MovieDetails extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

//thepunisher
class _HomeState extends State<MovieDetails> {
  List<String> images = [
    "assets/images/runaways.jpg",
    "assets/images/avengers.jpg",
    "assets/images/blackpanther.jpg",
    "assets/images/runaways.jpg",
    "assets/images/avengers.jpg",
    "assets/images/blackpanther.jpg"
  ];

  List<String> titles = [
    "Runaways",
    "Avengers: infinity war",
    "Black Panther",
    "Runaways",
    "Avengers: infinity war",
    "Black Panther"
  ];

  List<Widget> movies() {
    List<Widget> movieList = new List();

    for (int i = 0; i < 6; i++) {
      var movieitem = i == 0
          ? Padding(
              padding:
                  EdgeInsets.only(left: 60, bottom: 25, right: 25, top: 25),
              child: Container(
                height: 220.0,
                width: 135.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10.0,
                          offset: Offset(0.0, 10.0))
                    ]),
                child: Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0)),
                      child: Image.asset(
                        images[i],
                        width: double.infinity,
                        height: 130.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 4.0, left: 8.0, right: 8.0),
                      child: Text(titles[i],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: "SF-Pro-Display-Bold")),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 3.0),
                      child: Text(i == 0 ? "Season 2" : ""),
                    )
                  ],
                ),
              ),
            )
          : Padding(
              padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 12.0),
              child: Container(
                height: 220.0,
                width: 135.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10.0,
                          offset: Offset(0.0, 10.0))
                    ]),
                child: Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0)),
                      child: Image.asset(
                        images[i],
                        width: double.infinity,
                        height: 130.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 4.0, left: 8.0, right: 8.0),
                      child: Text(titles[i],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: "SF-Pro-Display-Bold")),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 3.0),
                      child: Text(i == 0 ? "Season 2" : ""),
                    )
                  ],
                ),
              ),
            );
      movieList.add(movieitem);
    }
    return movieList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              height: 300,
              child: Stack(
                children: <Widget>[
                  Image.asset(
                    "assets/images/punisher.jpg",
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 300,
                  ),
                  Container(
                    color: Colors.black.withOpacity(0.3),
                  ),
                  Center(
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 50.0,
                    ),
                  ),
                  Positioned(
                    bottom: 40,
                    right: 0,
                    left: 0,
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("S2:E1",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15)),
                          SizedBox(
                            height: 10,
                          ),
                          Text("RedHouse Blue",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white)),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: 260,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(

                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(35),
                      topLeft: Radius.circular(35)),
                  child: SingleChildScrollView(
                    child: Container(
                      color: Colors.white,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          child: Padding(
                            padding: EdgeInsets.all(40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Episode info",
                                    style: TextStyle(
                                        fontSize: 24,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                    "rfghjgfdtesrtedtrftgyh rfghjgfdtesrtedtrftgyh "
                                    "rfghjgfdtesrtedtrftgyh rfghjgfdtesrtedtrftgyh "
                                    "rfghjgfdtesrtedtrftgyh rfghjgfdtesrtedtrftgyh "
                                    "rfghjgfdtesrtedtrftgyh rfghjgfdtesrtedtrftgyh"
                                    " rfghjgfdtesrtedtrftgyh",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                    )),
                                SizedBox(
                                  height: 40,
                                ),
                                Text("More episodes",
                                    style: TextStyle(
                                        fontSize: 24,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                                Container(
                                  height: 250.0,
                                  child: Container(
                                    child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      children: movies(),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            AppBar(
              backgroundColor: Colors.transparent,
              leading: Icon(Icons.arrow_back),
              title: Center(child: Text("Marvel's The Punisher")),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Color(0xFFE52020)),
              title: Text("Home", style: TextStyle(color: Color(0xFFE52020)))),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              title: Text("Search", style: TextStyle())),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.bookmark_border,
              ),
              title: Text(
                "Bookmark",
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), title: Text("Profile"))
        ],
      ),
    );
  }
}
