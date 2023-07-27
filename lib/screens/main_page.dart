import 'package:collab_library/logic/colors.dart';
import 'package:collab_library/logic/font_family.dart';
import 'package:collab_library/models/course_resource.dart';
import 'package:collab_library/repositories/course_repository.dart';
import 'package:collab_library/screens/all_courses.dart';
import 'package:collab_library/screens/all_resources.dart';
import 'package:collab_library/screens/resource_details.dart';
// import 'package:collab_library/screens/resource_details.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:collab_library/screens/search_result.dart';
import 'package:collab_library/widget/customWidgets.dart';
import 'package:flutter/material.dart';
import 'package:image_card/image_card.dart';
import 'package:intl/intl.dart';

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
  final user = FirebaseAuth.instance.currentUser;
  final courseRepository = CourseRepository();
  final TextEditingController _searchFieldController = TextEditingController();
  bool _showClearIcon = false;

  void _textChangeListener() {
    setState(() {
      _showClearIcon = _searchFieldController.text.isNotEmpty;
    });
  }

  @override
  void initState() {
    _searchFieldController.addListener(_textChangeListener);
    super.initState();
  }

  @override
  void dispose() {
    _searchFieldController.dispose();
    super.dispose();
  }

  void showInSnackBar(context, String value) {
    final snackBar = SnackBar(
      content: Text(value),
      backgroundColor: AppColor.primaryColor,
      behavior: SnackBarBehavior.floating,
      action: SnackBarAction(
        label: 'DISMISS',
        textColor: AppColor.kwhiteColor,
        onPressed: () {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

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
            backgroundImage: AssetImage('assets/images/pic.png'),
            radius: 10,
          ),
        ),
        title: const Text('Hello, Iyiola'),
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.only(top: 4.0, right: 8.0, bottom: 4.0),
        //     child: SizedBox(
        //       width: 90,
        //       child: DropdownButtonFormField(
        //           items: <String>[
        //             'Part 1',
        //             'Part 2',
        //             'Part 3',
        //             'Part 4',
        //             'Part 5'
        //           ].map<DropdownMenuItem<String>>((String value) {
        //             return DropdownMenuItem<String>(
        //               value: value,
        //               child: Text(value),
        //             );
        //           }).toList(),
        //           value: selectedValue,
        //           decoration: InputDecoration(
        //             isDense: true,
        //             fillColor: Colors.grey[500]!.withOpacity(0.2),
        //             filled: true,
        //             focusColor: AppColor.primaryColor,
        //             enabledBorder: OutlineInputBorder(
        //               borderRadius: BorderRadius.circular(10),
        //               borderSide: BorderSide.none,
        //             ),
        //             focusedBorder: OutlineInputBorder(
        //               borderRadius: BorderRadius.circular(10),
        //               borderSide: BorderSide.none,
        //             ),
        //             border: OutlineInputBorder(
        //               borderRadius: BorderRadius.circular(
        //                 15,
        //               ),
        //               borderSide: const BorderSide(
        //                 color: AppColor.primaryColor,
        //                 width: 1,
        //               ),
        //             ),
        //           ),
        //           onChanged: (value) {
        //             setState(() {
        //               selectedValue = value;
        //             });
        //           }),
        //     ),
        //   ),
        // ],
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
                    const Text(
                      'What are you looking for?',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      cursorColor: AppColor.primaryColor,
                      controller: _searchFieldController,
                      textInputAction: TextInputAction.search,
                      onFieldSubmitted: (value) {
                        if (value.isNotEmpty) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SearchResults(
                                        searchQuery: value,
                                      )));
                        } else {
                          showInSnackBar(context,
                              'Search query cannot be empty. Try entering something...');
                        }
                      },
                      decoration: InputDecoration(
                        isDense: true,
                        fillColor: const Color(0xFFF0F4FD),
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
                            (15),
                          ),
                          borderSide: const BorderSide(
                            color: AppColor.primaryColor,
                            width: (1),
                          ),
                        ),
                        prefixIcon: const Icon(
                          Icons.search_rounded,
                          color: AppColor.primaryColor,
                        ),
                        suffixIcon: _showClearIcon
                            ? IconButton(
                                onPressed: () {
                                  setState(() {
                                    _searchFieldController.clear();
                                    _showClearIcon = false;
                                  });
                                },
                                icon: const Icon(
                                  Icons.clear,
                                  color: AppColor.primaryColor,
                                ))
                            : null,
                        hintText: 'Search resource title, course...',
                        hintStyle: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                                color: AppColor.inputtextColor.withOpacity(0.4),
                                fontFamily: FontFamily.sfRegular,
                                fontSize: 14),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Courses',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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

                    SizedBox(
                      height: 110,
                      child: GridView.count(
                        scrollDirection: Axis.horizontal,
                        crossAxisCount: 1,
                        // shrinkWrap: true,

                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => const AllResources(
                                          courseCode: 'TPD502'))));
                            },
                            child: const ListTile(
                              title: Text(
                                'TPD502',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              // subtitle:
                              //     Text('Science, Technology and Innovation'),
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
                              // subtitle: Text('Hardware Systems Studies'),
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
                              // subtitle: Text('Industrial Application Studies'),
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
                              // subtitle:
                              //     Text('Computer System Project Management'),
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
                              // subtitle: Text(
                              //     'Natural Language Processing and Applications'),
                              trailing: Icon(Icons.arrow_forward_ios_rounded),
                            ),
                          ),
                        ],
                        // children: List.generate(5, (index) {
                        //   return GestureDetector(
                        //     onTap: () {
                        //       Navigator.push(
                        //           context,
                        //           MaterialPageRoute(
                        //               builder: ((context) => const AllResources(
                        //                     courseCode: 'CSC201',
                        //                   ))));
                        //     },
                        //     child: const ListTile(
                        //       visualDensity: VisualDensity.compact,
                        //       dense: true,
                        //       title: Text(
                        //         'CSC201',
                        //         style: TextStyle(
                        //           fontWeight: FontWeight.bold,
                        //           fontSize: 18,
                        //         ),
                        //       ),
                        //       // subtitle: Text('Computer Programming I'),
                        //       trailing: Icon(Icons.arrow_forward_ios_rounded),
                        //     ),
                        //   );
                        // }),
                      ),
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //   children: [
                    //     Container(
                    //       height: MediaQuery.of(context).size.width / 5.5,
                    //       width: MediaQuery.of(context).size.width / 5.5,
                    //       color: const Color(0xFFE2E8F0),
                    //     ),
                    //     Container(
                    //       height: MediaQuery.of(context).size.width / 5.5,
                    //       width: MediaQuery.of(context).size.width / 5.5,
                    //       color: const Color(0xFFE2E8F0),
                    //     ),
                    //     Container(
                    //       height: MediaQuery.of(context).size.width / 5.5,
                    //       width: MediaQuery.of(context).size.width / 5.5,
                    //       color: const Color(0xFFE2E8F0),
                    //     ),
                    //     Container(
                    //       height: MediaQuery.of(context).size.width / 5.5,
                    //       width: MediaQuery.of(context).size.width / 5.5,
                    //       color: const Color(0xFFE2E8F0),
                    //     ),
                    //     Container(
                    //       height: MediaQuery.of(context).size.width / 5.5,
                    //       width: MediaQuery.of(context).size.width / 5.5,
                    //       color: const Color(0xFFE2E8F0),
                    //     ),
                    //   ],
                    // ),
                    // const SizedBox(
                    //   height: 20,
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Newly Uploaded',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => const AllResources(
                                          courseCode: '',
                                        ))));
                          },
                          child: const Text('See all'),
                        ),
                      ],
                    ),
                    // const SizedBox(
                    //   height: 10,
                    // ),

                    SizedBox(
                      height: 194,
                      child: FutureBuilder<List<CourseResource>>(
                        future: courseRepository.getCourseResources('CPE508'),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }

                          final courseResources = snapshot.data ?? [];

                          if (courseResources.isEmpty) {
                            return const Center(
                              child: Text(
                                  'Be the first to upload a resource to this course'),
                            );
                          }
                          return GridView.count(
                            crossAxisCount: 1,
                            scrollDirection: Axis.horizontal,
                            children:
                                List.generate(courseResources.length, (index) {
                              final courseResource = courseResources[index];
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ResourceDetailsPage(
                                                courseResource: courseResource,
                                              )));
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: FillImageCard(
                                    imageProvider: const AssetImage(
                                        'assets/images/docPreview.png'),
                                    width:
                                        MediaQuery.of(context).size.width * 2.5,
                                    heightImage: 100,
                                    // height: 300,
                                    tags: [customTag(courseName: 'CPE508')],
                                    title: Text(courseResource.title),
                                    description: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Uploaded by ${courseResource.uploadedBy.isEmpty ? 'Someone' : courseResource.uploadedBy}',
                                          style: const TextStyle(fontSize: 10),
                                        ),
                                        Text(
                                          DateFormat('dd MMMM yyyy').format(
                                              courseResource.dateUploaded),
                                          style: const TextStyle(fontSize: 10),
                                        ),
                                      ],
                                    ),
                                    color: const Color(0xFFF0F4FD),
                                  ),
                                ),
                              );
                            }),
                          );
                        },
                      ),
                      // child: GridView.count(
                      //   scrollDirection: Axis.horizontal,
                      //   crossAxisCount: 1,
                      //   children: List.generate(6, (index) {
                      //     return GestureDetector(
                      //       onTap: () {
                      //         // Navigator.push(
                      //         //     context,
                      //         //     MaterialPageRoute(
                      //         //         builder: (context) =>
                      //         //             const ResourceDetailsPage()));
                      //       },
                      //       child: Padding(
                      //         padding: const EdgeInsets.only(right: 16.0),
                      //         child: FillImageCard(
                      //           imageProvider: const AssetImage(
                      //               'assets/images/docPreview.png'),
                      //           width: MediaQuery.of(context).size.width * 2.5,
                      //           heightImage: 100,
                      //           // height: 300,
                      //           tags: [customTag(courseName: 'CSC201')],
                      //           title: const Text(
                      //             'Intro to CSC201',
                      //             style: TextStyle(fontWeight: FontWeight.bold),
                      //           ),
                      //           description: const Row(
                      //             mainAxisAlignment:
                      //                 MainAxisAlignment.spaceBetween,
                      //             children: [
                      //               Text(
                      //                 'Uploaded by Someone',
                      //                 style: TextStyle(fontSize: 10),
                      //               ),
                      //               Text(
                      //                 '12th July 2023',
                      //                 style: TextStyle(fontSize: 10),
                      //               ),
                      //             ],
                      //           ),
                      //           color: const Color(0xFFF0F4FD),
                      //         ),
                      //       ),
                      //     );
                      //   }),
                      // ),
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
                    const Text(
                      'My Downloads',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      height: 350,
                      color: const Color(0xFFF0F4FD),
                      child: const Center(
                        child: Text(
                          'You have no downloads yet.',
                          style: TextStyle(
                              // fontWeight: FontWeight.bold,
                              ),
                        ),
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
