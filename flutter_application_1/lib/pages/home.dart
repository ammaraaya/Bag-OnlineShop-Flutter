import 'package:flutter/material.dart';

import '../components/bottom_nav.dart';
import 'shop.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _SelectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _SelectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const ShopPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 128, 75, 75),
      bottomNavigationBar: BottomNav(
        //onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Padding(
              padding: EdgeInsets.only(left:12.0),
              child: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ), 
        ),
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 202, 110, 110),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Column(
            children: [
              //logo
          DrawerHeader(child: Image.asset(
              'images/Shopz.png',
              width: 400,
              //color: Colors.white,
            ),
          ),

           Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Divider(
              color: Color.fromARGB(255, 119, 48, 48),
            ),),

          //other
           const Padding(
            padding: EdgeInsets.only(left:25.0),
            child: ListTile(
              leading: Icon(Icons.home,color: Colors.black,),
              title: Text('Home', style: TextStyle(color: Colors.black, fontSize: 20),),
          ),
          ),

          const Padding(
            padding: EdgeInsets.only(left:25.0),
            child: ListTile(
              leading: Icon(Icons.info,color: Colors.black,),
              title: Text('About', style: TextStyle(color: Colors.black,fontSize: 20),),
          ),
          ),
            ],
          ),

          const Padding(
            padding: EdgeInsets.only(left:25.0, bottom: 25),
            child: ListTile(
              leading: Icon(Icons.logout,color: Colors.black,),
              title: Text('Logout', style: TextStyle(color: Colors.black,fontSize: 20),),
          ),
          ),

        ],
        ),
      ),


      body: _pages[_SelectedIndex],
    );
  }
}
