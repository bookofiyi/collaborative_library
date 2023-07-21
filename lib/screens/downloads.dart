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
    return const Scaffold();
  }
}
