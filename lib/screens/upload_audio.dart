import 'package:collab_library/logic/colors.dart';
import 'package:collab_library/logic/font_family.dart';
import 'package:flutter/material.dart';

class UploadAudio extends StatefulWidget {
  const UploadAudio({super.key});

  @override
  State<UploadAudio> createState() => _UploadAudioState();
}

class _UploadAudioState extends State<UploadAudio> {
  String? selectedValue = 'CSC201';

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
        title: const Text('Upload Audio'),
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
                    'CPE203'
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
                    const Icon(Icons.audio_file_rounded),
                    TextButton(
                      onPressed: () {
                        // _pickFile();
                      },
                      child: const Text(
                        'Choose File',
                        style: TextStyle(
                          fontSize: 16,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Text('Audio file should not be larger than 100MB')
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                onPressed: () {},
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
