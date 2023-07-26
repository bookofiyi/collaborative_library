import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collab_library/models/course_resource.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:file_picker/file_picker.dart';

class CourseRepository {
  final _firebaseFirestore = FirebaseFirestore.instance;
  final _storage = FirebaseStorage.instance;

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

      final createdResource = courseResource.copyWith(fileUrl: downloadUrl);
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
}
