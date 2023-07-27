import 'package:collab_library/logic/colors.dart';
import 'package:collab_library/logic/font_family.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage(
      {super.key,
      required this.onScreenHideButtonPressed,
      required this.hideStatus});
  final VoidCallback onScreenHideButtonPressed;
  final bool hideStatus;

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final user = FirebaseAuth.instance.currentUser;

  List<String> docIDs = [];
  String firstName = '';
  String lastName = '';

  // Future getUserData() async {
  //   await FirebaseFirestore.instance
  //       .collection('users')
  //       .where('email', isEqualTo: user?.email)
  //       .get()
  //       .then((snapshot) => snapshot.docs.forEach((element) {
  //             print(element.reference);
  //             docIDs.add(element.reference.id);

  //             firstName = element.data
  //             print(docIDs);
  //           }));
  // }

  Future getDocId() async {
    await FirebaseFirestore.instance
        .collection('users')
        .get()
        .then((snapshot) => snapshot.docs.forEach((element) {
              print(element.reference);
            }));
  }

  @override
  void initState() {
    getDocId();
    // getUserData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1.5,
        title: const Text('Profile'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 16.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/pic.png'),
                  radius: 120,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            TextButton(
              onPressed: () {},
              child: const Text('CHANGE IMAGE'),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextFormField(
                cursorColor: AppColor.primaryColor,
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.done,
                enabled: false,
                initialValue: 'Iyiola',
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
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                        color: AppColor.primaryColor, width: 15),
                  ),
                  labelText: 'First Name',
                  labelStyle: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(
                          color: AppColor.inputtextColor.withOpacity(0.4),
                          fontFamily: FontFamily.sfRegular,
                          fontSize: 14),
                  hintText: 'Enter first name',
                  hintStyle: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(
                          color: AppColor.inputtextColor.withOpacity(0.4),
                          fontFamily: FontFamily.sfRegular,
                          fontSize: 14),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextFormField(
                cursorColor: AppColor.primaryColor,
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.done,
                enabled: false,
                initialValue: 'Adedeji',
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
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                        color: AppColor.primaryColor, width: 15),
                  ),
                  labelText: 'Last Name',
                  labelStyle: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(
                          color: AppColor.inputtextColor.withOpacity(0.4),
                          fontFamily: FontFamily.sfRegular,
                          fontSize: 14),
                  hintText: 'Enter first name',
                  hintStyle: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(
                          color: AppColor.inputtextColor.withOpacity(0.4),
                          fontFamily: FontFamily.sfRegular,
                          fontSize: 14),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextFormField(
                cursorColor: AppColor.primaryColor,
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.done,
                enabled: false,
                initialValue: user!.email,
                decoration: InputDecoration(
                  suffixIcon: const Icon(
                    Icons.email,
                    color: AppColor.primaryColor,
                  ),
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
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                        color: AppColor.primaryColor, width: 15),
                  ),
                  labelText: 'Email Address',
                  labelStyle: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(
                          color: AppColor.inputtextColor.withOpacity(0.4),
                          fontFamily: FontFamily.sfRegular,
                          fontSize: 14),
                  hintText: 'Enter first name',
                  hintStyle: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(
                          color: AppColor.inputtextColor.withOpacity(0.4),
                          fontFamily: FontFamily.sfRegular,
                          fontSize: 14),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            MaterialButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              color: AppColor.errorColors,
              child: const Text(
                'LOGOUT',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
