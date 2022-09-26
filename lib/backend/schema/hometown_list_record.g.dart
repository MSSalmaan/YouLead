// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hometown_list_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HometownListRecord> _$hometownListRecordSerializer =
    new _$HometownListRecordSerializer();

class _$HometownListRecordSerializer
    implements StructuredSerializer<HometownListRecord> {
  @override
  final Iterable<Type> types = const [HometownListRecord, _$HometownListRecord];
  @override
  final String wireName = 'HometownListRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, HometownListRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.hometownName;
    if (value != null) {
      result
        ..add('HometownName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.stateName;
    if (value != null) {
      result
        ..add('StateName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.countryName;
    if (value != null) {
      result
        ..add('CountryName')
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
  HometownListRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HometownListRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'HometownName':
          result.hometownName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'StateName':
          result.stateName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'CountryName':
          result.countryName = serializers.deserialize(value,
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

class _$HometownListRecord extends HometownListRecord {
  @override
  final String? hometownName;
  @override
  final String? stateName;
  @override
  final int? countryName;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$HometownListRecord(
          [void Function(HometownListRecordBuilder)? updates]) =>
      (new HometownListRecordBuilder()..update(updates))._build();

  _$HometownListRecord._(
      {this.hometownName, this.stateName, this.countryName, this.ffRef})
      : super._();

  @override
  HometownListRecord rebuild(
          void Function(HometownListRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HometownListRecordBuilder toBuilder() =>
      new HometownListRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HometownListRecord &&
        hometownName == other.hometownName &&
        stateName == other.stateName &&
        countryName == other.countryName &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, hometownName.hashCode), stateName.hashCode),
            countryName.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HometownListRecord')
          ..add('hometownName', hometownName)
          ..add('stateName', stateName)
          ..add('countryName', countryName)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class HometownListRecordBuilder
    implements Builder<HometownListRecord, HometownListRecordBuilder> {
  _$HometownListRecord? _$v;

  String? _hometownName;
  String? get hometownName => _$this._hometownName;
  set hometownName(String? hometownName) => _$this._hometownName = hometownName;

  String? _stateName;
  String? get stateName => _$this._stateName;
  set stateName(String? stateName) => _$this._stateName = stateName;

  int? _countryName;
  int? get countryName => _$this._countryName;
  set countryName(int? countryName) => _$this._countryName = countryName;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  HometownListRecordBuilder() {
    HometownListRecord._initializeBuilder(this);
  }

  HometownListRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hometownName = $v.hometownName;
      _stateName = $v.stateName;
      _countryName = $v.countryName;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HometownListRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HometownListRecord;
  }

  @override
  void update(void Function(HometownListRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HometownListRecord build() => _build();

  _$HometownListRecord _build() {
    final _$result = _$v ??
        new _$HometownListRecord._(
            hometownName: hometownName,
            stateName: stateName,
            countryName: countryName,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
