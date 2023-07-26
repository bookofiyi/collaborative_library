import 'package:collab_library/models/course_resource.dart';
import 'package:collab_library/repositories/course_repository.dart';
import 'package:collab_library/screens/resource_details.dart';
import 'package:collab_library/widget/customWidgets.dart';
import 'package:flutter/material.dart';
import 'package:image_card/image_card.dart';
import 'package:intl/intl.dart';

class AllResources extends StatefulWidget {
  const AllResources({super.key, required this.courseCode});
  final String courseCode;

  @override
  State<AllResources> createState() => _AllResourcesState();
}

class _AllResourcesState extends State<AllResources> {
  final courseRepository = CourseRepository();
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
        title: widget.courseCode.isEmpty
            ? const Text('All Resources')
            : Column(
                children: [
                  const Text('All Resources'),
                  Text(
                    widget.courseCode,
                    style: const TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                setState(() {});
              },
              icon: const Icon(Icons.refresh))
        ],
      ),
      body: FutureBuilder<List<CourseResource>>(
          future: courseRepository.getCourseResources(widget.courseCode),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }

            final courseResources = snapshot.data ?? [];

            if (courseResources.isEmpty) {
              return const Center(
                child: Text('Be the first to upload a resource to this course'),
              );
            }
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    children: List.generate(courseResources.length, (index) {
                      final courseResource = courseResources[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ResourceDetailsPage(
                                        courseResource: courseResource,
                                      )));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: FillImageCard(
                            imageProvider: const AssetImage(
                                'assets/images/docPreview.png'),
                            width: MediaQuery.of(context).size.width * 2.5,
                            heightImage: 100,
                            // height: 300,
                            tags: [
                              customTag(
                                  courseName: widget.courseCode.isEmpty
                                      ? 'CSC201'
                                      : widget.courseCode)
                            ],
                            title: Text(courseResource.title),
                            description: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Uploaded by ${courseResource.uploadedBy.isEmpty ? 'Someone' : courseResource.uploadedBy}',
                                  style: const TextStyle(fontSize: 10),
                                ),
                                Text(
                                  DateFormat('dd MMMM yyyy')
                                      .format(courseResource.dateUploaded),
                                  style: const TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                            color: const Color(0xFFF0F4FD),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
