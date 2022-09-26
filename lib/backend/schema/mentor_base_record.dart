import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'mentor_base_record.g.dart';

abstract class MentorBaseRecord
    implements Built<MentorBaseRecord, MentorBaseRecordBuilder> {
  static Serializer<MentorBaseRecord> get serializer =>
      _$mentorBaseRecordSerializer;

  @BuiltValueField(wireName: 'Name')
  String? get name;

  @BuiltValueField(wireName: 'MentorImage')
  String? get mentorImage;

  @BuiltValueField(wireName: 'GradCollegeName')
  String? get gradCollegeName;

  @BuiltValueField(wireName: 'PostGradCollege')
  String? get postGradCollege;

  @BuiltValueField(wireName: 'PresentJobCompany')
  String? get presentJobCompany;

  @BuiltValueField(wireName: 'PresntJobTitle')
  String? get presntJobTitle;

  @BuiltValueField(wireName: 'LinkedinLink')
  String? get linkedinLink;

  @BuiltValueField(wireName: 'PresentLocation')
  String? get presentLocation;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MentorBaseRecordBuilder builder) => builder
    ..name = ''
    ..mentorImage = ''
    ..gradCollegeName = ''
    ..postGradCollege = ''
    ..presentJobCompany = ''
    ..presntJobTitle = ''
    ..linkedinLink = ''
    ..presentLocation = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('MentorBase');

  static Stream<MentorBaseRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MentorBaseRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MentorBaseRecord._();
  factory MentorBaseRecord([void Function(MentorBaseRecordBuilder) updates]) =
      _$MentorBaseRecord;

  static MentorBaseRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMentorBaseRecordData({
  String? name,
  String? mentorImage,
  String? gradCollegeName,
  String? postGradCollege,
  String? presentJobCompany,
  String? presntJobTitle,
  String? linkedinLink,
  String? presentLocation,
}) {
  final firestoreData = serializers.toFirestore(
    MentorBaseRecord.serializer,
    MentorBaseRecord(
      (m) => m
        ..name = name
        ..mentorImage = mentorImage
        ..gradCollegeName = gradCollegeName
        ..postGradCollege = postGradCollege
        ..presentJobCompany = presentJobCompany
        ..presntJobTitle = presntJobTitle
        ..linkedinLink = linkedinLink
        ..presentLocation = presentLocation,
    ),
  );

  return firestoreData;
}
