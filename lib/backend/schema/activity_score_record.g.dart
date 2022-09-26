// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_score_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ActivityScoreRecord> _$activityScoreRecordSerializer =
    new _$ActivityScoreRecordSerializer();

class _$ActivityScoreRecordSerializer
    implements StructuredSerializer<ActivityScoreRecord> {
  @override
  final Iterable<Type> types = const [
    ActivityScoreRecord,
    _$ActivityScoreRecord
  ];
  @override
  final String wireName = 'ActivityScoreRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ActivityScoreRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.achievementScore;
    if (value != null) {
      result
        ..add('AchievementScore')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.bookScore;
    if (value != null) {
      result
        ..add('BookScore')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.tLScore;
    if (value != null) {
      result
        ..add('TL_Score')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.learningScore;
    if (value != null) {
      result
        ..add('LearningScore')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.totalScore;
    if (value != null) {
      result
        ..add('TotalScore')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.usr;
    if (value != null) {
      result
        ..add('usr')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.accountabilityScore;
    if (value != null) {
      result
        ..add('Accountability_Score')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.hiringScore;
    if (value != null) {
      result
        ..add('Hiring_Score')
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
  ActivityScoreRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ActivityScoreRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'AchievementScore':
          result.achievementScore = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'BookScore':
          result.bookScore = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'TL_Score':
          result.tLScore = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'LearningScore':
          result.learningScore = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'TotalScore':
          result.totalScore = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'usr':
          result.usr.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'Accountability_Score':
          result.accountabilityScore = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Hiring_Score':
          result.hiringScore = serializers.deserialize(value,
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

class _$ActivityScoreRecord extends ActivityScoreRecord {
  @override
  final DocumentReference<Object?>? user;
  @override
  final int? achievementScore;
  @override
  final int? bookScore;
  @override
  final int? tLScore;
  @override
  final int? learningScore;
  @override
  final int? totalScore;
  @override
  final BuiltList<DocumentReference<Object?>>? usr;
  @override
  final int? accountabilityScore;
  @override
  final int? hiringScore;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ActivityScoreRecord(
          [void Function(ActivityScoreRecordBuilder)? updates]) =>
      (new ActivityScoreRecordBuilder()..update(updates))._build();

  _$ActivityScoreRecord._(
      {this.user,
      this.achievementScore,
      this.bookScore,
      this.tLScore,
      this.learningScore,
      this.totalScore,
      this.usr,
      this.accountabilityScore,
      this.hiringScore,
      this.ffRef})
      : super._();

  @override
  ActivityScoreRecord rebuild(
          void Function(ActivityScoreRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActivityScoreRecordBuilder toBuilder() =>
      new ActivityScoreRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActivityScoreRecord &&
        user == other.user &&
        achievementScore == other.achievementScore &&
        bookScore == other.bookScore &&
        tLScore == other.tLScore &&
        learningScore == other.learningScore &&
        totalScore == other.totalScore &&
        usr == other.usr &&
        accountabilityScore == other.accountabilityScore &&
        hiringScore == other.hiringScore &&
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
                                $jc(
                                    $jc($jc(0, user.hashCode),
                                        achievementScore.hashCode),
                                    bookScore.hashCode),
                                tLScore.hashCode),
                            learningScore.hashCode),
                        totalScore.hashCode),
                    usr.hashCode),
                accountabilityScore.hashCode),
            hiringScore.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ActivityScoreRecord')
          ..add('user', user)
          ..add('achievementScore', achievementScore)
          ..add('bookScore', bookScore)
          ..add('tLScore', tLScore)
          ..add('learningScore', learningScore)
          ..add('totalScore', totalScore)
          ..add('usr', usr)
          ..add('accountabilityScore', accountabilityScore)
          ..add('hiringScore', hiringScore)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ActivityScoreRecordBuilder
    implements Builder<ActivityScoreRecord, ActivityScoreRecordBuilder> {
  _$ActivityScoreRecord? _$v;

  DocumentReference<Object?>? _user;
  DocumentReference<Object?>? get user => _$this._user;
  set user(DocumentReference<Object?>? user) => _$this._user = user;

  int? _achievementScore;
  int? get achievementScore => _$this._achievementScore;
  set achievementScore(int? achievementScore) =>
      _$this._achievementScore = achievementScore;

  int? _bookScore;
  int? get bookScore => _$this._bookScore;
  set bookScore(int? bookScore) => _$this._bookScore = bookScore;

  int? _tLScore;
  int? get tLScore => _$this._tLScore;
  set tLScore(int? tLScore) => _$this._tLScore = tLScore;

  int? _learningScore;
  int? get learningScore => _$this._learningScore;
  set learningScore(int? learningScore) =>
      _$this._learningScore = learningScore;

  int? _totalScore;
  int? get totalScore => _$this._totalScore;
  set totalScore(int? totalScore) => _$this._totalScore = totalScore;

  ListBuilder<DocumentReference<Object?>>? _usr;
  ListBuilder<DocumentReference<Object?>> get usr =>
      _$this._usr ??= new ListBuilder<DocumentReference<Object?>>();
  set usr(ListBuilder<DocumentReference<Object?>>? usr) => _$this._usr = usr;

  int? _accountabilityScore;
  int? get accountabilityScore => _$this._accountabilityScore;
  set accountabilityScore(int? accountabilityScore) =>
      _$this._accountabilityScore = accountabilityScore;

  int? _hiringScore;
  int? get hiringScore => _$this._hiringScore;
  set hiringScore(int? hiringScore) => _$this._hiringScore = hiringScore;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ActivityScoreRecordBuilder() {
    ActivityScoreRecord._initializeBuilder(this);
  }

  ActivityScoreRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user;
      _achievementScore = $v.achievementScore;
      _bookScore = $v.bookScore;
      _tLScore = $v.tLScore;
      _learningScore = $v.learningScore;
      _totalScore = $v.totalScore;
      _usr = $v.usr?.toBuilder();
      _accountabilityScore = $v.accountabilityScore;
      _hiringScore = $v.hiringScore;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ActivityScoreRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ActivityScoreRecord;
  }

  @override
  void update(void Function(ActivityScoreRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ActivityScoreRecord build() => _build();

  _$ActivityScoreRecord _build() {
    _$ActivityScoreRecord _$result;
    try {
      _$result = _$v ??
          new _$ActivityScoreRecord._(
              user: user,
              achievementScore: achievementScore,
              bookScore: bookScore,
              tLScore: tLScore,
              learningScore: learningScore,
              totalScore: totalScore,
              usr: _usr?.build(),
              accountabilityScore: accountabilityScore,
              hiringScore: hiringScore,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'usr';
        _usr?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ActivityScoreRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
