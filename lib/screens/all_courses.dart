import 'package:collab_library/screens/all_resources.dart';
import 'package:flutter/material.dart';

class AllCourses extends StatefulWidget {
  const AllCourses({super.key});

  @override
  State<AllCourses> createState() => _AllCoursesState();
}

class _AllCoursesState extends State<AllCourses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1.5,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: const Text('All Courses'),
        centerTitle: true,
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const AllResources(
                            courseCode: 'CSC201',
                          ))));
            },
            child: const ListTile(
              title: Text(
                'CSC201',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Text('Computer Programming I'),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const AllResources())));
            },
            child: const ListTile(
              title: Text(
                'CSC202',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Text('Computer Programming II'),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const AllResources(
                            courseCode: 'CSC202',
                          ))));
            },
            child: const ListTile(
              title: Text(
                'CSC202',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Text('Computer Programming II'),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
          ),
        ],
      ),
    );
  }
}
