import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage(
      {super.key,
      required this.onScreenHideButtonPressed,
      required this.hideStatus});
  final VoidCallback onScreenHideButtonPressed;
  final bool hideStatus;

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1.5,
        title: const Text('Profile'),
        centerTitle: true,
      ),
      body: const Center(
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/images/pic.jpg'),
          radius: 100,
        ),
      ),
    );
  }
}
