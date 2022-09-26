// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'indian_college_list_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<IndianCollegeListRecord> _$indianCollegeListRecordSerializer =
    new _$IndianCollegeListRecordSerializer();

class _$IndianCollegeListRecordSerializer
    implements StructuredSerializer<IndianCollegeListRecord> {
  @override
  final Iterable<Type> types = const [
    IndianCollegeListRecord,
    _$IndianCollegeListRecord
  ];
  @override
  final String wireName = 'IndianCollegeListRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, IndianCollegeListRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.collegeState;
    if (value != null) {
      result
        ..add('CollegeState')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
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
    value = object.collegeRankingNIRF;
    if (value != null) {
      result
        ..add('CollegeRankingNIRF')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  IndianCollegeListRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IndianCollegeListRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'CollegeState':
          result.collegeState = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'CollegeCity':
          result.collegeCity = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'CollegeName':
          result.collegeName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'CollegeRankingNIRF':
          result.collegeRankingNIRF = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$IndianCollegeListRecord extends IndianCollegeListRecord {
  @override
  final String? collegeState;
  @override
  final String? collegeCity;
  @override
  final String? collegeName;
  @override
  final int? collegeRankingNIRF;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$IndianCollegeListRecord(
          [void Function(IndianCollegeListRecordBuilder)? updates]) =>
      (new IndianCollegeListRecordBuilder()..update(updates))._build();

  _$IndianCollegeListRecord._(
      {this.collegeState,
      this.collegeCity,
      this.collegeName,
      this.collegeRankingNIRF,
      this.ffRef})
      : super._();

  @override
  IndianCollegeListRecord rebuild(
          void Function(IndianCollegeListRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IndianCollegeListRecordBuilder toBuilder() =>
      new IndianCollegeListRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IndianCollegeListRecord &&
        collegeState == other.collegeState &&
        collegeCity == other.collegeCity &&
        collegeName == other.collegeName &&
        collegeRankingNIRF == other.collegeRankingNIRF &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, collegeState.hashCode), collegeCity.hashCode),
                collegeName.hashCode),
            collegeRankingNIRF.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IndianCollegeListRecord')
          ..add('collegeState', collegeState)
          ..add('collegeCity', collegeCity)
          ..add('collegeName', collegeName)
          ..add('collegeRankingNIRF', collegeRankingNIRF)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class IndianCollegeListRecordBuilder
    implements
        Builder<IndianCollegeListRecord, IndianCollegeListRecordBuilder> {
  _$IndianCollegeListRecord? _$v;

  String? _collegeState;
  String? get collegeState => _$this._collegeState;
  set collegeState(String? collegeState) => _$this._collegeState = collegeState;

  String? _collegeCity;
  String? get collegeCity => _$this._collegeCity;
  set collegeCity(String? collegeCity) => _$this._collegeCity = collegeCity;

  String? _collegeName;
  String? get collegeName => _$this._collegeName;
  set collegeName(String? collegeName) => _$this._collegeName = collegeName;

  int? _collegeRankingNIRF;
  int? get collegeRankingNIRF => _$this._collegeRankingNIRF;
  set collegeRankingNIRF(int? collegeRankingNIRF) =>
      _$this._collegeRankingNIRF = collegeRankingNIRF;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  IndianCollegeListRecordBuilder() {
    IndianCollegeListRecord._initializeBuilder(this);
  }

  IndianCollegeListRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _collegeState = $v.collegeState;
      _collegeCity = $v.collegeCity;
      _collegeName = $v.collegeName;
      _collegeRankingNIRF = $v.collegeRankingNIRF;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IndianCollegeListRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IndianCollegeListRecord;
  }

  @override
  void update(void Function(IndianCollegeListRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IndianCollegeListRecord build() => _build();

  _$IndianCollegeListRecord _build() {
    final _$result = _$v ??
        new _$IndianCollegeListRecord._(
            collegeState: collegeState,
            collegeCity: collegeCity,
            collegeName: collegeName,
            collegeRankingNIRF: collegeRankingNIRF,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
