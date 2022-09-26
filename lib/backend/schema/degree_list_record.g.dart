// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'degree_list_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DegreeListRecord> _$degreeListRecordSerializer =
    new _$DegreeListRecordSerializer();

class _$DegreeListRecordSerializer
    implements StructuredSerializer<DegreeListRecord> {
  @override
  final Iterable<Type> types = const [DegreeListRecord, _$DegreeListRecord];
  @override
  final String wireName = 'DegreeListRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, DegreeListRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.degreeName;
    if (value != null) {
      result
        ..add('DegreeName')
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
  DegreeListRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DegreeListRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'DegreeName':
          result.degreeName = serializers.deserialize(value,
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

class _$DegreeListRecord extends DegreeListRecord {
  @override
  final String? degreeName;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DegreeListRecord(
          [void Function(DegreeListRecordBuilder)? updates]) =>
      (new DegreeListRecordBuilder()..update(updates))._build();

  _$DegreeListRecord._({this.degreeName, this.ffRef}) : super._();

  @override
  DegreeListRecord rebuild(void Function(DegreeListRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DegreeListRecordBuilder toBuilder() =>
      new DegreeListRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DegreeListRecord &&
        degreeName == other.degreeName &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, degreeName.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DegreeListRecord')
          ..add('degreeName', degreeName)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DegreeListRecordBuilder
    implements Builder<DegreeListRecord, DegreeListRecordBuilder> {
  _$DegreeListRecord? _$v;

  String? _degreeName;
  String? get degreeName => _$this._degreeName;
  set degreeName(String? degreeName) => _$this._degreeName = degreeName;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DegreeListRecordBuilder() {
    DegreeListRecord._initializeBuilder(this);
  }

  DegreeListRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _degreeName = $v.degreeName;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DegreeListRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DegreeListRecord;
  }

  @override
  void update(void Function(DegreeListRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DegreeListRecord build() => _build();

  _$DegreeListRecord _build() {
    final _$result =
        _$v ?? new _$DegreeListRecord._(degreeName: degreeName, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
