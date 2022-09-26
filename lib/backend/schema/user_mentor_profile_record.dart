import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_mentor_profile_record.g.dart';

abstract class UserMentorProfileRecord
    implements Built<UserMentorProfileRecord, UserMentorProfileRecordBuilder> {
  static Serializer<UserMentorProfileRecord> get serializer =>
      _$userMentorProfileRecordSerializer;

  DocumentReference? get user;

  @BuiltValueField(wireName: 'Profile_submitted')
  bool? get profileSubmitted;

  @BuiltValueField(wireName: 'Mentor_available')
  bool? get mentorAvailable;

  @BuiltValueField(wireName: 'DegreeCompleted')
  BuiltList<String>? get degreeCompleted;

  @BuiltValueField(wireName: 'DegreeCollegeName')
  BuiltList<String>? get degreeCollegeName;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UserMentorProfileRecordBuilder builder) =>
      builder
        ..profileSubmitted = false
        ..mentorAvailable = false
        ..degreeCompleted = ListBuilder()
        ..degreeCollegeName = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('UserMentor_Profile');

  static Stream<UserMentorProfileRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UserMentorProfileRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UserMentorProfileRecord._();
  factory UserMentorProfileRecord(
          [void Function(UserMentorProfileRecordBuilder) updates]) =
      _$UserMentorProfileRecord;

  static UserMentorProfileRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUserMentorProfileRecordData({
  DocumentReference? user,
  bool? profileSubmitted,
  bool? mentorAvailable,
}) {
  final firestoreData = serializers.toFirestore(
    UserMentorProfileRecord.serializer,
    UserMentorProfileRecord(
      (u) => u
        ..user = user
        ..profileSubmitted = profileSubmitted
        ..mentorAvailable = mentorAvailable
        ..degreeCompleted = null
        ..degreeCollegeName = null,
    ),
  );

  return firestoreData;
}
