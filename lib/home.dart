import 'package:flutter/material.dart';
import 'components/home/drawer.dart' show DrawerComponent;
import 'pages/index.dart' show IndexPage;
import 'pages/swo.dart' show SWOPage;
import 'pages/history.dart' show HistoryPage;
import 'pages/profile.dart' show ProfilePage;
import 'utilities/colors.dart' show MyColors;

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  String _title;
  int _currentPage = 0;

  final List<Widget> _pages = [
    IndexPage(),
    SWOPage(),
    HistoryPage(),
    ProfilePage(),
  ];

  @override
  initState() {
    super.initState();
    _title = 'Home';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title, style: TextStyle(color: MyColors.color1)),
        iconTheme: IconThemeData(color: MyColors.color1),
        backgroundColor: Colors.white,
      ),
      body: _pages[_currentPage],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentPage,
        selectedItemColor: MyColors.color1,
        unselectedItemColor: Colors.grey[500],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restore),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      drawer: DrawerComponent(),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentPage = index;
      switch (index) {
        case 0:
          {
            _title = "Home";
          }
          break;
        case 1:
          {
            _title = "SWO";
          }
          break;
        case 2:
          {
            _title = "History";
          }
          break;
        case 3:
          {
            _title = "Profile";
          }
          break;
      }
    });
  }
}
