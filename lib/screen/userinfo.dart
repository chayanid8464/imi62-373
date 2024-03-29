import 'package:flutter/material.dart';

import '../models/users.dart';

class UserInfo extends StatefulWidget {
  const UserInfo({super.key});

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  @override
  Widget build(BuildContext context) {
    var user = ModalRoute.of(context)!.settings.arguments as Users;

    return Scaffold(
      appBar: AppBar(
        title: const Text("User Info"),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Card(
          child: ListView(
            children: [
              ListTile(
                title: Text("Full Name"),
                subtitle: Text("${user.fullname}"),
              ),
              ListTile(
                title: Text("Email"),
                subtitle: Text("${user.email}"),
              ),
              ListTile(
                title: Text("Gender"),
                subtitle: Text("${user.gender}"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}