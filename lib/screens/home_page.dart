import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PersistentTabController _controller;
  late bool _hideNavBar;

  @override
  void initState() {
    _controller = PersistentTabController();
    _hideNavBar = false;
    super.initState();
  }

  // List<Widget> _buildScreens() => [

  // ]

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
