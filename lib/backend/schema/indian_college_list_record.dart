import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'indian_college_list_record.g.dart';

abstract class IndianCollegeListRecord
    implements Built<IndianCollegeListRecord, IndianCollegeListRecordBuilder> {
  static Serializer<IndianCollegeListRecord> get serializer =>
      _$indianCollegeListRecordSerializer;

  @BuiltValueField(wireName: 'CollegeState')
  String? get collegeState;

  @BuiltValueField(wireName: 'CollegeCity')
  String? get collegeCity;

  @BuiltValueField(wireName: 'CollegeName')
  String? get collegeName;

  @BuiltValueField(wireName: 'CollegeRankingNIRF')
  int? get collegeRankingNIRF;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(IndianCollegeListRecordBuilder builder) =>
      builder
        ..collegeState = ''
        ..collegeCity = ''
        ..collegeName = ''
        ..collegeRankingNIRF = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('IndianCollegeList');

  static Stream<IndianCollegeListRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<IndianCollegeListRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  IndianCollegeListRecord._();
  factory IndianCollegeListRecord(
          [void Function(IndianCollegeListRecordBuilder) updates]) =
      _$IndianCollegeListRecord;

  static IndianCollegeListRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createIndianCollegeListRecordData({
  String? collegeState,
  String? collegeCity,
  String? collegeName,
  int? collegeRankingNIRF,
}) {
  final firestoreData = serializers.toFirestore(
    IndianCollegeListRecord.serializer,
    IndianCollegeListRecord(
      (i) => i
        ..collegeState = collegeState
        ..collegeCity = collegeCity
        ..collegeName = collegeName
        ..collegeRankingNIRF = collegeRankingNIRF,
    ),
  );

  return firestoreData;
}
