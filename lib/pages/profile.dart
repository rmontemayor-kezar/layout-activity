import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProfilePageState();
  }
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              gradient: LinearGradient(
                colors: [
                  Color(0xff306A9B),
                  Color(0xff7ED4D9),
                ],
                begin: FractionalOffset(0.0, 1.0),
                end: FractionalOffset(1.0, 0.0),
                stops: [0.0, 0.8],
                tileMode: TileMode.clamp,
              ),
            ),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/user_default.png'),
                  radius: 50,
                ),
                Padding(
                  padding: EdgeInsets.all(0),
                  child: Card(
                    color: Colors.white,
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            '1625 Main Street',
                          ),
                        ),
                        Divider(),
                        ListTile(
                          title: Text('(408) 555-1212'),
                        ),
                        Divider(),
                        ListTile(
                          title: Text('costa@example.com'),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            alignment: Alignment.center,
            margin: EdgeInsets.all(20),
          ),
        ],
      ),
    );
  }
}
