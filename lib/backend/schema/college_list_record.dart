import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'college_list_record.g.dart';

abstract class CollegeListRecord
    implements Built<CollegeListRecord, CollegeListRecordBuilder> {
  static Serializer<CollegeListRecord> get serializer =>
      _$collegeListRecordSerializer;

  @BuiltValueField(wireName: 'CollegeCity')
  String? get collegeCity;

  @BuiltValueField(wireName: 'CollegeName')
  String? get collegeName;

  @BuiltValueField(wireName: 'CollegeRankingTimes')
  int? get collegeRankingTimes;

  @BuiltValueField(wireName: 'Degree')
  String? get degree;

  @BuiltValueField(wireName: 'FallSpring')
  String? get fallSpring;

  @BuiltValueField(wireName: 'Application_Deadline')
  DateTime? get applicationDeadline;

  @BuiltValueField(wireName: 'GRE_required')
  bool? get gRERequired;

  @BuiltValueField(wireName: 'CollegeCountry')
  String? get collegeCountry;

  DocumentReference? get user;

  BuiltList<DocumentReference>? get userlist;

  String? get collegepic;

  @BuiltValueField(wireName: 'college_url')
  String? get collegeUrl;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CollegeListRecordBuilder builder) => builder
    ..collegeCity = ''
    ..collegeName = ''
    ..collegeRankingTimes = 0
    ..degree = ''
    ..fallSpring = ''
    ..gRERequired = false
    ..collegeCountry = ''
    ..userlist = ListBuilder()
    ..collegepic = ''
    ..collegeUrl = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('CollegeList');

  static Stream<CollegeListRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CollegeListRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CollegeListRecord._();
  factory CollegeListRecord([void Function(CollegeListRecordBuilder) updates]) =
      _$CollegeListRecord;

  static CollegeListRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCollegeListRecordData({
  String? collegeCity,
  String? collegeName,
  int? collegeRankingTimes,
  String? degree,
  String? fallSpring,
  DateTime? applicationDeadline,
  bool? gRERequired,
  String? collegeCountry,
  DocumentReference? user,
  String? collegepic,
  String? collegeUrl,
}) {
  final firestoreData = serializers.toFirestore(
    CollegeListRecord.serializer,
    CollegeListRecord(
      (c) => c
        ..collegeCity = collegeCity
        ..collegeName = collegeName
        ..collegeRankingTimes = collegeRankingTimes
        ..degree = degree
        ..fallSpring = fallSpring
        ..applicationDeadline = applicationDeadline
        ..gRERequired = gRERequired
        ..collegeCountry = collegeCountry
        ..user = user
        ..userlist = null
        ..collegepic = collegepic
        ..collegeUrl = collegeUrl,
    ),
  );

  return firestoreData;
}
