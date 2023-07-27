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
          //
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const AllResources(
                            courseCode: 'TPD502',
                          ))));
            },
            child: const ListTile(
              title: Text(
                'TPD502',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Text('Science, Technology and Innovation'),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
          ),

          //
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const AllResources(
                            courseCode: 'CPE502',
                          ))));
            },
            child: const ListTile(
              title: Text(
                'CPE502',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Text('Hardware Systems Studies'),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
          ),

          //
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const AllResources(
                            courseCode: 'CPE506',
                          ))));
            },
            child: const ListTile(
              title: Text(
                'CPE506',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Text('Industrial Application Studies'),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
          ),

          //
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const AllResources(
                            courseCode: 'CPE508',
                          ))));
            },
            child: const ListTile(
              title: Text(
                'CPE508',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Text('Computer System Project Management'),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
          ),
          //
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const AllResources(
                            courseCode: 'CPE510',
                          ))));
            },
            child: const ListTile(
              title: Text(
                'CPE510',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Text('Natural Language Processing and Applications'),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
          ),
          //
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const AllResources(
                            courseCode: 'CSC514',
                          ))));
            },
            child: const ListTile(
              title: Text(
                'CSC514',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Text('Computer Graphics'),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
          ),
          //
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const AllResources(
                            courseCode: 'CSC524',
                          ))));
            },
            child: const ListTile(
              title: Text(
                'CSC524',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Text('Techniques in Data Analysis'),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
          ),
          //
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const AllResources(
                            courseCode: 'CPE204',
                          ))));
            },
            child: const ListTile(
              title: Text(
                'CPE204',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Text('Introduction to Digital Computer System II'),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
          ),
          //
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const AllResources(
                            courseCode: 'CSC522',
                          ))));
            },
            child: const ListTile(
              title: Text(
                'CSC522',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Text('Information Storage and Retrieval Systems'),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
          ),
          //
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const AllResources(
                            courseCode: 'CPE520',
                          ))));
            },
            child: const ListTile(
              title: Text(
                'CPE520',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Text('Expert Systems'),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
          ),
        ],
      ),
    );
  }
}
