import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'achievements_record.g.dart';

abstract class AchievementsRecord
    implements Built<AchievementsRecord, AchievementsRecordBuilder> {
  static Serializer<AchievementsRecord> get serializer =>
      _$achievementsRecordSerializer;

  @BuiltValueField(wireName: 'AchMonth')
  String? get achMonth;

  @BuiltValueField(wireName: 'AchObjective')
  String? get achObjective;

  @BuiltValueField(wireName: 'AchKeyAreaWorked')
  String? get achKeyAreaWorked;

  @BuiltValueField(wireName: 'AchOutcome')
  String? get achOutcome;

  @BuiltValueField(wireName: 'AchMisses')
  String? get achMisses;

  DocumentReference? get user;

  DateTime? get createdtime;

  DateTime? get updatedtime;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AchievementsRecordBuilder builder) => builder
    ..achMonth = ''
    ..achObjective = ''
    ..achKeyAreaWorked = ''
    ..achOutcome = ''
    ..achMisses = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Achievements');

  static Stream<AchievementsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AchievementsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AchievementsRecord._();
  factory AchievementsRecord(
          [void Function(AchievementsRecordBuilder) updates]) =
      _$AchievementsRecord;

  static AchievementsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAchievementsRecordData({
  String? achMonth,
  String? achObjective,
  String? achKeyAreaWorked,
  String? achOutcome,
  String? achMisses,
  DocumentReference? user,
  DateTime? createdtime,
  DateTime? updatedtime,
}) {
  final firestoreData = serializers.toFirestore(
    AchievementsRecord.serializer,
    AchievementsRecord(
      (a) => a
        ..achMonth = achMonth
        ..achObjective = achObjective
        ..achKeyAreaWorked = achKeyAreaWorked
        ..achOutcome = achOutcome
        ..achMisses = achMisses
        ..user = user
        ..createdtime = createdtime
        ..updatedtime = updatedtime,
    ),
  );

  return firestoreData;
}
