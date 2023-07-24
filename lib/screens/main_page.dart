import 'package:collab_library/logic/colors.dart';
import 'package:collab_library/screens/all_courses.dart';
import 'package:collab_library/screens/all_resources.dart';
import 'package:collab_library/screens/resource_details.dart';
import 'package:collab_library/widget/customWidgets.dart';
import 'package:flutter/material.dart';
import 'package:image_card/image_card.dart';

class MainPage extends StatefulWidget {
  const MainPage(
      {super.key,
      required this.onScreenHideButtonPressed,
      required this.hideStatus});
  final VoidCallback onScreenHideButtonPressed;
  final bool hideStatus;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // String? selectedValue = 'Part 1';
  // List<DropdownMenuItem<String>> partList = [
  //   const DropdownMenuItem(
  //     value: 'part1',
  //     child: Text('Part 1'),
  //   ),
  //   const DropdownMenuItem(
  //     value: 'part2',
  //     child: Text('Part 2'),
  //   ),
  //   const DropdownMenuItem(
  //     value: 'part3',
  //     child: Text('Part 3'),
  //   ),
  //   const DropdownMenuItem(
  //     value: 'part4',
  //     child: Text('Part 4'),
  //   ),
  //   const DropdownMenuItem(
  //     value: 'part5',
  //     child: Text('Part 5'),
  //   ),
  // ];

  String? selectedValue = 'Part 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton.large(
      //   onPressed: () {},
      //   child: const Icon(Icons.add),
      // ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1.5,
        leading: const Padding(
          padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/pic.jpg'),
            radius: 10,
          ),
        ),
        title: const Text('Hello, Iyiola'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 4.0, right: 8.0, bottom: 4.0),
            child: SizedBox(
              width: 90,
              child: DropdownButtonFormField(
                  items: <String>[
                    'Part 1',
                    'Part 2',
                    'Part 3',
                    'Part 4',
                    'Part 5'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  value: selectedValue,
                  decoration: InputDecoration(
                    isDense: true,
                    fillColor: Colors.grey[500]!.withOpacity(0.2),
                    filled: true,
                    focusColor: AppColor.primaryColor,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                      borderSide: const BorderSide(
                        color: AppColor.primaryColor,
                        width: 1,
                      ),
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value;
                    });
                  }),
            ),
          ),
          // MaterialButton(
          //   onPressed: () {},
          //   color: const Color(0xFF121212),
          //   child: const Row(
          //     children: [
          //       Text('Part 2'),
          //       Icon(Icons.arrow_downward_rounded),
          //     ],
          //   ),
          // ),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                          style: TextButton.styleFrom(
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const AllCourses()));
                          },
                          child: const Text('See all'),
                        ),
                      ],
                    ),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.width / 5.5,
                          width: MediaQuery.of(context).size.width / 5.5,
                          color: const Color(0xFFE2E8F0),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.width / 5.5,
                          width: MediaQuery.of(context).size.width / 5.5,
                          color: const Color(0xFFE2E8F0),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.width / 5.5,
                          width: MediaQuery.of(context).size.width / 5.5,
                          color: const Color(0xFFE2E8F0),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.width / 5.5,
                          width: MediaQuery.of(context).size.width / 5.5,
                          color: const Color(0xFFE2E8F0),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.width / 5.5,
                          width: MediaQuery.of(context).size.width / 5.5,
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
                          style: TextButton.styleFrom(
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) =>
                                        const AllResources())));
                          },
                          child: const Text('See all'),
                        ),
                      ],
                    ),
                    // const SizedBox(
                    //   height: 10,
                    // ),

                    SizedBox(
                      height: 200,
                      child: GridView.count(
                        scrollDirection: Axis.horizontal,
                        crossAxisCount: 1,
                        children: List.generate(6, (index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ResourceDetailsPage()));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: FillImageCard(
                                imageProvider:
                                    const AssetImage('assets/images/got.jpg'),
                                width: MediaQuery.of(context).size.width * 2.5,
                                heightImage: 100,
                                // height: 300,
                                tags: [customTag(courseName: 'CSC201')],
                                title: const Text(
                                  'Intro to CSC201',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                description: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Uploaded by Someone',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    Text(
                                      '12th July 2023',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                ),
                                color: const Color(0xFFF8FAFC),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     Container(
                    //       height: MediaQuery.of(context).size.width / 2.5,
                    //       width: MediaQuery.of(context).size.width / 2.5,
                    //       color: const Color(0xFFE2E8F0),
                    //     ),
                    //     Container(
                    //       height: MediaQuery.of(context).size.width / 2.5,
                    //       width: MediaQuery.of(context).size.width / 2.5,
                    //       color: const Color(0xFFE2E8F0),
                    //     ),
                    //   ],
                    // ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text('My Downloads'),
                    const SizedBox(
                      height: 10,
                    ),
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
