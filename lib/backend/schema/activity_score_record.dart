import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'activity_score_record.g.dart';

abstract class ActivityScoreRecord
    implements Built<ActivityScoreRecord, ActivityScoreRecordBuilder> {
  static Serializer<ActivityScoreRecord> get serializer =>
      _$activityScoreRecordSerializer;

  DocumentReference? get user;

  @BuiltValueField(wireName: 'AchievementScore')
  int? get achievementScore;

  @BuiltValueField(wireName: 'BookScore')
  int? get bookScore;

  @BuiltValueField(wireName: 'TL_Score')
  int? get tLScore;

  @BuiltValueField(wireName: 'LearningScore')
  int? get learningScore;

  @BuiltValueField(wireName: 'TotalScore')
  int? get totalScore;

  BuiltList<DocumentReference>? get usr;

  @BuiltValueField(wireName: 'Accountability_Score')
  int? get accountabilityScore;

  @BuiltValueField(wireName: 'Hiring_Score')
  int? get hiringScore;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ActivityScoreRecordBuilder builder) => builder
    ..achievementScore = 0
    ..bookScore = 0
    ..tLScore = 0
    ..learningScore = 0
    ..totalScore = 0
    ..usr = ListBuilder()
    ..accountabilityScore = 0
    ..hiringScore = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ActivityScore');

  static Stream<ActivityScoreRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ActivityScoreRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ActivityScoreRecord._();
  factory ActivityScoreRecord(
          [void Function(ActivityScoreRecordBuilder) updates]) =
      _$ActivityScoreRecord;

  static ActivityScoreRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createActivityScoreRecordData({
  DocumentReference? user,
  int? achievementScore,
  int? bookScore,
  int? tLScore,
  int? learningScore,
  int? totalScore,
  int? accountabilityScore,
  int? hiringScore,
}) {
  final firestoreData = serializers.toFirestore(
    ActivityScoreRecord.serializer,
    ActivityScoreRecord(
      (a) => a
        ..user = user
        ..achievementScore = achievementScore
        ..bookScore = bookScore
        ..tLScore = tLScore
        ..learningScore = learningScore
        ..totalScore = totalScore
        ..usr = null
        ..accountabilityScore = accountabilityScore
        ..hiringScore = hiringScore,
    ),
  );

  return firestoreData;
}
