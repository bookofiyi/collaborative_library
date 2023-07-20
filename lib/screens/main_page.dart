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
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
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
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('What are you looking for?'),
                    const TextField(),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Courses'),
                        TextButton(
                          onPressed: () {},
                          child: const Text('See all'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          color: const Color(0xFFE2E8F0),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: const Color(0xFFE2E8F0),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: const Color(0xFFE2E8F0),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: const Color(0xFFE2E8F0),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: const Color(0xFFE2E8F0),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Newly Uploaded'),
                        TextButton(
                          onPressed: () {},
                          child: const Text('See all'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 350,
                          width: 350,
                          color: const Color(0xFFE2E8F0),
                        ),
                        Container(
                          height: 350,
                          width: 350,
                          color: const Color(0xFFE2E8F0),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text('My Downloads'),
                    Container(
                      width: double.infinity,
                      height: 350,
                      color: const Color(0xFFE2E8F0),
                      child: const Center(
                        child: Text('You have no downloads yet.'),
                      ),
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
