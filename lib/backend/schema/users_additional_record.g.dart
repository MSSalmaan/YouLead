// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_additional_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersAdditionalRecord> _$usersAdditionalRecordSerializer =
    new _$UsersAdditionalRecordSerializer();

class _$UsersAdditionalRecordSerializer
    implements StructuredSerializer<UsersAdditionalRecord> {
  @override
  final Iterable<Type> types = const [
    UsersAdditionalRecord,
    _$UsersAdditionalRecord
  ];
  @override
  final String wireName = 'UsersAdditionalRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, UsersAdditionalRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.userName;
    if (value != null) {
      result
        ..add('user_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userPicture;
    if (value != null) {
      result
        ..add('user_picture')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.gradCollegeName;
    if (value != null) {
      result
        ..add('GradCollegeName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.hometownCity;
    if (value != null) {
      result
        ..add('HometownCity')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.collegeCGPA;
    if (value != null) {
      result
        ..add('CollegeCGPA')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.targetDestination;
    if (value != null) {
      result
        ..add('TargetDestination')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.gradDegreeCompleted;
    if (value != null) {
      result
        ..add('GradDegreeCompleted')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dateofBirth;
    if (value != null) {
      result
        ..add('DateofBirth')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.targetMasterStudy;
    if (value != null) {
      result
        ..add('TargetMasterStudy')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.working;
    if (value != null) {
      result
        ..add('Working')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.companyName;
    if (value != null) {
      result
        ..add('CompanyName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.jobTitle;
    if (value != null) {
      result
        ..add('JobTitle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.jobLocation;
    if (value != null) {
      result
        ..add('JobLocation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.jobSalary;
    if (value != null) {
      result
        ..add('JobSalary')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.workexp;
    if (value != null) {
      result
        ..add('Workexp')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.yearofcompletionGradDegree;
    if (value != null) {
      result
        ..add('YearofcompletionGradDegree')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.profileSubmitted;
    if (value != null) {
      result
        ..add('ProfileSubmitted')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.mentorMatched;
    if (value != null) {
      result
        ..add('MentorMatched')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.mentorSearchOn;
    if (value != null) {
      result
        ..add('MentorSearchOn')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.gRETaken;
    if (value != null) {
      result
        ..add('GRETaken')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.gMATTaken;
    if (value != null) {
      result
        ..add('GMATTaken')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.iELTSTaken;
    if (value != null) {
      result
        ..add('IELTSTaken')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.plannedIELTSDate;
    if (value != null) {
      result
        ..add('PlannedIELTSDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.additionalDetails;
    if (value != null) {
      result
        ..add('Additional_Details')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gradSpecialisation;
    if (value != null) {
      result
        ..add('GradSpecialisation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.targetSpecialisation;
    if (value != null) {
      result
        ..add('TargetSpecialisation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gREScore;
    if (value != null) {
      result
        ..add('GREScore')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.gMATScore;
    if (value != null) {
      result
        ..add('GMATScore')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.part1Status;
    if (value != null) {
      result
        ..add('Part1Status')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.part2Status;
    if (value != null) {
      result
        ..add('Part2Status')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  UsersAdditionalRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersAdditionalRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'user_name':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user_picture':
          result.userPicture = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'GradCollegeName':
          result.gradCollegeName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'HometownCity':
          result.hometownCity = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'CollegeCGPA':
          result.collegeCGPA = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'TargetDestination':
          result.targetDestination.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'GradDegreeCompleted':
          result.gradDegreeCompleted = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'DateofBirth':
          result.dateofBirth = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'TargetMasterStudy':
          result.targetMasterStudy.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'Working':
          result.working = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'CompanyName':
          result.companyName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'JobTitle':
          result.jobTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'JobLocation':
          result.jobLocation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'JobSalary':
          result.jobSalary = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Workexp':
          result.workexp = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'YearofcompletionGradDegree':
          result.yearofcompletionGradDegree = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'ProfileSubmitted':
          result.profileSubmitted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'MentorMatched':
          result.mentorMatched = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'MentorSearchOn':
          result.mentorSearchOn = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'GRETaken':
          result.gRETaken = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'GMATTaken':
          result.gMATTaken = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'IELTSTaken':
          result.iELTSTaken = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'PlannedIELTSDate':
          result.plannedIELTSDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Additional_Details':
          result.additionalDetails = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'GradSpecialisation':
          result.gradSpecialisation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'TargetSpecialisation':
          result.targetSpecialisation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'GREScore':
          result.gREScore = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'GMATScore':
          result.gMATScore = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Part1Status':
          result.part1Status = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Part2Status':
          result.part2Status = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$UsersAdditionalRecord extends UsersAdditionalRecord {
  @override
  final String? userName;
  @override
  final String? userPicture;
  @override
  final DocumentReference<Object?>? user;
  @override
  final String? gradCollegeName;
  @override
  final String? hometownCity;
  @override
  final int? collegeCGPA;
  @override
  final BuiltList<String>? targetDestination;
  @override
  final String? gradDegreeCompleted;
  @override
  final DateTime? dateofBirth;
  @override
  final BuiltList<String>? targetMasterStudy;
  @override
  final bool? working;
  @override
  final String? companyName;
  @override
  final String? jobTitle;
  @override
  final String? jobLocation;
  @override
  final int? jobSalary;
  @override
  final int? workexp;
  @override
  final DateTime? yearofcompletionGradDegree;
  @override
  final bool? profileSubmitted;
  @override
  final bool? mentorMatched;
  @override
  final bool? mentorSearchOn;
  @override
  final bool? gRETaken;
  @override
  final bool? gMATTaken;
  @override
  final bool? iELTSTaken;
  @override
  final String? plannedIELTSDate;
  @override
  final String? additionalDetails;
  @override
  final String? gradSpecialisation;
  @override
  final String? targetSpecialisation;
  @override
  final int? gREScore;
  @override
  final int? gMATScore;
  @override
  final bool? part1Status;
  @override
  final bool? part2Status;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UsersAdditionalRecord(
          [void Function(UsersAdditionalRecordBuilder)? updates]) =>
      (new UsersAdditionalRecordBuilder()..update(updates))._build();

  _$UsersAdditionalRecord._(
      {this.userName,
      this.userPicture,
      this.user,
      this.gradCollegeName,
      this.hometownCity,
      this.collegeCGPA,
      this.targetDestination,
      this.gradDegreeCompleted,
      this.dateofBirth,
      this.targetMasterStudy,
      this.working,
      this.companyName,
      this.jobTitle,
      this.jobLocation,
      this.jobSalary,
      this.workexp,
      this.yearofcompletionGradDegree,
      this.profileSubmitted,
      this.mentorMatched,
      this.mentorSearchOn,
      this.gRETaken,
      this.gMATTaken,
      this.iELTSTaken,
      this.plannedIELTSDate,
      this.additionalDetails,
      this.gradSpecialisation,
      this.targetSpecialisation,
      this.gREScore,
      this.gMATScore,
      this.part1Status,
      this.part2Status,
      this.ffRef})
      : super._();

  @override
  UsersAdditionalRecord rebuild(
          void Function(UsersAdditionalRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersAdditionalRecordBuilder toBuilder() =>
      new UsersAdditionalRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersAdditionalRecord &&
        userName == other.userName &&
        userPicture == other.userPicture &&
        user == other.user &&
        gradCollegeName == other.gradCollegeName &&
        hometownCity == other.hometownCity &&
        collegeCGPA == other.collegeCGPA &&
        targetDestination == other.targetDestination &&
        gradDegreeCompleted == other.gradDegreeCompleted &&
        dateofBirth == other.dateofBirth &&
        targetMasterStudy == other.targetMasterStudy &&
        working == other.working &&
        companyName == other.companyName &&
        jobTitle == other.jobTitle &&
        jobLocation == other.jobLocation &&
        jobSalary == other.jobSalary &&
        workexp == other.workexp &&
        yearofcompletionGradDegree == other.yearofcompletionGradDegree &&
        profileSubmitted == other.profileSubmitted &&
        mentorMatched == other.mentorMatched &&
        mentorSearchOn == other.mentorSearchOn &&
        gRETaken == other.gRETaken &&
        gMATTaken == other.gMATTaken &&
        iELTSTaken == other.iELTSTaken &&
        plannedIELTSDate == other.plannedIELTSDate &&
        additionalDetails == other.additionalDetails &&
        gradSpecialisation == other.gradSpecialisation &&
        targetSpecialisation == other.targetSpecialisation &&
        gREScore == other.gREScore &&
        gMATScore == other.gMATScore &&
        part1Status == other.part1Status &&
        part2Status == other.part2Status &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, userName.hashCode), userPicture.hashCode), user.hashCode), gradCollegeName.hashCode), hometownCity.hashCode), collegeCGPA.hashCode), targetDestination.hashCode), gradDegreeCompleted.hashCode), dateofBirth.hashCode), targetMasterStudy.hashCode), working.hashCode), companyName.hashCode), jobTitle.hashCode),
                                                                                jobLocation.hashCode),
                                                                            jobSalary.hashCode),
                                                                        workexp.hashCode),
                                                                    yearofcompletionGradDegree.hashCode),
                                                                profileSubmitted.hashCode),
                                                            mentorMatched.hashCode),
                                                        mentorSearchOn.hashCode),
                                                    gRETaken.hashCode),
                                                gMATTaken.hashCode),
                                            iELTSTaken.hashCode),
                                        plannedIELTSDate.hashCode),
                                    additionalDetails.hashCode),
                                gradSpecialisation.hashCode),
                            targetSpecialisation.hashCode),
                        gREScore.hashCode),
                    gMATScore.hashCode),
                part1Status.hashCode),
            part2Status.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersAdditionalRecord')
          ..add('userName', userName)
          ..add('userPicture', userPicture)
          ..add('user', user)
          ..add('gradCollegeName', gradCollegeName)
          ..add('hometownCity', hometownCity)
          ..add('collegeCGPA', collegeCGPA)
          ..add('targetDestination', targetDestination)
          ..add('gradDegreeCompleted', gradDegreeCompleted)
          ..add('dateofBirth', dateofBirth)
          ..add('targetMasterStudy', targetMasterStudy)
          ..add('working', working)
          ..add('companyName', companyName)
          ..add('jobTitle', jobTitle)
          ..add('jobLocation', jobLocation)
          ..add('jobSalary', jobSalary)
          ..add('workexp', workexp)
          ..add('yearofcompletionGradDegree', yearofcompletionGradDegree)
          ..add('profileSubmitted', profileSubmitted)
          ..add('mentorMatched', mentorMatched)
          ..add('mentorSearchOn', mentorSearchOn)
          ..add('gRETaken', gRETaken)
          ..add('gMATTaken', gMATTaken)
          ..add('iELTSTaken', iELTSTaken)
          ..add('plannedIELTSDate', plannedIELTSDate)
          ..add('additionalDetails', additionalDetails)
          ..add('gradSpecialisation', gradSpecialisation)
          ..add('targetSpecialisation', targetSpecialisation)
          ..add('gREScore', gREScore)
          ..add('gMATScore', gMATScore)
          ..add('part1Status', part1Status)
          ..add('part2Status', part2Status)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UsersAdditionalRecordBuilder
    implements Builder<UsersAdditionalRecord, UsersAdditionalRecordBuilder> {
  _$UsersAdditionalRecord? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _userPicture;
  String? get userPicture => _$this._userPicture;
  set userPicture(String? userPicture) => _$this._userPicture = userPicture;

  DocumentReference<Object?>? _user;
  DocumentReference<Object?>? get user => _$this._user;
  set user(DocumentReference<Object?>? user) => _$this._user = user;

  String? _gradCollegeName;
  String? get gradCollegeName => _$this._gradCollegeName;
  set gradCollegeName(String? gradCollegeName) =>
      _$this._gradCollegeName = gradCollegeName;

  String? _hometownCity;
  String? get hometownCity => _$this._hometownCity;
  set hometownCity(String? hometownCity) => _$this._hometownCity = hometownCity;

  int? _collegeCGPA;
  int? get collegeCGPA => _$this._collegeCGPA;
  set collegeCGPA(int? collegeCGPA) => _$this._collegeCGPA = collegeCGPA;

  ListBuilder<String>? _targetDestination;
  ListBuilder<String> get targetDestination =>
      _$this._targetDestination ??= new ListBuilder<String>();
  set targetDestination(ListBuilder<String>? targetDestination) =>
      _$this._targetDestination = targetDestination;

  String? _gradDegreeCompleted;
  String? get gradDegreeCompleted => _$this._gradDegreeCompleted;
  set gradDegreeCompleted(String? gradDegreeCompleted) =>
      _$this._gradDegreeCompleted = gradDegreeCompleted;

  DateTime? _dateofBirth;
  DateTime? get dateofBirth => _$this._dateofBirth;
  set dateofBirth(DateTime? dateofBirth) => _$this._dateofBirth = dateofBirth;

  ListBuilder<String>? _targetMasterStudy;
  ListBuilder<String> get targetMasterStudy =>
      _$this._targetMasterStudy ??= new ListBuilder<String>();
  set targetMasterStudy(ListBuilder<String>? targetMasterStudy) =>
      _$this._targetMasterStudy = targetMasterStudy;

  bool? _working;
  bool? get working => _$this._working;
  set working(bool? working) => _$this._working = working;

  String? _companyName;
  String? get companyName => _$this._companyName;
  set companyName(String? companyName) => _$this._companyName = companyName;

  String? _jobTitle;
  String? get jobTitle => _$this._jobTitle;
  set jobTitle(String? jobTitle) => _$this._jobTitle = jobTitle;

  String? _jobLocation;
  String? get jobLocation => _$this._jobLocation;
  set jobLocation(String? jobLocation) => _$this._jobLocation = jobLocation;

  int? _jobSalary;
  int? get jobSalary => _$this._jobSalary;
  set jobSalary(int? jobSalary) => _$this._jobSalary = jobSalary;

  int? _workexp;
  int? get workexp => _$this._workexp;
  set workexp(int? workexp) => _$this._workexp = workexp;

  DateTime? _yearofcompletionGradDegree;
  DateTime? get yearofcompletionGradDegree =>
      _$this._yearofcompletionGradDegree;
  set yearofcompletionGradDegree(DateTime? yearofcompletionGradDegree) =>
      _$this._yearofcompletionGradDegree = yearofcompletionGradDegree;

  bool? _profileSubmitted;
  bool? get profileSubmitted => _$this._profileSubmitted;
  set profileSubmitted(bool? profileSubmitted) =>
      _$this._profileSubmitted = profileSubmitted;

  bool? _mentorMatched;
  bool? get mentorMatched => _$this._mentorMatched;
  set mentorMatched(bool? mentorMatched) =>
      _$this._mentorMatched = mentorMatched;

  bool? _mentorSearchOn;
  bool? get mentorSearchOn => _$this._mentorSearchOn;
  set mentorSearchOn(bool? mentorSearchOn) =>
      _$this._mentorSearchOn = mentorSearchOn;

  bool? _gRETaken;
  bool? get gRETaken => _$this._gRETaken;
  set gRETaken(bool? gRETaken) => _$this._gRETaken = gRETaken;

  bool? _gMATTaken;
  bool? get gMATTaken => _$this._gMATTaken;
  set gMATTaken(bool? gMATTaken) => _$this._gMATTaken = gMATTaken;

  bool? _iELTSTaken;
  bool? get iELTSTaken => _$this._iELTSTaken;
  set iELTSTaken(bool? iELTSTaken) => _$this._iELTSTaken = iELTSTaken;

  String? _plannedIELTSDate;
  String? get plannedIELTSDate => _$this._plannedIELTSDate;
  set plannedIELTSDate(String? plannedIELTSDate) =>
      _$this._plannedIELTSDate = plannedIELTSDate;

  String? _additionalDetails;
  String? get additionalDetails => _$this._additionalDetails;
  set additionalDetails(String? additionalDetails) =>
      _$this._additionalDetails = additionalDetails;

  String? _gradSpecialisation;
  String? get gradSpecialisation => _$this._gradSpecialisation;
  set gradSpecialisation(String? gradSpecialisation) =>
      _$this._gradSpecialisation = gradSpecialisation;

  String? _targetSpecialisation;
  String? get targetSpecialisation => _$this._targetSpecialisation;
  set targetSpecialisation(String? targetSpecialisation) =>
      _$this._targetSpecialisation = targetSpecialisation;

  int? _gREScore;
  int? get gREScore => _$this._gREScore;
  set gREScore(int? gREScore) => _$this._gREScore = gREScore;

  int? _gMATScore;
  int? get gMATScore => _$this._gMATScore;
  set gMATScore(int? gMATScore) => _$this._gMATScore = gMATScore;

  bool? _part1Status;
  bool? get part1Status => _$this._part1Status;
  set part1Status(bool? part1Status) => _$this._part1Status = part1Status;

  bool? _part2Status;
  bool? get part2Status => _$this._part2Status;
  set part2Status(bool? part2Status) => _$this._part2Status = part2Status;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UsersAdditionalRecordBuilder() {
    UsersAdditionalRecord._initializeBuilder(this);
  }

  UsersAdditionalRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _userPicture = $v.userPicture;
      _user = $v.user;
      _gradCollegeName = $v.gradCollegeName;
      _hometownCity = $v.hometownCity;
      _collegeCGPA = $v.collegeCGPA;
      _targetDestination = $v.targetDestination?.toBuilder();
      _gradDegreeCompleted = $v.gradDegreeCompleted;
      _dateofBirth = $v.dateofBirth;
      _targetMasterStudy = $v.targetMasterStudy?.toBuilder();
      _working = $v.working;
      _companyName = $v.companyName;
      _jobTitle = $v.jobTitle;
      _jobLocation = $v.jobLocation;
      _jobSalary = $v.jobSalary;
      _workexp = $v.workexp;
      _yearofcompletionGradDegree = $v.yearofcompletionGradDegree;
      _profileSubmitted = $v.profileSubmitted;
      _mentorMatched = $v.mentorMatched;
      _mentorSearchOn = $v.mentorSearchOn;
      _gRETaken = $v.gRETaken;
      _gMATTaken = $v.gMATTaken;
      _iELTSTaken = $v.iELTSTaken;
      _plannedIELTSDate = $v.plannedIELTSDate;
      _additionalDetails = $v.additionalDetails;
      _gradSpecialisation = $v.gradSpecialisation;
      _targetSpecialisation = $v.targetSpecialisation;
      _gREScore = $v.gREScore;
      _gMATScore = $v.gMATScore;
      _part1Status = $v.part1Status;
      _part2Status = $v.part2Status;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersAdditionalRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersAdditionalRecord;
  }

  @override
  void update(void Function(UsersAdditionalRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersAdditionalRecord build() => _build();

  _$UsersAdditionalRecord _build() {
    _$UsersAdditionalRecord _$result;
    try {
      _$result = _$v ??
          new _$UsersAdditionalRecord._(
              userName: userName,
              userPicture: userPicture,
              user: user,
              gradCollegeName: gradCollegeName,
              hometownCity: hometownCity,
              collegeCGPA: collegeCGPA,
              targetDestination: _targetDestination?.build(),
              gradDegreeCompleted: gradDegreeCompleted,
              dateofBirth: dateofBirth,
              targetMasterStudy: _targetMasterStudy?.build(),
              working: working,
              companyName: companyName,
              jobTitle: jobTitle,
              jobLocation: jobLocation,
              jobSalary: jobSalary,
              workexp: workexp,
              yearofcompletionGradDegree: yearofcompletionGradDegree,
              profileSubmitted: profileSubmitted,
              mentorMatched: mentorMatched,
              mentorSearchOn: mentorSearchOn,
              gRETaken: gRETaken,
              gMATTaken: gMATTaken,
              iELTSTaken: iELTSTaken,
              plannedIELTSDate: plannedIELTSDate,
              additionalDetails: additionalDetails,
              gradSpecialisation: gradSpecialisation,
              targetSpecialisation: targetSpecialisation,
              gREScore: gREScore,
              gMATScore: gMATScore,
              part1Status: part1Status,
              part2Status: part2Status,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'targetDestination';
        _targetDestination?.build();

        _$failedField = 'targetMasterStudy';
        _targetMasterStudy?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UsersAdditionalRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
