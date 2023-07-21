import 'package:flutter/material.dart';

class ResourceDetailsPage extends StatefulWidget {
  const ResourceDetailsPage({super.key});

  @override
  State<ResourceDetailsPage> createState() => _ResourceDetailsPageState();
}

class _ResourceDetailsPageState extends State<ResourceDetailsPage> {
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
        title: const Text('Details'),
        centerTitle: true,
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
                  children: [
                    Image(
                      image: const AssetImage(''),
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.3,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text('Intro to CSC201'),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Uploaded by Someone',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          '12th July 2023',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      'File Type: PDF',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: const Row(
                        children: [
                          Icon(
                            Icons.download_rounded,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Download'),
                        ],
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
