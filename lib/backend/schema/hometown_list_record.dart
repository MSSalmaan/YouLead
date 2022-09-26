import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'hometown_list_record.g.dart';

abstract class HometownListRecord
    implements Built<HometownListRecord, HometownListRecordBuilder> {
  static Serializer<HometownListRecord> get serializer =>
      _$hometownListRecordSerializer;

  @BuiltValueField(wireName: 'HometownName')
  String? get hometownName;

  @BuiltValueField(wireName: 'StateName')
  String? get stateName;

  @BuiltValueField(wireName: 'CountryName')
  int? get countryName;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(HometownListRecordBuilder builder) => builder
    ..hometownName = ''
    ..stateName = ''
    ..countryName = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('HometownList');

  static Stream<HometownListRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<HometownListRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  HometownListRecord._();
  factory HometownListRecord(
          [void Function(HometownListRecordBuilder) updates]) =
      _$HometownListRecord;

  static HometownListRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createHometownListRecordData({
  String? hometownName,
  String? stateName,
  int? countryName,
}) {
  final firestoreData = serializers.toFirestore(
    HometownListRecord.serializer,
    HometownListRecord(
      (h) => h
        ..hometownName = hometownName
        ..stateName = stateName
        ..countryName = countryName,
    ),
  );

  return firestoreData;
}
