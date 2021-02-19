import 'package:flutter/material.dart';
import '../components/profile/user_information.dart' show UserInfoComponent;
import '../components/profile/bank_details.dart' show BankDetailsComponent;
import '../components/profile/other_details.dart' show OtherDetailsComponent;

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
      child: SingleChildScrollView(
        child: Column(
          children: [
            UserInfoComponent(),
            BankDetailsComponent(),
            OtherDetailsComponent()
          ],
        ),
      ),
    );
  }
}
