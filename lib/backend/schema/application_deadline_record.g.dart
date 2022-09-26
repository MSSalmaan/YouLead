// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_deadline_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ApplicationDeadlineRecord> _$applicationDeadlineRecordSerializer =
    new _$ApplicationDeadlineRecordSerializer();

class _$ApplicationDeadlineRecordSerializer
    implements StructuredSerializer<ApplicationDeadlineRecord> {
  @override
  final Iterable<Type> types = const [
    ApplicationDeadlineRecord,
    _$ApplicationDeadlineRecord
  ];
  @override
  final String wireName = 'ApplicationDeadlineRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ApplicationDeadlineRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
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
    value = object.deadline;
    if (value != null) {
      result
        ..add('Deadline')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  ApplicationDeadlineRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ApplicationDeadlineRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Degree':
          result.degree = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'FallSpring':
          result.fallSpring = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Deadline':
          result.deadline = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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

class _$ApplicationDeadlineRecord extends ApplicationDeadlineRecord {
  @override
  final String? degree;
  @override
  final String? fallSpring;
  @override
  final DateTime? deadline;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ApplicationDeadlineRecord(
          [void Function(ApplicationDeadlineRecordBuilder)? updates]) =>
      (new ApplicationDeadlineRecordBuilder()..update(updates))._build();

  _$ApplicationDeadlineRecord._(
      {this.degree, this.fallSpring, this.deadline, this.ffRef})
      : super._();

  @override
  ApplicationDeadlineRecord rebuild(
          void Function(ApplicationDeadlineRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplicationDeadlineRecordBuilder toBuilder() =>
      new ApplicationDeadlineRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApplicationDeadlineRecord &&
        degree == other.degree &&
        fallSpring == other.fallSpring &&
        deadline == other.deadline &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, degree.hashCode), fallSpring.hashCode),
            deadline.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApplicationDeadlineRecord')
          ..add('degree', degree)
          ..add('fallSpring', fallSpring)
          ..add('deadline', deadline)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ApplicationDeadlineRecordBuilder
    implements
        Builder<ApplicationDeadlineRecord, ApplicationDeadlineRecordBuilder> {
  _$ApplicationDeadlineRecord? _$v;

  String? _degree;
  String? get degree => _$this._degree;
  set degree(String? degree) => _$this._degree = degree;

  String? _fallSpring;
  String? get fallSpring => _$this._fallSpring;
  set fallSpring(String? fallSpring) => _$this._fallSpring = fallSpring;

  DateTime? _deadline;
  DateTime? get deadline => _$this._deadline;
  set deadline(DateTime? deadline) => _$this._deadline = deadline;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ApplicationDeadlineRecordBuilder() {
    ApplicationDeadlineRecord._initializeBuilder(this);
  }

  ApplicationDeadlineRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _degree = $v.degree;
      _fallSpring = $v.fallSpring;
      _deadline = $v.deadline;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApplicationDeadlineRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApplicationDeadlineRecord;
  }

  @override
  void update(void Function(ApplicationDeadlineRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApplicationDeadlineRecord build() => _build();

  _$ApplicationDeadlineRecord _build() {
    final _$result = _$v ??
        new _$ApplicationDeadlineRecord._(
            degree: degree,
            fallSpring: fallSpring,
            deadline: deadline,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
