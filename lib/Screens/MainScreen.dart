import 'package:flutter/material.dart';
import 'package:mobiletheme/Screens/ContactUs.dart';
import 'package:mobiletheme/Screens/Information.dart';
import 'package:mobiletheme/Screens/NewsScreen.dart';

import 'HomeScreen.dart';

class MainScreen extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() {
    return MainScreenState();
  }
}
 
class MainScreenState extends State<MainScreen> {
  int selectPage = 0;
  final pages = [HomeScreen(),NewsScreen(),InformationScreen(),Contact()];
  @override
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectPage,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: 'News',
          ), BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Info',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.contact_emergency),
            label: 'ContactUs',
          )
        ],
        currentIndex: selectPage,
        onTap: (value) {
          setState(() {
            selectPage = value;
          });
        },
        selectedItemColor: const Color.fromARGB(255, 164, 69, 69),
        selectedFontSize: 20,
        unselectedFontSize: 14,
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.black,
      ),
    );
    
  }
}