import 'package:collab_library/logic/colors.dart';
import 'package:collab_library/logic/font_family.dart';
import 'package:collab_library/logic/get_device_files.dart';
import 'package:collab_library/models/course_resource.dart';
import 'package:collab_library/repositories/course_repository.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class UploadDoc extends StatefulWidget {
  const UploadDoc({super.key});

  @override
  State<UploadDoc> createState() => _UploadDocState();
}

class _UploadDocState extends State<UploadDoc> {
  final courseRepo = CourseRepository();

  String selectedValue = 'CSC201';

  PlatformFile? selectedFile;
  String resourceTitle = '';

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
        title: const Text('Upload Document'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Title',
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
                textInputAction: TextInputAction.done,
                onChanged: (value) {
                  setState(() {
                    resourceTitle = value;
                  });
                },
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
                      (15),
                    ),
                    borderSide: const BorderSide(
                      color: AppColor.primaryColor,
                      width: (1),
                    ),
                  ),
                  hintText: 'Enter a title for your file upload',
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
                height: 5,
              ),
              const Text(
                'Please use a descriptive name so others can easily identify uploaded files...',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Course',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              DropdownButtonFormField(
                  items: <String>[
                    'CSC201',
                    'CSC202',
                    'MTH201',
                    'MTH202',
                    'MEE203',
                    'MEE204',
                    'MTH205',
                    'MTH306',
                    'CPE201',
                    'CPE203',
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
                    if (value == null) return;
                    setState(() {
                      selectedValue = value;
                    });
                  }),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  color: const Color(0xFFF1F5F9),
                  border: Border.all(
                    color: AppColor.gray200Color,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.document_scanner_rounded),
                    TextButton(
                      onPressed: () async {
                        final result = await GetDeviceFiles.pickFile();
                        if (result != null) {
                          selectedFile = result;
                        }
                        setState(() {});
                      },
                      child: const Text(
                        'Choose File',
                        style: TextStyle(
                          fontSize: 16,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Text('Document should not be larger than 100MB')
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                onPressed: () async {
                  if (selectedFile == null) return;

                  final courseResource = CourseResource(
                      title: resourceTitle,
                      courseId: selectedValue,
                      dateUploaded: DateTime.now(),
                      fileUrl: '');

                  final updateResource = await courseRepo.uploadCourseResource(
                      courseResource, selectedFile!);

                  if(updateResource != null) {
                    Navigator.pop(context, updateResource);
                  }
                },
                height: 50,
                color: AppColor.primaryColor,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.upload_rounded,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Upload',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
