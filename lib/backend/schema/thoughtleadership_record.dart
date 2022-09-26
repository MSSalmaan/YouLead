import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'thoughtleadership_record.g.dart';

abstract class ThoughtleadershipRecord
    implements Built<ThoughtleadershipRecord, ThoughtleadershipRecordBuilder> {
  static Serializer<ThoughtleadershipRecord> get serializer =>
      _$thoughtleadershipRecordSerializer;

  @BuiltValueField(wireName: 'TL_Title')
  String? get tLTitle;

  @BuiltValueField(wireName: 'TL_SubjectArea')
  String? get tLSubjectArea;

  @BuiltValueField(wireName: 'TL_Main')
  String? get tLMain;

  DocumentReference? get user;

  DateTime? get createdtime;

  @BuiltValueField(wireName: 'TL_Writtendate')
  DateTime? get tLWrittendate;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ThoughtleadershipRecordBuilder builder) =>
      builder
        ..tLTitle = ''
        ..tLSubjectArea = ''
        ..tLMain = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Thoughtleadership');

  static Stream<ThoughtleadershipRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ThoughtleadershipRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ThoughtleadershipRecord._();
  factory ThoughtleadershipRecord(
          [void Function(ThoughtleadershipRecordBuilder) updates]) =
      _$ThoughtleadershipRecord;

  static ThoughtleadershipRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createThoughtleadershipRecordData({
  String? tLTitle,
  String? tLSubjectArea,
  String? tLMain,
  DocumentReference? user,
  DateTime? createdtime,
  DateTime? tLWrittendate,
}) {
  final firestoreData = serializers.toFirestore(
    ThoughtleadershipRecord.serializer,
    ThoughtleadershipRecord(
      (t) => t
        ..tLTitle = tLTitle
        ..tLSubjectArea = tLSubjectArea
        ..tLMain = tLMain
        ..user = user
        ..createdtime = createdtime
        ..tLWrittendate = tLWrittendate,
    ),
  );

  return firestoreData;
}
