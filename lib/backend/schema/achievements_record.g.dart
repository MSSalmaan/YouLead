// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'achievements_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AchievementsRecord> _$achievementsRecordSerializer =
    new _$AchievementsRecordSerializer();

class _$AchievementsRecordSerializer
    implements StructuredSerializer<AchievementsRecord> {
  @override
  final Iterable<Type> types = const [AchievementsRecord, _$AchievementsRecord];
  @override
  final String wireName = 'AchievementsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, AchievementsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.achMonth;
    if (value != null) {
      result
        ..add('AchMonth')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.achObjective;
    if (value != null) {
      result
        ..add('AchObjective')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.achKeyAreaWorked;
    if (value != null) {
      result
        ..add('AchKeyAreaWorked')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.achOutcome;
    if (value != null) {
      result
        ..add('AchOutcome')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.achMisses;
    if (value != null) {
      result
        ..add('AchMisses')
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
    value = object.createdtime;
    if (value != null) {
      result
        ..add('createdtime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.updatedtime;
    if (value != null) {
      result
        ..add('updatedtime')
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
  AchievementsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AchievementsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'AchMonth':
          result.achMonth = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'AchObjective':
          result.achObjective = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'AchKeyAreaWorked':
          result.achKeyAreaWorked = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'AchOutcome':
          result.achOutcome = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'AchMisses':
          result.achMisses = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'createdtime':
          result.createdtime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'updatedtime':
          result.updatedtime = serializers.deserialize(value,
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

class _$AchievementsRecord extends AchievementsRecord {
  @override
  final String? achMonth;
  @override
  final String? achObjective;
  @override
  final String? achKeyAreaWorked;
  @override
  final String? achOutcome;
  @override
  final String? achMisses;
  @override
  final DocumentReference<Object?>? user;
  @override
  final DateTime? createdtime;
  @override
  final DateTime? updatedtime;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AchievementsRecord(
          [void Function(AchievementsRecordBuilder)? updates]) =>
      (new AchievementsRecordBuilder()..update(updates))._build();

  _$AchievementsRecord._(
      {this.achMonth,
      this.achObjective,
      this.achKeyAreaWorked,
      this.achOutcome,
      this.achMisses,
      this.user,
      this.createdtime,
      this.updatedtime,
      this.ffRef})
      : super._();

  @override
  AchievementsRecord rebuild(
          void Function(AchievementsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AchievementsRecordBuilder toBuilder() =>
      new AchievementsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AchievementsRecord &&
        achMonth == other.achMonth &&
        achObjective == other.achObjective &&
        achKeyAreaWorked == other.achKeyAreaWorked &&
        achOutcome == other.achOutcome &&
        achMisses == other.achMisses &&
        user == other.user &&
        createdtime == other.createdtime &&
        updatedtime == other.updatedtime &&
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
                                $jc($jc(0, achMonth.hashCode),
                                    achObjective.hashCode),
                                achKeyAreaWorked.hashCode),
                            achOutcome.hashCode),
                        achMisses.hashCode),
                    user.hashCode),
                createdtime.hashCode),
            updatedtime.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AchievementsRecord')
          ..add('achMonth', achMonth)
          ..add('achObjective', achObjective)
          ..add('achKeyAreaWorked', achKeyAreaWorked)
          ..add('achOutcome', achOutcome)
          ..add('achMisses', achMisses)
          ..add('user', user)
          ..add('createdtime', createdtime)
          ..add('updatedtime', updatedtime)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AchievementsRecordBuilder
    implements Builder<AchievementsRecord, AchievementsRecordBuilder> {
  _$AchievementsRecord? _$v;

  String? _achMonth;
  String? get achMonth => _$this._achMonth;
  set achMonth(String? achMonth) => _$this._achMonth = achMonth;

  String? _achObjective;
  String? get achObjective => _$this._achObjective;
  set achObjective(String? achObjective) => _$this._achObjective = achObjective;

  String? _achKeyAreaWorked;
  String? get achKeyAreaWorked => _$this._achKeyAreaWorked;
  set achKeyAreaWorked(String? achKeyAreaWorked) =>
      _$this._achKeyAreaWorked = achKeyAreaWorked;

  String? _achOutcome;
  String? get achOutcome => _$this._achOutcome;
  set achOutcome(String? achOutcome) => _$this._achOutcome = achOutcome;

  String? _achMisses;
  String? get achMisses => _$this._achMisses;
  set achMisses(String? achMisses) => _$this._achMisses = achMisses;

  DocumentReference<Object?>? _user;
  DocumentReference<Object?>? get user => _$this._user;
  set user(DocumentReference<Object?>? user) => _$this._user = user;

  DateTime? _createdtime;
  DateTime? get createdtime => _$this._createdtime;
  set createdtime(DateTime? createdtime) => _$this._createdtime = createdtime;

  DateTime? _updatedtime;
  DateTime? get updatedtime => _$this._updatedtime;
  set updatedtime(DateTime? updatedtime) => _$this._updatedtime = updatedtime;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AchievementsRecordBuilder() {
    AchievementsRecord._initializeBuilder(this);
  }

  AchievementsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _achMonth = $v.achMonth;
      _achObjective = $v.achObjective;
      _achKeyAreaWorked = $v.achKeyAreaWorked;
      _achOutcome = $v.achOutcome;
      _achMisses = $v.achMisses;
      _user = $v.user;
      _createdtime = $v.createdtime;
      _updatedtime = $v.updatedtime;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AchievementsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AchievementsRecord;
  }

  @override
  void update(void Function(AchievementsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AchievementsRecord build() => _build();

  _$AchievementsRecord _build() {
    final _$result = _$v ??
        new _$AchievementsRecord._(
            achMonth: achMonth,
            achObjective: achObjective,
            achKeyAreaWorked: achKeyAreaWorked,
            achOutcome: achOutcome,
            achMisses: achMisses,
            user: user,
            createdtime: createdtime,
            updatedtime: updatedtime,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
