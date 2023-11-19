import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import '../constants.dart';
import '../model/product_model.dart';
import 'package:flutter/material.dart';

import 'components/appbar.dart';
import 'components/category.dart';
import 'components/sorting.dart';
import 'faviorateScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bottom bar
      // now we will use bottom bar package
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selectedIndex,
        showElevation: true, // use this to remove appBar's elevation
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: Color.fromARGB(255, 0, 136, 247),
            inactiveColor: Colors.grey[500],
            // activeColor: kpink,
            // inactiveColor: Colors.grey[300],
          ),
          BottomNavyBarItem(
            icon: GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => FaviorateScreen(),
                      ),
                    );
                  });
                },
                child: Icon(Icons.favorite_rounded)),
            title: Text('Favorite'),
            inactiveColor: Colors.grey[500],
            activeColor: Color.fromARGB(255, 248, 18, 2),
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.message),
            title: Text('Messages'),
            inactiveColor: Colors.grey[500],
            activeColor: Color.fromARGB(255, 0, 136, 247),
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
            inactiveColor: Colors.grey[500],
            activeColor: Color.fromARGB(255, 0, 136, 247),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            CustomeAppBar(),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Hi Ahmed Mohamed",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            "Today is a good day\nto learn something new!",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.black54,
                              wordSpacing: 2.0,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        children: [
                          Container(
                            height: 80,
                            width: 90,
                            decoration: BoxDecoration(
                                color: kpurple,
                                borderRadius: BorderRadius.circular(15.0)),
                            child: Image.asset("assets/images/user.jpg",
                                fit: BoxFit.cover),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  //sorting
                  Sorting(),
                  const SizedBox(height: 15),
                  //category list

                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Categories",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Text(
                            "See All",
                            style: TextStyle(fontSize: 20, color: kblue),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //now we create model of our images and colors which we will use in our app
                  // const SizedBox(
                  //   height: 10
                  // ),
                  //we can not use gridview inside column
                  //use shrinkwrap and physical scroll
                  CategoryList(),
                  const SizedBox(height: 20),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
