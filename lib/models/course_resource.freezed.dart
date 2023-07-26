// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_resource.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CourseResource _$CourseResourceFromJson(Map<String, dynamic> json) {
  return _CourseResource.fromJson(json);
}

/// @nodoc
mixin _$CourseResource {
  String? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get courseId => throw _privateConstructorUsedError;
  DateTime get dateUploaded => throw _privateConstructorUsedError;
  String get fileUrl => throw _privateConstructorUsedError;
  String get fileType => throw _privateConstructorUsedError;
  String get uploadedBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseResourceCopyWith<CourseResource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseResourceCopyWith<$Res> {
  factory $CourseResourceCopyWith(
          CourseResource value, $Res Function(CourseResource) then) =
      _$CourseResourceCopyWithImpl<$Res, CourseResource>;
  @useResult
  $Res call(
      {String? id,
      String title,
      String courseId,
      DateTime dateUploaded,
      String fileUrl,
      String fileType,
      String uploadedBy});
}

/// @nodoc
class _$CourseResourceCopyWithImpl<$Res, $Val extends CourseResource>
    implements $CourseResourceCopyWith<$Res> {
  _$CourseResourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? courseId = null,
    Object? dateUploaded = null,
    Object? fileUrl = null,
    Object? fileType = null,
    Object? uploadedBy = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      dateUploaded: null == dateUploaded
          ? _value.dateUploaded
          : dateUploaded // ignore: cast_nullable_to_non_nullable
              as DateTime,
      fileUrl: null == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      fileType: null == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String,
      uploadedBy: null == uploadedBy
          ? _value.uploadedBy
          : uploadedBy // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CourseResourceCopyWith<$Res>
    implements $CourseResourceCopyWith<$Res> {
  factory _$$_CourseResourceCopyWith(
          _$_CourseResource value, $Res Function(_$_CourseResource) then) =
      __$$_CourseResourceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String title,
      String courseId,
      DateTime dateUploaded,
      String fileUrl,
      String fileType,
      String uploadedBy});
}

/// @nodoc
class __$$_CourseResourceCopyWithImpl<$Res>
    extends _$CourseResourceCopyWithImpl<$Res, _$_CourseResource>
    implements _$$_CourseResourceCopyWith<$Res> {
  __$$_CourseResourceCopyWithImpl(
      _$_CourseResource _value, $Res Function(_$_CourseResource) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? courseId = null,
    Object? dateUploaded = null,
    Object? fileUrl = null,
    Object? fileType = null,
    Object? uploadedBy = null,
  }) {
    return _then(_$_CourseResource(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      dateUploaded: null == dateUploaded
          ? _value.dateUploaded
          : dateUploaded // ignore: cast_nullable_to_non_nullable
              as DateTime,
      fileUrl: null == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      fileType: null == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String,
      uploadedBy: null == uploadedBy
          ? _value.uploadedBy
          : uploadedBy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CourseResource implements _CourseResource {
  const _$_CourseResource(
      {this.id,
      required this.title,
      required this.courseId,
      required this.dateUploaded,
      required this.fileUrl,
      required this.fileType,
      this.uploadedBy = 'Someone'});

  factory _$_CourseResource.fromJson(Map<String, dynamic> json) =>
      _$$_CourseResourceFromJson(json);

  @override
  final String? id;
  @override
  final String title;
  @override
  final String courseId;
  @override
  final DateTime dateUploaded;
  @override
  final String fileUrl;
  @override
  final String fileType;
  @override
  @JsonKey()
  final String uploadedBy;

  @override
  String toString() {
    return 'CourseResource(id: $id, title: $title, courseId: $courseId, dateUploaded: $dateUploaded, fileUrl: $fileUrl, fileType: $fileType, uploadedBy: $uploadedBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CourseResource &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.dateUploaded, dateUploaded) ||
                other.dateUploaded == dateUploaded) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl) &&
            (identical(other.fileType, fileType) ||
                other.fileType == fileType) &&
            (identical(other.uploadedBy, uploadedBy) ||
                other.uploadedBy == uploadedBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, courseId,
      dateUploaded, fileUrl, fileType, uploadedBy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CourseResourceCopyWith<_$_CourseResource> get copyWith =>
      __$$_CourseResourceCopyWithImpl<_$_CourseResource>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CourseResourceToJson(
      this,
    );
  }
}

abstract class _CourseResource implements CourseResource {
  const factory _CourseResource(
      {final String? id,
      required final String title,
      required final String courseId,
      required final DateTime dateUploaded,
      required final String fileUrl,
      required final String fileType,
      final String uploadedBy}) = _$_CourseResource;

  factory _CourseResource.fromJson(Map<String, dynamic> json) =
      _$_CourseResource.fromJson;

  @override
  String? get id;
  @override
  String get title;
  @override
  String get courseId;
  @override
  DateTime get dateUploaded;
  @override
  String get fileUrl;
  @override
  String get fileType;
  @override
  String get uploadedBy;
  @override
  @JsonKey(ignore: true)
  _$$_CourseResourceCopyWith<_$_CourseResource> get copyWith =>
      throw _privateConstructorUsedError;
}
