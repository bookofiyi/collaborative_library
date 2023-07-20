import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1.5,
        leading: const CircleAvatar(
          backgroundImage: AssetImage('assets/images/pic.jpg'),
          radius: 20,
        ),
        title: const Text('Hello, Iyiola'),
        actions: [
          MaterialButton(
            onPressed: () {},
            color: const Color(0xFF121212),
            child: const Row(
              children: [
                Text('Part 2'),
                Icon(Icons.arrow_downward_rounded),
              ],
            ),
          ),
        ],
      ),
      body: const Column(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Text('What are you looking for?'),
                    TextField(),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
