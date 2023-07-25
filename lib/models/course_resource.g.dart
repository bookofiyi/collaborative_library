// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CourseResource _$$_CourseResourceFromJson(Map<String, dynamic> json) =>
    _$_CourseResource(
      id: json['id'] as String?,
      title: json['title'] as String,
      courseId: json['courseId'] as String,
      dateUploaded: DateTime.parse(json['dateUploaded'] as String),
      fileUrl: json['fileUrl'] as String,
      fileType: json['fileType'] as String,
    );

Map<String, dynamic> _$$_CourseResourceToJson(_$_CourseResource instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'courseId': instance.courseId,
      'dateUploaded': instance.dateUploaded.toIso8601String(),
      'fileUrl': instance.fileUrl,
      'fileType': instance.fileType,
    };
