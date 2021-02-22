import 'package:flutter/material.dart';
import 'utilities/colors.dart' show MyColors;
import 'modules/home/components/drawer.dart' show DrawerComponent;
import 'modules/home/pages/index.dart' show IndexPage;
import 'modules/swo/pages/swo.dart' show SWOPage;
import 'modules/history/pages/history.dart' show HistoryPage;
import 'modules/profile/pages/profile.dart' show ProfilePage;

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
        iconTheme: IconThemeData(color: MyColors.color1),
        backgroundColor: Colors.white,
        title: Text(
          _title,
          style: TextStyle(
            color: MyColors.color1,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: _pages[_currentPage],
      drawer: DrawerComponent(),

  //This is better than the existing BottomNavBar. Good job.
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentPage,
        selectedItemColor: MyColors.color1,
        unselectedItemColor: Colors.grey[500],
        showSelectedLabels: true,
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
            label: 'Service Work Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restore),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
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
