import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'application_deadline_record.g.dart';

abstract class ApplicationDeadlineRecord
    implements
        Built<ApplicationDeadlineRecord, ApplicationDeadlineRecordBuilder> {
  static Serializer<ApplicationDeadlineRecord> get serializer =>
      _$applicationDeadlineRecordSerializer;

  @BuiltValueField(wireName: 'Degree')
  String? get degree;

  @BuiltValueField(wireName: 'FallSpring')
  String? get fallSpring;

  @BuiltValueField(wireName: 'Deadline')
  DateTime? get deadline;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(ApplicationDeadlineRecordBuilder builder) =>
      builder
        ..degree = ''
        ..fallSpring = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('ApplicationDeadline')
          : FirebaseFirestore.instance.collectionGroup('ApplicationDeadline');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('ApplicationDeadline').doc();

  static Stream<ApplicationDeadlineRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ApplicationDeadlineRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ApplicationDeadlineRecord._();
  factory ApplicationDeadlineRecord(
          [void Function(ApplicationDeadlineRecordBuilder) updates]) =
      _$ApplicationDeadlineRecord;

  static ApplicationDeadlineRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createApplicationDeadlineRecordData({
  String? degree,
  String? fallSpring,
  DateTime? deadline,
}) {
  final firestoreData = serializers.toFirestore(
    ApplicationDeadlineRecord.serializer,
    ApplicationDeadlineRecord(
      (a) => a
        ..degree = degree
        ..fallSpring = fallSpring
        ..deadline = deadline,
    ),
  );

  return firestoreData;
}
