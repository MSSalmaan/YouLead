import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'you_lead_status_record.g.dart';

abstract class YouLeadStatusRecord
    implements Built<YouLeadStatusRecord, YouLeadStatusRecordBuilder> {
  static Serializer<YouLeadStatusRecord> get serializer =>
      _$youLeadStatusRecordSerializer;

  @BuiltValueField(wireName: 'ProfileSumbitted')
  bool? get profileSumbitted;

  @BuiltValueField(wireName: 'MentorMatched')
  bool? get mentorMatched;

  @BuiltValueField(wireName: 'usr_ref')
  DocumentReference? get usrRef;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(YouLeadStatusRecordBuilder builder) => builder
    ..profileSumbitted = false
    ..mentorMatched = false;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('YouLeadStatus')
          : FirebaseFirestore.instance.collectionGroup('YouLeadStatus');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('YouLeadStatus').doc();

  static Stream<YouLeadStatusRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<YouLeadStatusRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  YouLeadStatusRecord._();
  factory YouLeadStatusRecord(
          [void Function(YouLeadStatusRecordBuilder) updates]) =
      _$YouLeadStatusRecord;

  static YouLeadStatusRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createYouLeadStatusRecordData({
  bool? profileSumbitted,
  bool? mentorMatched,
  DocumentReference? usrRef,
}) {
  final firestoreData = serializers.toFirestore(
    YouLeadStatusRecord.serializer,
    YouLeadStatusRecord(
      (y) => y
        ..profileSumbitted = profileSumbitted
        ..mentorMatched = mentorMatched
        ..usrRef = usrRef,
    ),
  );

  return firestoreData;
}
