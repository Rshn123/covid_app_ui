import 'package:covid_app/ui/education_screen.dart';
import 'package:covid_app/ui/home_screen.dart';
import 'package:covid_app/ui/map_screen.dart';
import 'package:covid_app/ui/startup_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigationScreen extends StatefulWidget {
  @override
  _BottomNavigationScreenState createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  static List<Widget> _screens = <Widget>[HomeScreen(), MapScreen(), EducationScreen()];
  PageController _pageController = PageController();
  int _selectedIndex = 0;

  Widget _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _navigationBarTitle(String title) {
    return Text(
      title,
      style: TextStyle(color: Color(0xff999999)),
    );
  }

  void _itemTapped(int selectedIndex){
    _pageController.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: _onItemTapped,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  'icons/home.png',
                ),
                color: Color(0xff999999),
              ),
              title: _navigationBarTitle("Home")),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('icons/Vector.png'),
                color: Color(0xff999999),
              ),
              title: _navigationBarTitle("Map")),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('icons/user.png'),
                color: Color(0xff999999),
              ),
              title: _navigationBarTitle("Education")),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('icons/map-pin.png'),
                color: Color(0xff999999),
              ),
              title: _navigationBarTitle("Discovery")),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('icons/book-open.png'),
                color: Color(0xff999999),
              ),
              title: _navigationBarTitle("News")),
        ],
        selectedItemColor: Colors.red,
        onTap: _itemTapped,
        currentIndex: _selectedIndex,
      ),
    );
  }
}
