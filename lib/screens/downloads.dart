import 'package:flutter/material.dart';

class DownloadsPage extends StatefulWidget {
  const DownloadsPage(
      {super.key,
      required this.onScreenHideButtonPressed,
      required this.hideStatus});
  final VoidCallback onScreenHideButtonPressed;
  final bool hideStatus;

  @override
  State<DownloadsPage> createState() => _DownloadsPageState();
}

class _DownloadsPageState extends State<DownloadsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1.5,
        title: const Text('Downloads'),
        centerTitle: true,
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: const [
          ListTile(
            title: Text(
              'Intro to CSC201',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            subtitle: Text('CSC201'),
            trailing: Icon(Icons.folder_open_rounded),
          ),
          ListTile(
            title: Text(
              'Mathematical Methods I',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            subtitle: Text('MTH201'),
            trailing: Icon(Icons.folder_open_rounded),
          ),
        ],
      ),
    );
  }
}
