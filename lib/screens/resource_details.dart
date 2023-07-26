import 'dart:io';

import 'package:collab_library/logic/colors.dart';
import 'package:collab_library/models/course_resource.dart';
import 'package:collab_library/widget/customWidgets.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:internet_file/internet_file.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';

class ResourceDetailsPage extends StatefulWidget {
  const ResourceDetailsPage({super.key, required this.courseResource});

  final CourseResource courseResource;

  @override
  State<ResourceDetailsPage> createState() => _ResourceDetailsPageState();
}

class _ResourceDetailsPageState extends State<ResourceDetailsPage> {
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return LoadingOverlay(
      loading: loading,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1.5,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
          ),
          title: const Text('Details'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: const AssetImage('assets/images/docPreview.png'),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.3,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: customTag(courseName: 'CSC201'),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, bottom: 8.0),
                child: Text(
                  widget.courseResource.title,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Uploaded by ${widget.courseResource.uploadedBy.isEmpty ? 'Someone' : widget.courseResource.uploadedBy}',
                      style: const TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    const Text(
                      '12th July 2023',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  'File Type: ${widget.courseResource.fileType}',
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: MaterialButton(
                  onPressed: () async {
                    setState(() {
                      loading = true;
                    });
                    try {
                      final bytes =
                          await InternetFile.get(widget.courseResource.fileUrl);
                      final tempDir = await getTemporaryDirectory();
                      final name = getFileName(widget.courseResource.fileUrl);
                      final file = await File('${tempDir.path}/$name').create();
                      file.writeAsBytesSync(bytes);
                      await OpenFile.open(file.path);
                    } catch (e) {
                      print(e);
                    }
                    setState(() {
                      loading = false;
                    });
                  },
                  height: 50,
                  color: AppColor.primaryColor,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.download_rounded,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Download',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

String getFileName(String url) {
  RegExp regExp = RegExp(r'.+(\/|%2F)(.+)\?.+');
  //This Regex won't work if you remove ?alt...token
  var matches = regExp.allMatches(url);

  var match = matches.elementAt(0);
  print(Uri.decodeFull(match.group(2)!));
  return Uri.decodeFull(match.group(2)!);
}
