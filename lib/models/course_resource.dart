

import 'package:freezed_annotation/freezed_annotation.dart';




part 'course_resource.freezed.dart';
part 'course_resource.g.dart';


@freezed
class CourseResource with _$CourseResource {
  const factory CourseResource({
     String? id,
     required String title,
    required String courseId,
    required DateTime dateUploaded,
    required String fileUrl,
  }) = _CourseResource;

  factory CourseResource.fromJson(Map<String, Object?> json)
  => _$CourseResourceFromJson(json);
}