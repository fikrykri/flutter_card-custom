import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Custom Card Example",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff8c062f),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xfffe5788), Color(0xfff56d5d)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8, // 80% dari layar
              height:
                  MediaQuery.of(context).size.height * 0.7, // 70% dari layar
              child: Card(
                elevation: 10,
                child: Stack(
                  children: [
                    // Pattern background
                    Opacity(
                      opacity: 0.1,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            image: DecorationImage(
                                image: AssetImage("images/pattern-2.png"),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    // top image
                    Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      // 35% dari tinggi card
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4),
                              topRight: Radius.circular(4)),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://vagabondish.com/wp-content/uploads/manhattan-beach-pier-california-3308746244.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    // text
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          20,
                          50 + MediaQuery.of(context).size.height * 0.35,
                          20,
                          20),
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              "Beautiful Sunset at Beach",
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xfff56d5d), fontSize: 25),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 20, 0, 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Posted on ",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  ),
                                  Text(
                                    "November 05, 2020",
                                    style: TextStyle(
                                        color: Color(0xfff56d5d), fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Spacer(
                                  flex: 10,
                                ),
                                Icon(
                                  Icons.thumb_up,
                                  size: 18,
                                  color: Colors.grey,
                                ),
                                Spacer(
                                  flex: 1,
                                ),
                                Text(
                                  "99",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Spacer(
                                  flex: 5,
                                ),
                                Icon(
                                  Icons.comment,
                                  size: 18,
                                  color: Colors.grey,
                                ),
                                Spacer(
                                  flex: 1,
                                ),
                                Text(
                                  "888",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Spacer(
                                  flex: 10,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
