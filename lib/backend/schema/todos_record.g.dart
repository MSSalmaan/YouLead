// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todos_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TodosRecord> _$todosRecordSerializer = new _$TodosRecordSerializer();

class _$TodosRecordSerializer implements StructuredSerializer<TodosRecord> {
  @override
  final Iterable<Type> types = const [TodosRecord, _$TodosRecord];
  @override
  final String wireName = 'TodosRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, TodosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('Title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('Description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('Date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.isdone;
    if (value != null) {
      result
        ..add('isdone')
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
  TodosRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TodosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'isdone':
          result.isdone = serializers.deserialize(value,
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

class _$TodosRecord extends TodosRecord {
  @override
  final String? title;
  @override
  final String? description;
  @override
  final DateTime? date;
  @override
  final bool? isdone;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TodosRecord([void Function(TodosRecordBuilder)? updates]) =>
      (new TodosRecordBuilder()..update(updates))._build();

  _$TodosRecord._(
      {this.title, this.description, this.date, this.isdone, this.ffRef})
      : super._();

  @override
  TodosRecord rebuild(void Function(TodosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TodosRecordBuilder toBuilder() => new TodosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TodosRecord &&
        title == other.title &&
        description == other.description &&
        date == other.date &&
        isdone == other.isdone &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, title.hashCode), description.hashCode),
                date.hashCode),
            isdone.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TodosRecord')
          ..add('title', title)
          ..add('description', description)
          ..add('date', date)
          ..add('isdone', isdone)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TodosRecordBuilder implements Builder<TodosRecord, TodosRecordBuilder> {
  _$TodosRecord? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  bool? _isdone;
  bool? get isdone => _$this._isdone;
  set isdone(bool? isdone) => _$this._isdone = isdone;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TodosRecordBuilder() {
    TodosRecord._initializeBuilder(this);
  }

  TodosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _description = $v.description;
      _date = $v.date;
      _isdone = $v.isdone;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TodosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TodosRecord;
  }

  @override
  void update(void Function(TodosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TodosRecord build() => _build();

  _$TodosRecord _build() {
    final _$result = _$v ??
        new _$TodosRecord._(
            title: title,
            description: description,
            date: date,
            isdone: isdone,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
