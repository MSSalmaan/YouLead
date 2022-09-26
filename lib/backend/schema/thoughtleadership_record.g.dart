// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thoughtleadership_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ThoughtleadershipRecord> _$thoughtleadershipRecordSerializer =
    new _$ThoughtleadershipRecordSerializer();

class _$ThoughtleadershipRecordSerializer
    implements StructuredSerializer<ThoughtleadershipRecord> {
  @override
  final Iterable<Type> types = const [
    ThoughtleadershipRecord,
    _$ThoughtleadershipRecord
  ];
  @override
  final String wireName = 'ThoughtleadershipRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ThoughtleadershipRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.tLTitle;
    if (value != null) {
      result
        ..add('TL_Title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tLSubjectArea;
    if (value != null) {
      result
        ..add('TL_SubjectArea')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tLMain;
    if (value != null) {
      result
        ..add('TL_Main')
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
    value = object.tLWrittendate;
    if (value != null) {
      result
        ..add('TL_Writtendate')
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
  ThoughtleadershipRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ThoughtleadershipRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'TL_Title':
          result.tLTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'TL_SubjectArea':
          result.tLSubjectArea = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'TL_Main':
          result.tLMain = serializers.deserialize(value,
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
        case 'TL_Writtendate':
          result.tLWrittendate = serializers.deserialize(value,
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

class _$ThoughtleadershipRecord extends ThoughtleadershipRecord {
  @override
  final String? tLTitle;
  @override
  final String? tLSubjectArea;
  @override
  final String? tLMain;
  @override
  final DocumentReference<Object?>? user;
  @override
  final DateTime? createdtime;
  @override
  final DateTime? tLWrittendate;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ThoughtleadershipRecord(
          [void Function(ThoughtleadershipRecordBuilder)? updates]) =>
      (new ThoughtleadershipRecordBuilder()..update(updates))._build();

  _$ThoughtleadershipRecord._(
      {this.tLTitle,
      this.tLSubjectArea,
      this.tLMain,
      this.user,
      this.createdtime,
      this.tLWrittendate,
      this.ffRef})
      : super._();

  @override
  ThoughtleadershipRecord rebuild(
          void Function(ThoughtleadershipRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ThoughtleadershipRecordBuilder toBuilder() =>
      new ThoughtleadershipRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ThoughtleadershipRecord &&
        tLTitle == other.tLTitle &&
        tLSubjectArea == other.tLSubjectArea &&
        tLMain == other.tLMain &&
        user == other.user &&
        createdtime == other.createdtime &&
        tLWrittendate == other.tLWrittendate &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, tLTitle.hashCode), tLSubjectArea.hashCode),
                        tLMain.hashCode),
                    user.hashCode),
                createdtime.hashCode),
            tLWrittendate.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ThoughtleadershipRecord')
          ..add('tLTitle', tLTitle)
          ..add('tLSubjectArea', tLSubjectArea)
          ..add('tLMain', tLMain)
          ..add('user', user)
          ..add('createdtime', createdtime)
          ..add('tLWrittendate', tLWrittendate)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ThoughtleadershipRecordBuilder
    implements
        Builder<ThoughtleadershipRecord, ThoughtleadershipRecordBuilder> {
  _$ThoughtleadershipRecord? _$v;

  String? _tLTitle;
  String? get tLTitle => _$this._tLTitle;
  set tLTitle(String? tLTitle) => _$this._tLTitle = tLTitle;

  String? _tLSubjectArea;
  String? get tLSubjectArea => _$this._tLSubjectArea;
  set tLSubjectArea(String? tLSubjectArea) =>
      _$this._tLSubjectArea = tLSubjectArea;

  String? _tLMain;
  String? get tLMain => _$this._tLMain;
  set tLMain(String? tLMain) => _$this._tLMain = tLMain;

  DocumentReference<Object?>? _user;
  DocumentReference<Object?>? get user => _$this._user;
  set user(DocumentReference<Object?>? user) => _$this._user = user;

  DateTime? _createdtime;
  DateTime? get createdtime => _$this._createdtime;
  set createdtime(DateTime? createdtime) => _$this._createdtime = createdtime;

  DateTime? _tLWrittendate;
  DateTime? get tLWrittendate => _$this._tLWrittendate;
  set tLWrittendate(DateTime? tLWrittendate) =>
      _$this._tLWrittendate = tLWrittendate;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ThoughtleadershipRecordBuilder() {
    ThoughtleadershipRecord._initializeBuilder(this);
  }

  ThoughtleadershipRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tLTitle = $v.tLTitle;
      _tLSubjectArea = $v.tLSubjectArea;
      _tLMain = $v.tLMain;
      _user = $v.user;
      _createdtime = $v.createdtime;
      _tLWrittendate = $v.tLWrittendate;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ThoughtleadershipRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ThoughtleadershipRecord;
  }

  @override
  void update(void Function(ThoughtleadershipRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ThoughtleadershipRecord build() => _build();

  _$ThoughtleadershipRecord _build() {
    final _$result = _$v ??
        new _$ThoughtleadershipRecord._(
            tLTitle: tLTitle,
            tLSubjectArea: tLSubjectArea,
            tLMain: tLMain,
            user: user,
            createdtime: createdtime,
            tLWrittendate: tLWrittendate,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
