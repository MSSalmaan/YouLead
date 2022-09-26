import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_additional_record.g.dart';

abstract class UsersAdditionalRecord
    implements Built<UsersAdditionalRecord, UsersAdditionalRecordBuilder> {
  static Serializer<UsersAdditionalRecord> get serializer =>
      _$usersAdditionalRecordSerializer;

  @BuiltValueField(wireName: 'user_name')
  String? get userName;

  @BuiltValueField(wireName: 'user_picture')
  String? get userPicture;

  DocumentReference? get user;

  @BuiltValueField(wireName: 'GradCollegeName')
  String? get gradCollegeName;

  @BuiltValueField(wireName: 'HometownCity')
  String? get hometownCity;

  @BuiltValueField(wireName: 'CollegeCGPA')
  int? get collegeCGPA;

  @BuiltValueField(wireName: 'TargetDestination')
  BuiltList<String>? get targetDestination;

  @BuiltValueField(wireName: 'GradDegreeCompleted')
  String? get gradDegreeCompleted;

  @BuiltValueField(wireName: 'DateofBirth')
  DateTime? get dateofBirth;

  @BuiltValueField(wireName: 'TargetMasterStudy')
  BuiltList<String>? get targetMasterStudy;

  @BuiltValueField(wireName: 'Working')
  bool? get working;

  @BuiltValueField(wireName: 'CompanyName')
  String? get companyName;

  @BuiltValueField(wireName: 'JobTitle')
  String? get jobTitle;

  @BuiltValueField(wireName: 'JobLocation')
  String? get jobLocation;

  @BuiltValueField(wireName: 'JobSalary')
  int? get jobSalary;

  @BuiltValueField(wireName: 'Workexp')
  int? get workexp;

  @BuiltValueField(wireName: 'YearofcompletionGradDegree')
  DateTime? get yearofcompletionGradDegree;

  @BuiltValueField(wireName: 'ProfileSubmitted')
  bool? get profileSubmitted;

  @BuiltValueField(wireName: 'MentorMatched')
  bool? get mentorMatched;

  @BuiltValueField(wireName: 'MentorSearchOn')
  bool? get mentorSearchOn;

  @BuiltValueField(wireName: 'GRETaken')
  bool? get gRETaken;

  @BuiltValueField(wireName: 'GMATTaken')
  bool? get gMATTaken;

  @BuiltValueField(wireName: 'IELTSTaken')
  bool? get iELTSTaken;

  @BuiltValueField(wireName: 'PlannedIELTSDate')
  String? get plannedIELTSDate;

  @BuiltValueField(wireName: 'Additional_Details')
  String? get additionalDetails;

  @BuiltValueField(wireName: 'GradSpecialisation')
  String? get gradSpecialisation;

  @BuiltValueField(wireName: 'TargetSpecialisation')
  String? get targetSpecialisation;

  @BuiltValueField(wireName: 'GREScore')
  int? get gREScore;

  @BuiltValueField(wireName: 'GMATScore')
  int? get gMATScore;

  @BuiltValueField(wireName: 'Part1Status')
  bool? get part1Status;

  @BuiltValueField(wireName: 'Part2Status')
  bool? get part2Status;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsersAdditionalRecordBuilder builder) =>
      builder
        ..userName = ''
        ..userPicture = ''
        ..gradCollegeName = ''
        ..hometownCity = ''
        ..collegeCGPA = 0
        ..targetDestination = ListBuilder()
        ..gradDegreeCompleted = ''
        ..targetMasterStudy = ListBuilder()
        ..working = false
        ..companyName = ''
        ..jobTitle = ''
        ..jobLocation = ''
        ..jobSalary = 0
        ..workexp = 0
        ..profileSubmitted = false
        ..mentorMatched = false
        ..mentorSearchOn = false
        ..gRETaken = false
        ..gMATTaken = false
        ..iELTSTaken = false
        ..plannedIELTSDate = ''
        ..additionalDetails = ''
        ..gradSpecialisation = ''
        ..targetSpecialisation = ''
        ..gREScore = 0
        ..gMATScore = 0
        ..part1Status = false
        ..part2Status = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users_additional');

  static Stream<UsersAdditionalRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsersAdditionalRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsersAdditionalRecord._();
  factory UsersAdditionalRecord(
          [void Function(UsersAdditionalRecordBuilder) updates]) =
      _$UsersAdditionalRecord;

  static UsersAdditionalRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsersAdditionalRecordData({
  String? userName,
  String? userPicture,
  DocumentReference? user,
  String? gradCollegeName,
  String? hometownCity,
  int? collegeCGPA,
  String? gradDegreeCompleted,
  DateTime? dateofBirth,
  bool? working,
  String? companyName,
  String? jobTitle,
  String? jobLocation,
  int? jobSalary,
  int? workexp,
  DateTime? yearofcompletionGradDegree,
  bool? profileSubmitted,
  bool? mentorMatched,
  bool? mentorSearchOn,
  bool? gRETaken,
  bool? gMATTaken,
  bool? iELTSTaken,
  String? plannedIELTSDate,
  String? additionalDetails,
  String? gradSpecialisation,
  String? targetSpecialisation,
  int? gREScore,
  int? gMATScore,
  bool? part1Status,
  bool? part2Status,
}) {
  final firestoreData = serializers.toFirestore(
    UsersAdditionalRecord.serializer,
    UsersAdditionalRecord(
      (u) => u
        ..userName = userName
        ..userPicture = userPicture
        ..user = user
        ..gradCollegeName = gradCollegeName
        ..hometownCity = hometownCity
        ..collegeCGPA = collegeCGPA
        ..targetDestination = null
        ..gradDegreeCompleted = gradDegreeCompleted
        ..dateofBirth = dateofBirth
        ..targetMasterStudy = null
        ..working = working
        ..companyName = companyName
        ..jobTitle = jobTitle
        ..jobLocation = jobLocation
        ..jobSalary = jobSalary
        ..workexp = workexp
        ..yearofcompletionGradDegree = yearofcompletionGradDegree
        ..profileSubmitted = profileSubmitted
        ..mentorMatched = mentorMatched
        ..mentorSearchOn = mentorSearchOn
        ..gRETaken = gRETaken
        ..gMATTaken = gMATTaken
        ..iELTSTaken = iELTSTaken
        ..plannedIELTSDate = plannedIELTSDate
        ..additionalDetails = additionalDetails
        ..gradSpecialisation = gradSpecialisation
        ..targetSpecialisation = targetSpecialisation
        ..gREScore = gREScore
        ..gMATScore = gMATScore
        ..part1Status = part1Status
        ..part2Status = part2Status,
    ),
  );

  return firestoreData;
}
