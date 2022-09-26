// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'college_list_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CollegeListRecord> _$collegeListRecordSerializer =
    new _$CollegeListRecordSerializer();

class _$CollegeListRecordSerializer
    implements StructuredSerializer<CollegeListRecord> {
  @override
  final Iterable<Type> types = const [CollegeListRecord, _$CollegeListRecord];
  @override
  final String wireName = 'CollegeListRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CollegeListRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.collegeCity;
    if (value != null) {
      result
        ..add('CollegeCity')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.collegeName;
    if (value != null) {
      result
        ..add('CollegeName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.collegeRankingTimes;
    if (value != null) {
      result
        ..add('CollegeRankingTimes')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.degree;
    if (value != null) {
      result
        ..add('Degree')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fallSpring;
    if (value != null) {
      result
        ..add('FallSpring')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.applicationDeadline;
    if (value != null) {
      result
        ..add('Application_Deadline')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.gRERequired;
    if (value != null) {
      result
        ..add('GRE_required')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.collegeCountry;
    if (value != null) {
      result
        ..add('CollegeCountry')
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
    value = object.userlist;
    if (value != null) {
      result
        ..add('userlist')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.collegepic;
    if (value != null) {
      result
        ..add('collegepic')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.collegeUrl;
    if (value != null) {
      result
        ..add('college_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  CollegeListRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CollegeListRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'CollegeCity':
          result.collegeCity = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'CollegeName':
          result.collegeName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'CollegeRankingTimes':
          result.collegeRankingTimes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Degree':
          result.degree = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'FallSpring':
          result.fallSpring = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Application_Deadline':
          result.applicationDeadline = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'GRE_required':
          result.gRERequired = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'CollegeCountry':
          result.collegeCountry = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'userlist':
          result.userlist.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'collegepic':
          result.collegepic = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'college_url':
          result.collegeUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$CollegeListRecord extends CollegeListRecord {
  @override
  final String? collegeCity;
  @override
  final String? collegeName;
  @override
  final int? collegeRankingTimes;
  @override
  final String? degree;
  @override
  final String? fallSpring;
  @override
  final DateTime? applicationDeadline;
  @override
  final bool? gRERequired;
  @override
  final String? collegeCountry;
  @override
  final DocumentReference<Object?>? user;
  @override
  final BuiltList<DocumentReference<Object?>>? userlist;
  @override
  final String? collegepic;
  @override
  final String? collegeUrl;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CollegeListRecord(
          [void Function(CollegeListRecordBuilder)? updates]) =>
      (new CollegeListRecordBuilder()..update(updates))._build();

  _$CollegeListRecord._(
      {this.collegeCity,
      this.collegeName,
      this.collegeRankingTimes,
      this.degree,
      this.fallSpring,
      this.applicationDeadline,
      this.gRERequired,
      this.collegeCountry,
      this.user,
      this.userlist,
      this.collegepic,
      this.collegeUrl,
      this.ffRef})
      : super._();

  @override
  CollegeListRecord rebuild(void Function(CollegeListRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CollegeListRecordBuilder toBuilder() =>
      new CollegeListRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CollegeListRecord &&
        collegeCity == other.collegeCity &&
        collegeName == other.collegeName &&
        collegeRankingTimes == other.collegeRankingTimes &&
        degree == other.degree &&
        fallSpring == other.fallSpring &&
        applicationDeadline == other.applicationDeadline &&
        gRERequired == other.gRERequired &&
        collegeCountry == other.collegeCountry &&
        user == other.user &&
        userlist == other.userlist &&
        collegepic == other.collegepic &&
        collegeUrl == other.collegeUrl &&
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
                                                    $jc(0,
                                                        collegeCity.hashCode),
                                                    collegeName.hashCode),
                                                collegeRankingTimes.hashCode),
                                            degree.hashCode),
                                        fallSpring.hashCode),
                                    applicationDeadline.hashCode),
                                gRERequired.hashCode),
                            collegeCountry.hashCode),
                        user.hashCode),
                    userlist.hashCode),
                collegepic.hashCode),
            collegeUrl.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CollegeListRecord')
          ..add('collegeCity', collegeCity)
          ..add('collegeName', collegeName)
          ..add('collegeRankingTimes', collegeRankingTimes)
          ..add('degree', degree)
          ..add('fallSpring', fallSpring)
          ..add('applicationDeadline', applicationDeadline)
          ..add('gRERequired', gRERequired)
          ..add('collegeCountry', collegeCountry)
          ..add('user', user)
          ..add('userlist', userlist)
          ..add('collegepic', collegepic)
          ..add('collegeUrl', collegeUrl)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CollegeListRecordBuilder
    implements Builder<CollegeListRecord, CollegeListRecordBuilder> {
  _$CollegeListRecord? _$v;

  String? _collegeCity;
  String? get collegeCity => _$this._collegeCity;
  set collegeCity(String? collegeCity) => _$this._collegeCity = collegeCity;

  String? _collegeName;
  String? get collegeName => _$this._collegeName;
  set collegeName(String? collegeName) => _$this._collegeName = collegeName;

  int? _collegeRankingTimes;
  int? get collegeRankingTimes => _$this._collegeRankingTimes;
  set collegeRankingTimes(int? collegeRankingTimes) =>
      _$this._collegeRankingTimes = collegeRankingTimes;

  String? _degree;
  String? get degree => _$this._degree;
  set degree(String? degree) => _$this._degree = degree;

  String? _fallSpring;
  String? get fallSpring => _$this._fallSpring;
  set fallSpring(String? fallSpring) => _$this._fallSpring = fallSpring;

  DateTime? _applicationDeadline;
  DateTime? get applicationDeadline => _$this._applicationDeadline;
  set applicationDeadline(DateTime? applicationDeadline) =>
      _$this._applicationDeadline = applicationDeadline;

  bool? _gRERequired;
  bool? get gRERequired => _$this._gRERequired;
  set gRERequired(bool? gRERequired) => _$this._gRERequired = gRERequired;

  String? _collegeCountry;
  String? get collegeCountry => _$this._collegeCountry;
  set collegeCountry(String? collegeCountry) =>
      _$this._collegeCountry = collegeCountry;

  DocumentReference<Object?>? _user;
  DocumentReference<Object?>? get user => _$this._user;
  set user(DocumentReference<Object?>? user) => _$this._user = user;

  ListBuilder<DocumentReference<Object?>>? _userlist;
  ListBuilder<DocumentReference<Object?>> get userlist =>
      _$this._userlist ??= new ListBuilder<DocumentReference<Object?>>();
  set userlist(ListBuilder<DocumentReference<Object?>>? userlist) =>
      _$this._userlist = userlist;

  String? _collegepic;
  String? get collegepic => _$this._collegepic;
  set collegepic(String? collegepic) => _$this._collegepic = collegepic;

  String? _collegeUrl;
  String? get collegeUrl => _$this._collegeUrl;
  set collegeUrl(String? collegeUrl) => _$this._collegeUrl = collegeUrl;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CollegeListRecordBuilder() {
    CollegeListRecord._initializeBuilder(this);
  }

  CollegeListRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _collegeCity = $v.collegeCity;
      _collegeName = $v.collegeName;
      _collegeRankingTimes = $v.collegeRankingTimes;
      _degree = $v.degree;
      _fallSpring = $v.fallSpring;
      _applicationDeadline = $v.applicationDeadline;
      _gRERequired = $v.gRERequired;
      _collegeCountry = $v.collegeCountry;
      _user = $v.user;
      _userlist = $v.userlist?.toBuilder();
      _collegepic = $v.collegepic;
      _collegeUrl = $v.collegeUrl;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CollegeListRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CollegeListRecord;
  }

  @override
  void update(void Function(CollegeListRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CollegeListRecord build() => _build();

  _$CollegeListRecord _build() {
    _$CollegeListRecord _$result;
    try {
      _$result = _$v ??
          new _$CollegeListRecord._(
              collegeCity: collegeCity,
              collegeName: collegeName,
              collegeRankingTimes: collegeRankingTimes,
              degree: degree,
              fallSpring: fallSpring,
              applicationDeadline: applicationDeadline,
              gRERequired: gRERequired,
              collegeCountry: collegeCountry,
              user: user,
              userlist: _userlist?.build(),
              collegepic: collegepic,
              collegeUrl: collegeUrl,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userlist';
        _userlist?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CollegeListRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
