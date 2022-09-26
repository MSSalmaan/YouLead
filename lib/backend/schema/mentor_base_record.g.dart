// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mentor_base_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MentorBaseRecord> _$mentorBaseRecordSerializer =
    new _$MentorBaseRecordSerializer();

class _$MentorBaseRecordSerializer
    implements StructuredSerializer<MentorBaseRecord> {
  @override
  final Iterable<Type> types = const [MentorBaseRecord, _$MentorBaseRecord];
  @override
  final String wireName = 'MentorBaseRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MentorBaseRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('Name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mentorImage;
    if (value != null) {
      result
        ..add('MentorImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gradCollegeName;
    if (value != null) {
      result
        ..add('GradCollegeName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.postGradCollege;
    if (value != null) {
      result
        ..add('PostGradCollege')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.presentJobCompany;
    if (value != null) {
      result
        ..add('PresentJobCompany')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.presntJobTitle;
    if (value != null) {
      result
        ..add('PresntJobTitle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.linkedinLink;
    if (value != null) {
      result
        ..add('LinkedinLink')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.presentLocation;
    if (value != null) {
      result
        ..add('PresentLocation')
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
  MentorBaseRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MentorBaseRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'MentorImage':
          result.mentorImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'GradCollegeName':
          result.gradCollegeName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'PostGradCollege':
          result.postGradCollege = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'PresentJobCompany':
          result.presentJobCompany = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'PresntJobTitle':
          result.presntJobTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'LinkedinLink':
          result.linkedinLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'PresentLocation':
          result.presentLocation = serializers.deserialize(value,
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

class _$MentorBaseRecord extends MentorBaseRecord {
  @override
  final String? name;
  @override
  final String? mentorImage;
  @override
  final String? gradCollegeName;
  @override
  final String? postGradCollege;
  @override
  final String? presentJobCompany;
  @override
  final String? presntJobTitle;
  @override
  final String? linkedinLink;
  @override
  final String? presentLocation;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MentorBaseRecord(
          [void Function(MentorBaseRecordBuilder)? updates]) =>
      (new MentorBaseRecordBuilder()..update(updates))._build();

  _$MentorBaseRecord._(
      {this.name,
      this.mentorImage,
      this.gradCollegeName,
      this.postGradCollege,
      this.presentJobCompany,
      this.presntJobTitle,
      this.linkedinLink,
      this.presentLocation,
      this.ffRef})
      : super._();

  @override
  MentorBaseRecord rebuild(void Function(MentorBaseRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MentorBaseRecordBuilder toBuilder() =>
      new MentorBaseRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MentorBaseRecord &&
        name == other.name &&
        mentorImage == other.mentorImage &&
        gradCollegeName == other.gradCollegeName &&
        postGradCollege == other.postGradCollege &&
        presentJobCompany == other.presentJobCompany &&
        presntJobTitle == other.presntJobTitle &&
        linkedinLink == other.linkedinLink &&
        presentLocation == other.presentLocation &&
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
                                $jc($jc(0, name.hashCode),
                                    mentorImage.hashCode),
                                gradCollegeName.hashCode),
                            postGradCollege.hashCode),
                        presentJobCompany.hashCode),
                    presntJobTitle.hashCode),
                linkedinLink.hashCode),
            presentLocation.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MentorBaseRecord')
          ..add('name', name)
          ..add('mentorImage', mentorImage)
          ..add('gradCollegeName', gradCollegeName)
          ..add('postGradCollege', postGradCollege)
          ..add('presentJobCompany', presentJobCompany)
          ..add('presntJobTitle', presntJobTitle)
          ..add('linkedinLink', linkedinLink)
          ..add('presentLocation', presentLocation)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MentorBaseRecordBuilder
    implements Builder<MentorBaseRecord, MentorBaseRecordBuilder> {
  _$MentorBaseRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _mentorImage;
  String? get mentorImage => _$this._mentorImage;
  set mentorImage(String? mentorImage) => _$this._mentorImage = mentorImage;

  String? _gradCollegeName;
  String? get gradCollegeName => _$this._gradCollegeName;
  set gradCollegeName(String? gradCollegeName) =>
      _$this._gradCollegeName = gradCollegeName;

  String? _postGradCollege;
  String? get postGradCollege => _$this._postGradCollege;
  set postGradCollege(String? postGradCollege) =>
      _$this._postGradCollege = postGradCollege;

  String? _presentJobCompany;
  String? get presentJobCompany => _$this._presentJobCompany;
  set presentJobCompany(String? presentJobCompany) =>
      _$this._presentJobCompany = presentJobCompany;

  String? _presntJobTitle;
  String? get presntJobTitle => _$this._presntJobTitle;
  set presntJobTitle(String? presntJobTitle) =>
      _$this._presntJobTitle = presntJobTitle;

  String? _linkedinLink;
  String? get linkedinLink => _$this._linkedinLink;
  set linkedinLink(String? linkedinLink) => _$this._linkedinLink = linkedinLink;

  String? _presentLocation;
  String? get presentLocation => _$this._presentLocation;
  set presentLocation(String? presentLocation) =>
      _$this._presentLocation = presentLocation;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MentorBaseRecordBuilder() {
    MentorBaseRecord._initializeBuilder(this);
  }

  MentorBaseRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _mentorImage = $v.mentorImage;
      _gradCollegeName = $v.gradCollegeName;
      _postGradCollege = $v.postGradCollege;
      _presentJobCompany = $v.presentJobCompany;
      _presntJobTitle = $v.presntJobTitle;
      _linkedinLink = $v.linkedinLink;
      _presentLocation = $v.presentLocation;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MentorBaseRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MentorBaseRecord;
  }

  @override
  void update(void Function(MentorBaseRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MentorBaseRecord build() => _build();

  _$MentorBaseRecord _build() {
    final _$result = _$v ??
        new _$MentorBaseRecord._(
            name: name,
            mentorImage: mentorImage,
            gradCollegeName: gradCollegeName,
            postGradCollege: postGradCollege,
            presentJobCompany: presentJobCompany,
            presntJobTitle: presntJobTitle,
            linkedinLink: linkedinLink,
            presentLocation: presentLocation,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
