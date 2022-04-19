import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restourantsapp/datas/image_url.dart';
import 'package:restourantsapp/datas/titles.dart';
import 'package:restourantsapp/widgets/searchbar_widget.dart';

import '../widgets/bottom_nav_bar.dart';
import '../widgets/titlebar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFecf0f5),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            searchBar(),
            titlebar(headings[0], "See all (45)"),
            Container(
                padding: EdgeInsets.only(left: 10),
                height: 230,
                // color: Colors.grey,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: trendingimageUrl.length,
                    itemBuilder: (contex, index) {
                      return Stack(children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 13.0),
                          child: Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(blurRadius: 1.8, color: Colors.grey)
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                ClipRRect(
                                  child: Image(
                                      image:
                                          NetworkImage(trendingimageUrl[index]),
                                      fit: BoxFit.fill,
                                      height: 170,
                                      width: 310),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      topLeft: Radius.circular(10)),
                                ),
                                Container(
                                    width: 310,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10.0, top: 10),
                                          child: Text(
                                            htlnames[index],
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5.0, left: 10),
                                          child: Text(
                                            htlAaddress[index],
                                            overflow: TextOverflow.ellipsis,
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                      ],
                                    ))
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                            top: 12,
                            left: 10,
                            child: Container(
                              color: Colors.white,
                              // margin: EdgeInsets.all(10),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 4, vertical: 2),
                              child: Padding(
                                padding: const EdgeInsets.all(.0),
                                child: Text("open",
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold)),
                              ),
                            )),
                        Positioned(
                            top: 12,
                            right: 25,
                            child: Container(
                              color: Colors.white,
                              // margin: EdgeInsets.all(10),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 4, vertical: 2),
                              child: Padding(
                                padding: const EdgeInsets.all(.0),
                                child: Text("4.5",
                                    style: TextStyle(
                                        color: Colors.orange,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ))
                      ]);
                    })),
            titlebar(headings[1], "See all (9)"),
            Container(
                padding: EdgeInsets.only(left: 10),
                height: 100,
                child: ListView.builder(
                    itemCount: categoryimageurl.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Stack(children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 13.0),
                          child: Container(
                            width: 100,
                            // color: Colors.transparent,
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    opacity: 0.8,
                                    image:
                                        NetworkImage(categoryimageurl[index]),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Positioned(
                            left: 20,
                            top: 30,
                            child: Text(
                              cuisines[index],
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ))
                      ]);
                    })),
            titlebar(headings[2], "See all"),
            Container(
                height: 50,
                // color: Colors.blue,
                child: ListView.builder(
                    itemCount: peopleimageurl.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: CircleAvatar(
                          backgroundColor: Colors.blue,
                          radius: 25,
                          backgroundImage: NetworkImage(peopleimageurl[index]),
                        ),
                      );
                    })),
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
