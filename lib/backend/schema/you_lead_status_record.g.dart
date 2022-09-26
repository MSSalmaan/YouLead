// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'you_lead_status_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<YouLeadStatusRecord> _$youLeadStatusRecordSerializer =
    new _$YouLeadStatusRecordSerializer();

class _$YouLeadStatusRecordSerializer
    implements StructuredSerializer<YouLeadStatusRecord> {
  @override
  final Iterable<Type> types = const [
    YouLeadStatusRecord,
    _$YouLeadStatusRecord
  ];
  @override
  final String wireName = 'YouLeadStatusRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, YouLeadStatusRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.profileSumbitted;
    if (value != null) {
      result
        ..add('ProfileSumbitted')
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
    value = object.usrRef;
    if (value != null) {
      result
        ..add('usr_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  YouLeadStatusRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new YouLeadStatusRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'ProfileSumbitted':
          result.profileSumbitted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'MentorMatched':
          result.mentorMatched = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'usr_ref':
          result.usrRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$YouLeadStatusRecord extends YouLeadStatusRecord {
  @override
  final bool? profileSumbitted;
  @override
  final bool? mentorMatched;
  @override
  final DocumentReference<Object?>? usrRef;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$YouLeadStatusRecord(
          [void Function(YouLeadStatusRecordBuilder)? updates]) =>
      (new YouLeadStatusRecordBuilder()..update(updates))._build();

  _$YouLeadStatusRecord._(
      {this.profileSumbitted, this.mentorMatched, this.usrRef, this.ffRef})
      : super._();

  @override
  YouLeadStatusRecord rebuild(
          void Function(YouLeadStatusRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  YouLeadStatusRecordBuilder toBuilder() =>
      new YouLeadStatusRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is YouLeadStatusRecord &&
        profileSumbitted == other.profileSumbitted &&
        mentorMatched == other.mentorMatched &&
        usrRef == other.usrRef &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, profileSumbitted.hashCode), mentorMatched.hashCode),
            usrRef.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'YouLeadStatusRecord')
          ..add('profileSumbitted', profileSumbitted)
          ..add('mentorMatched', mentorMatched)
          ..add('usrRef', usrRef)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class YouLeadStatusRecordBuilder
    implements Builder<YouLeadStatusRecord, YouLeadStatusRecordBuilder> {
  _$YouLeadStatusRecord? _$v;

  bool? _profileSumbitted;
  bool? get profileSumbitted => _$this._profileSumbitted;
  set profileSumbitted(bool? profileSumbitted) =>
      _$this._profileSumbitted = profileSumbitted;

  bool? _mentorMatched;
  bool? get mentorMatched => _$this._mentorMatched;
  set mentorMatched(bool? mentorMatched) =>
      _$this._mentorMatched = mentorMatched;

  DocumentReference<Object?>? _usrRef;
  DocumentReference<Object?>? get usrRef => _$this._usrRef;
  set usrRef(DocumentReference<Object?>? usrRef) => _$this._usrRef = usrRef;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  YouLeadStatusRecordBuilder() {
    YouLeadStatusRecord._initializeBuilder(this);
  }

  YouLeadStatusRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _profileSumbitted = $v.profileSumbitted;
      _mentorMatched = $v.mentorMatched;
      _usrRef = $v.usrRef;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(YouLeadStatusRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$YouLeadStatusRecord;
  }

  @override
  void update(void Function(YouLeadStatusRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  YouLeadStatusRecord build() => _build();

  _$YouLeadStatusRecord _build() {
    final _$result = _$v ??
        new _$YouLeadStatusRecord._(
            profileSumbitted: profileSumbitted,
            mentorMatched: mentorMatched,
            usrRef: usrRef,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
