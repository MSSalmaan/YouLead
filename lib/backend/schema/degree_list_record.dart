import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'degree_list_record.g.dart';

abstract class DegreeListRecord
    implements Built<DegreeListRecord, DegreeListRecordBuilder> {
  static Serializer<DegreeListRecord> get serializer =>
      _$degreeListRecordSerializer;

  @BuiltValueField(wireName: 'DegreeName')
  String? get degreeName;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(DegreeListRecordBuilder builder) =>
      builder..degreeName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('DegreeList');

  static Stream<DegreeListRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DegreeListRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DegreeListRecord._();
  factory DegreeListRecord([void Function(DegreeListRecordBuilder) updates]) =
      _$DegreeListRecord;

  static DegreeListRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDegreeListRecordData({
  String? degreeName,
}) {
  final firestoreData = serializers.toFirestore(
    DegreeListRecord.serializer,
    DegreeListRecord(
      (d) => d..degreeName = degreeName,
    ),
  );

  return firestoreData;
}
