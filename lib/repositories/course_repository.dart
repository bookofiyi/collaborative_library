import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collab_library/models/course_resource.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:file_picker/file_picker.dart';

class CourseRepository {
  final _firebaseFirestore = FirebaseFirestore.instance;
  final _storage = FirebaseStorage.instance;
  final _auth = FirebaseAuth.instance;

  static String courseCollection = 'courses';
  static String courseResourceCollection = 'courseResources';

  Future<CourseResource?> uploadCourseResource(
      CourseResource courseResource, PlatformFile file) async {
    try {
      final fileName = file.name;
      final fileBytes = file.bytes;
      if (fileBytes == null) return null;

      final destination =
          '$courseCollection/${courseResource.courseId}/$fileName';
      final response = await _storage.ref(destination).putData(fileBytes);

      // ignore: avoid_print
      print(response);

      final downloadUrl = await response.ref.getDownloadURL();

      final createdResource = courseResource.copyWith(
          fileUrl: downloadUrl,
          uploadedBy: _auth.currentUser?.displayName ?? 'Someone');
      final doc = await _firebaseFirestore
          .collection(courseCollection)
          .doc(courseResource.courseId)
          .collection(courseResourceCollection)
          .add(createdResource.toJson());

      final finalResource = createdResource.copyWith(id: doc.id);
      return finalResource;
    } catch (e) {
      // ignore: avoid_print
      print(e);
      return null;
    }
  }

  Future<List<CourseResource>> getCourseResources(String courseId) async {
    final courseResources = <CourseResource>[];

    try {
      final snapshot = await _firebaseFirestore
          .collection(courseCollection)
          .doc(courseId)
          .collection(courseResourceCollection)
          .orderBy('dateUploaded', descending: true)
          .get();

      for (final doc in snapshot.docs) {
        final json = doc.data();
        json['id'] = doc.id;
        final courseResource = CourseResource.fromJson(json);
        courseResources.add(courseResource);
      }
      return courseResources;
    } catch (e) {
      print(e);
      return [];
    }
  }
}
