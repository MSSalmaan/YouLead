// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'books_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BooksRecord> _$booksRecordSerializer = new _$BooksRecordSerializer();

class _$BooksRecordSerializer implements StructuredSerializer<BooksRecord> {
  @override
  final Iterable<Type> types = const [BooksRecord, _$BooksRecord];
  @override
  final String wireName = 'BooksRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, BooksRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.bookTitle;
    if (value != null) {
      result
        ..add('BookTitle')
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
    value = object.bookSubjectArea;
    if (value != null) {
      result
        ..add('Book_Subject_area')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bookCompletedDate;
    if (value != null) {
      result
        ..add('Book_completed_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bookUpdateTime;
    if (value != null) {
      result
        ..add('BookUpdate_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.bookLearning;
    if (value != null) {
      result
        ..add('BookLearning')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bookSummary;
    if (value != null) {
      result
        ..add('BookSummary')
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
  BooksRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BooksRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'BookTitle':
          result.bookTitle = serializers.deserialize(value,
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
        case 'Book_Subject_area':
          result.bookSubjectArea = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Book_completed_date':
          result.bookCompletedDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'BookUpdate_time':
          result.bookUpdateTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'BookLearning':
          result.bookLearning = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'BookSummary':
          result.bookSummary = serializers.deserialize(value,
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

class _$BooksRecord extends BooksRecord {
  @override
  final String? bookTitle;
  @override
  final DocumentReference<Object?>? user;
  @override
  final DateTime? createdtime;
  @override
  final String? bookSubjectArea;
  @override
  final String? bookCompletedDate;
  @override
  final DateTime? bookUpdateTime;
  @override
  final String? bookLearning;
  @override
  final String? bookSummary;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$BooksRecord([void Function(BooksRecordBuilder)? updates]) =>
      (new BooksRecordBuilder()..update(updates))._build();

  _$BooksRecord._(
      {this.bookTitle,
      this.user,
      this.createdtime,
      this.bookSubjectArea,
      this.bookCompletedDate,
      this.bookUpdateTime,
      this.bookLearning,
      this.bookSummary,
      this.ffRef})
      : super._();

  @override
  BooksRecord rebuild(void Function(BooksRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BooksRecordBuilder toBuilder() => new BooksRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BooksRecord &&
        bookTitle == other.bookTitle &&
        user == other.user &&
        createdtime == other.createdtime &&
        bookSubjectArea == other.bookSubjectArea &&
        bookCompletedDate == other.bookCompletedDate &&
        bookUpdateTime == other.bookUpdateTime &&
        bookLearning == other.bookLearning &&
        bookSummary == other.bookSummary &&
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
                            $jc($jc($jc(0, bookTitle.hashCode), user.hashCode),
                                createdtime.hashCode),
                            bookSubjectArea.hashCode),
                        bookCompletedDate.hashCode),
                    bookUpdateTime.hashCode),
                bookLearning.hashCode),
            bookSummary.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BooksRecord')
          ..add('bookTitle', bookTitle)
          ..add('user', user)
          ..add('createdtime', createdtime)
          ..add('bookSubjectArea', bookSubjectArea)
          ..add('bookCompletedDate', bookCompletedDate)
          ..add('bookUpdateTime', bookUpdateTime)
          ..add('bookLearning', bookLearning)
          ..add('bookSummary', bookSummary)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BooksRecordBuilder implements Builder<BooksRecord, BooksRecordBuilder> {
  _$BooksRecord? _$v;

  String? _bookTitle;
  String? get bookTitle => _$this._bookTitle;
  set bookTitle(String? bookTitle) => _$this._bookTitle = bookTitle;

  DocumentReference<Object?>? _user;
  DocumentReference<Object?>? get user => _$this._user;
  set user(DocumentReference<Object?>? user) => _$this._user = user;

  DateTime? _createdtime;
  DateTime? get createdtime => _$this._createdtime;
  set createdtime(DateTime? createdtime) => _$this._createdtime = createdtime;

  String? _bookSubjectArea;
  String? get bookSubjectArea => _$this._bookSubjectArea;
  set bookSubjectArea(String? bookSubjectArea) =>
      _$this._bookSubjectArea = bookSubjectArea;

  String? _bookCompletedDate;
  String? get bookCompletedDate => _$this._bookCompletedDate;
  set bookCompletedDate(String? bookCompletedDate) =>
      _$this._bookCompletedDate = bookCompletedDate;

  DateTime? _bookUpdateTime;
  DateTime? get bookUpdateTime => _$this._bookUpdateTime;
  set bookUpdateTime(DateTime? bookUpdateTime) =>
      _$this._bookUpdateTime = bookUpdateTime;

  String? _bookLearning;
  String? get bookLearning => _$this._bookLearning;
  set bookLearning(String? bookLearning) => _$this._bookLearning = bookLearning;

  String? _bookSummary;
  String? get bookSummary => _$this._bookSummary;
  set bookSummary(String? bookSummary) => _$this._bookSummary = bookSummary;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  BooksRecordBuilder() {
    BooksRecord._initializeBuilder(this);
  }

  BooksRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bookTitle = $v.bookTitle;
      _user = $v.user;
      _createdtime = $v.createdtime;
      _bookSubjectArea = $v.bookSubjectArea;
      _bookCompletedDate = $v.bookCompletedDate;
      _bookUpdateTime = $v.bookUpdateTime;
      _bookLearning = $v.bookLearning;
      _bookSummary = $v.bookSummary;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BooksRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BooksRecord;
  }

  @override
  void update(void Function(BooksRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BooksRecord build() => _build();

  _$BooksRecord _build() {
    final _$result = _$v ??
        new _$BooksRecord._(
            bookTitle: bookTitle,
            user: user,
            createdtime: createdtime,
            bookSubjectArea: bookSubjectArea,
            bookCompletedDate: bookCompletedDate,
            bookUpdateTime: bookUpdateTime,
            bookLearning: bookLearning,
            bookSummary: bookSummary,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
