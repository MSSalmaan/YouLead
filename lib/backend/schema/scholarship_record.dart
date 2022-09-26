import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'scholarship_record.g.dart';

abstract class ScholarshipRecord
    implements Built<ScholarshipRecord, ScholarshipRecordBuilder> {
  static Serializer<ScholarshipRecord> get serializer =>
      _$scholarshipRecordSerializer;

  @BuiltValueField(wireName: 'ScholarshipName')
  String? get scholarshipName;

  @BuiltValueField(wireName: 'EligibleCourse')
  BuiltList<String>? get eligibleCourse;

  @BuiltValueField(wireName: 'ApplicationDeadline')
  DateTime? get applicationDeadline;

  @BuiltValueField(wireName: 'SchAmount')
  int? get schAmount;

  @BuiltValueField(wireName: 'EligibleNationalities')
  BuiltList<String>? get eligibleNationalities;

  @BuiltValueField(wireName: 'Desciption')
  String? get desciption;

  @BuiltValueField(wireName: 'college_ref')
  DocumentReference? get collegeRef;

  String? get collegeName;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(ScholarshipRecordBuilder builder) => builder
    ..scholarshipName = ''
    ..eligibleCourse = ListBuilder()
    ..schAmount = 0
    ..eligibleNationalities = ListBuilder()
    ..desciption = ''
    ..collegeName = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Scholarship')
          : FirebaseFirestore.instance.collectionGroup('Scholarship');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('Scholarship').doc();

  static Stream<ScholarshipRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ScholarshipRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ScholarshipRecord._();
  factory ScholarshipRecord([void Function(ScholarshipRecordBuilder) updates]) =
      _$ScholarshipRecord;

  static ScholarshipRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createScholarshipRecordData({
  String? scholarshipName,
  DateTime? applicationDeadline,
  int? schAmount,
  String? desciption,
  DocumentReference? collegeRef,
  String? collegeName,
}) {
  final firestoreData = serializers.toFirestore(
    ScholarshipRecord.serializer,
    ScholarshipRecord(
      (s) => s
        ..scholarshipName = scholarshipName
        ..eligibleCourse = null
        ..applicationDeadline = applicationDeadline
        ..schAmount = schAmount
        ..eligibleNationalities = null
        ..desciption = desciption
        ..collegeRef = collegeRef
        ..collegeName = collegeName,
    ),
  );

  return firestoreData;
}
