import 'package:collab_library/screens/resource_details.dart';
import 'package:collab_library/widget/customWidgets.dart';
import 'package:flutter/material.dart';
import 'package:image_card/image_card.dart';

class AllResources extends StatefulWidget {
  const AllResources({super.key, required this.courseCode});
  final String courseCode;

  @override
  State<AllResources> createState() => _AllResourcesState();
}

class _AllResourcesState extends State<AllResources> {
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
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(25, (index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ResourceDetailsPage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FillImageCard(
                      imageProvider:
                          const AssetImage('assets/images/docPreview.png'),
                      width: MediaQuery.of(context).size.width * 2.5,
                      heightImage: 100,
                      // height: 300,
                      tags: [
                        customTag(
                            courseName: widget.courseCode.isEmpty
                                ? 'CSC201'
                                : widget.courseCode)
                      ],
                      title: widget.courseCode.isEmpty
                          ? const Text('Intro to CSC201')
                          : Text('Intro to ${widget.courseCode}'),
                      description: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      color: const Color(0xFFF0F4FD),
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
