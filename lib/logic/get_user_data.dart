// import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class GetUserData {
  final String documentId;
  GetUserData(this.documentId);

  CollectionReference user = FirebaseFirestore.instance.collection('users');
}

// class GetUserData extends StatelessWidget {
//   final String documentId;
//   const GetUserData({super.key, required this.documentId});

//   C

// //   @override
// //   Widget build(BuildContext context) {
// //     CollectionReference user = FirebaseFirestore.instance.collection('users');
// //     return FutureBuilder<DocumentSnapshot>(builder: (context, snapshot) {
// //       if (snapshot.connectionState == ConnectionState.done) {
// //         Map<String, dynamic> data =
// //             snapshot.data!.data() as Map<String, dynamic>;
// //         return Text('First Name: ${data['first name']}');
// //       }
// //     });
// //   }
// }
