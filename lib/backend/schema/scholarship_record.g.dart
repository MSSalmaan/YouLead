// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scholarship_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ScholarshipRecord> _$scholarshipRecordSerializer =
    new _$ScholarshipRecordSerializer();

class _$ScholarshipRecordSerializer
    implements StructuredSerializer<ScholarshipRecord> {
  @override
  final Iterable<Type> types = const [ScholarshipRecord, _$ScholarshipRecord];
  @override
  final String wireName = 'ScholarshipRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ScholarshipRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.scholarshipName;
    if (value != null) {
      result
        ..add('ScholarshipName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.eligibleCourse;
    if (value != null) {
      result
        ..add('EligibleCourse')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.applicationDeadline;
    if (value != null) {
      result
        ..add('ApplicationDeadline')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.schAmount;
    if (value != null) {
      result
        ..add('SchAmount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.eligibleNationalities;
    if (value != null) {
      result
        ..add('EligibleNationalities')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.desciption;
    if (value != null) {
      result
        ..add('Desciption')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.collegeRef;
    if (value != null) {
      result
        ..add('college_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.collegeName;
    if (value != null) {
      result
        ..add('collegeName')
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
  ScholarshipRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ScholarshipRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'ScholarshipName':
          result.scholarshipName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'EligibleCourse':
          result.eligibleCourse.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'ApplicationDeadline':
          result.applicationDeadline = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'SchAmount':
          result.schAmount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'EligibleNationalities':
          result.eligibleNationalities.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'Desciption':
          result.desciption = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'college_ref':
          result.collegeRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'collegeName':
          result.collegeName = serializers.deserialize(value,
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

class _$ScholarshipRecord extends ScholarshipRecord {
  @override
  final String? scholarshipName;
  @override
  final BuiltList<String>? eligibleCourse;
  @override
  final DateTime? applicationDeadline;
  @override
  final int? schAmount;
  @override
  final BuiltList<String>? eligibleNationalities;
  @override
  final String? desciption;
  @override
  final DocumentReference<Object?>? collegeRef;
  @override
  final String? collegeName;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ScholarshipRecord(
          [void Function(ScholarshipRecordBuilder)? updates]) =>
      (new ScholarshipRecordBuilder()..update(updates))._build();

  _$ScholarshipRecord._(
      {this.scholarshipName,
      this.eligibleCourse,
      this.applicationDeadline,
      this.schAmount,
      this.eligibleNationalities,
      this.desciption,
      this.collegeRef,
      this.collegeName,
      this.ffRef})
      : super._();

  @override
  ScholarshipRecord rebuild(void Function(ScholarshipRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScholarshipRecordBuilder toBuilder() =>
      new ScholarshipRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScholarshipRecord &&
        scholarshipName == other.scholarshipName &&
        eligibleCourse == other.eligibleCourse &&
        applicationDeadline == other.applicationDeadline &&
        schAmount == other.schAmount &&
        eligibleNationalities == other.eligibleNationalities &&
        desciption == other.desciption &&
        collegeRef == other.collegeRef &&
        collegeName == other.collegeName &&
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
                                $jc($jc(0, scholarshipName.hashCode),
                                    eligibleCourse.hashCode),
                                applicationDeadline.hashCode),
                            schAmount.hashCode),
                        eligibleNationalities.hashCode),
                    desciption.hashCode),
                collegeRef.hashCode),
            collegeName.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ScholarshipRecord')
          ..add('scholarshipName', scholarshipName)
          ..add('eligibleCourse', eligibleCourse)
          ..add('applicationDeadline', applicationDeadline)
          ..add('schAmount', schAmount)
          ..add('eligibleNationalities', eligibleNationalities)
          ..add('desciption', desciption)
          ..add('collegeRef', collegeRef)
          ..add('collegeName', collegeName)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ScholarshipRecordBuilder
    implements Builder<ScholarshipRecord, ScholarshipRecordBuilder> {
  _$ScholarshipRecord? _$v;

  String? _scholarshipName;
  String? get scholarshipName => _$this._scholarshipName;
  set scholarshipName(String? scholarshipName) =>
      _$this._scholarshipName = scholarshipName;

  ListBuilder<String>? _eligibleCourse;
  ListBuilder<String> get eligibleCourse =>
      _$this._eligibleCourse ??= new ListBuilder<String>();
  set eligibleCourse(ListBuilder<String>? eligibleCourse) =>
      _$this._eligibleCourse = eligibleCourse;

  DateTime? _applicationDeadline;
  DateTime? get applicationDeadline => _$this._applicationDeadline;
  set applicationDeadline(DateTime? applicationDeadline) =>
      _$this._applicationDeadline = applicationDeadline;

  int? _schAmount;
  int? get schAmount => _$this._schAmount;
  set schAmount(int? schAmount) => _$this._schAmount = schAmount;

  ListBuilder<String>? _eligibleNationalities;
  ListBuilder<String> get eligibleNationalities =>
      _$this._eligibleNationalities ??= new ListBuilder<String>();
  set eligibleNationalities(ListBuilder<String>? eligibleNationalities) =>
      _$this._eligibleNationalities = eligibleNationalities;

  String? _desciption;
  String? get desciption => _$this._desciption;
  set desciption(String? desciption) => _$this._desciption = desciption;

  DocumentReference<Object?>? _collegeRef;
  DocumentReference<Object?>? get collegeRef => _$this._collegeRef;
  set collegeRef(DocumentReference<Object?>? collegeRef) =>
      _$this._collegeRef = collegeRef;

  String? _collegeName;
  String? get collegeName => _$this._collegeName;
  set collegeName(String? collegeName) => _$this._collegeName = collegeName;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ScholarshipRecordBuilder() {
    ScholarshipRecord._initializeBuilder(this);
  }

  ScholarshipRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _scholarshipName = $v.scholarshipName;
      _eligibleCourse = $v.eligibleCourse?.toBuilder();
      _applicationDeadline = $v.applicationDeadline;
      _schAmount = $v.schAmount;
      _eligibleNationalities = $v.eligibleNationalities?.toBuilder();
      _desciption = $v.desciption;
      _collegeRef = $v.collegeRef;
      _collegeName = $v.collegeName;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScholarshipRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ScholarshipRecord;
  }

  @override
  void update(void Function(ScholarshipRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ScholarshipRecord build() => _build();

  _$ScholarshipRecord _build() {
    _$ScholarshipRecord _$result;
    try {
      _$result = _$v ??
          new _$ScholarshipRecord._(
              scholarshipName: scholarshipName,
              eligibleCourse: _eligibleCourse?.build(),
              applicationDeadline: applicationDeadline,
              schAmount: schAmount,
              eligibleNationalities: _eligibleNationalities?.build(),
              desciption: desciption,
              collegeRef: collegeRef,
              collegeName: collegeName,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'eligibleCourse';
        _eligibleCourse?.build();

        _$failedField = 'eligibleNationalities';
        _eligibleNationalities?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ScholarshipRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
