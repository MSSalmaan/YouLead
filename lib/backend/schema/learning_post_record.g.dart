// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'learning_post_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LearningPostRecord> _$learningPostRecordSerializer =
    new _$LearningPostRecordSerializer();

class _$LearningPostRecordSerializer
    implements StructuredSerializer<LearningPostRecord> {
  @override
  final Iterable<Type> types = const [LearningPostRecord, _$LearningPostRecord];
  @override
  final String wireName = 'LearningPostRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, LearningPostRecord object,
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
    value = object.author;
    if (value != null) {
      result
        ..add('Author')
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
    value = object.videoLink;
    if (value != null) {
      result
        ..add('VideoLink')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isVideo;
    if (value != null) {
      result
        ..add('isVideo')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isDay;
    if (value != null) {
      result
        ..add('isDay')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('Image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.miniDescription;
    if (value != null) {
      result
        ..add('MiniDescription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isImage;
    if (value != null) {
      result
        ..add('isImage')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.userSaved;
    if (value != null) {
      result
        ..add('UserSaved')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.userlist;
    if (value != null) {
      result
        ..add('userlist')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.imagestring;
    if (value != null) {
      result
        ..add('Imagestring')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.postdate;
    if (value != null) {
      result
        ..add('Postdate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.postUrl;
    if (value != null) {
      result
        ..add('post_url')
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
  LearningPostRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LearningPostRecordBuilder();

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
        case 'Author':
          result.author = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'VideoLink':
          result.videoLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isVideo':
          result.isVideo = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isDay':
          result.isDay = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'MiniDescription':
          result.miniDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isImage':
          result.isImage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'UserSaved':
          result.userSaved = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'userlist':
          result.userlist.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'Imagestring':
          result.imagestring = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Postdate':
          result.postdate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'post_url':
          result.postUrl = serializers.deserialize(value,
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

class _$LearningPostRecord extends LearningPostRecord {
  @override
  final String? title;
  @override
  final String? author;
  @override
  final String? description;
  @override
  final String? videoLink;
  @override
  final bool? isVideo;
  @override
  final int? isDay;
  @override
  final String? image;
  @override
  final String? miniDescription;
  @override
  final bool? isImage;
  @override
  final bool? userSaved;
  @override
  final DocumentReference<Object?>? user;
  @override
  final BuiltList<DocumentReference<Object?>>? userlist;
  @override
  final String? imagestring;
  @override
  final DateTime? postdate;
  @override
  final String? postUrl;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$LearningPostRecord(
          [void Function(LearningPostRecordBuilder)? updates]) =>
      (new LearningPostRecordBuilder()..update(updates))._build();

  _$LearningPostRecord._(
      {this.title,
      this.author,
      this.description,
      this.videoLink,
      this.isVideo,
      this.isDay,
      this.image,
      this.miniDescription,
      this.isImage,
      this.userSaved,
      this.user,
      this.userlist,
      this.imagestring,
      this.postdate,
      this.postUrl,
      this.ffRef})
      : super._();

  @override
  LearningPostRecord rebuild(
          void Function(LearningPostRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LearningPostRecordBuilder toBuilder() =>
      new LearningPostRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LearningPostRecord &&
        title == other.title &&
        author == other.author &&
        description == other.description &&
        videoLink == other.videoLink &&
        isVideo == other.isVideo &&
        isDay == other.isDay &&
        image == other.image &&
        miniDescription == other.miniDescription &&
        isImage == other.isImage &&
        userSaved == other.userSaved &&
        user == other.user &&
        userlist == other.userlist &&
        imagestring == other.imagestring &&
        postdate == other.postdate &&
        postUrl == other.postUrl &&
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
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    0,
                                                                    title
                                                                        .hashCode),
                                                                author
                                                                    .hashCode),
                                                            description
                                                                .hashCode),
                                                        videoLink.hashCode),
                                                    isVideo.hashCode),
                                                isDay.hashCode),
                                            image.hashCode),
                                        miniDescription.hashCode),
                                    isImage.hashCode),
                                userSaved.hashCode),
                            user.hashCode),
                        userlist.hashCode),
                    imagestring.hashCode),
                postdate.hashCode),
            postUrl.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LearningPostRecord')
          ..add('title', title)
          ..add('author', author)
          ..add('description', description)
          ..add('videoLink', videoLink)
          ..add('isVideo', isVideo)
          ..add('isDay', isDay)
          ..add('image', image)
          ..add('miniDescription', miniDescription)
          ..add('isImage', isImage)
          ..add('userSaved', userSaved)
          ..add('user', user)
          ..add('userlist', userlist)
          ..add('imagestring', imagestring)
          ..add('postdate', postdate)
          ..add('postUrl', postUrl)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class LearningPostRecordBuilder
    implements Builder<LearningPostRecord, LearningPostRecordBuilder> {
  _$LearningPostRecord? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _author;
  String? get author => _$this._author;
  set author(String? author) => _$this._author = author;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _videoLink;
  String? get videoLink => _$this._videoLink;
  set videoLink(String? videoLink) => _$this._videoLink = videoLink;

  bool? _isVideo;
  bool? get isVideo => _$this._isVideo;
  set isVideo(bool? isVideo) => _$this._isVideo = isVideo;

  int? _isDay;
  int? get isDay => _$this._isDay;
  set isDay(int? isDay) => _$this._isDay = isDay;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _miniDescription;
  String? get miniDescription => _$this._miniDescription;
  set miniDescription(String? miniDescription) =>
      _$this._miniDescription = miniDescription;

  bool? _isImage;
  bool? get isImage => _$this._isImage;
  set isImage(bool? isImage) => _$this._isImage = isImage;

  bool? _userSaved;
  bool? get userSaved => _$this._userSaved;
  set userSaved(bool? userSaved) => _$this._userSaved = userSaved;

  DocumentReference<Object?>? _user;
  DocumentReference<Object?>? get user => _$this._user;
  set user(DocumentReference<Object?>? user) => _$this._user = user;

  ListBuilder<DocumentReference<Object?>>? _userlist;
  ListBuilder<DocumentReference<Object?>> get userlist =>
      _$this._userlist ??= new ListBuilder<DocumentReference<Object?>>();
  set userlist(ListBuilder<DocumentReference<Object?>>? userlist) =>
      _$this._userlist = userlist;

  String? _imagestring;
  String? get imagestring => _$this._imagestring;
  set imagestring(String? imagestring) => _$this._imagestring = imagestring;

  DateTime? _postdate;
  DateTime? get postdate => _$this._postdate;
  set postdate(DateTime? postdate) => _$this._postdate = postdate;

  String? _postUrl;
  String? get postUrl => _$this._postUrl;
  set postUrl(String? postUrl) => _$this._postUrl = postUrl;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  LearningPostRecordBuilder() {
    LearningPostRecord._initializeBuilder(this);
  }

  LearningPostRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _author = $v.author;
      _description = $v.description;
      _videoLink = $v.videoLink;
      _isVideo = $v.isVideo;
      _isDay = $v.isDay;
      _image = $v.image;
      _miniDescription = $v.miniDescription;
      _isImage = $v.isImage;
      _userSaved = $v.userSaved;
      _user = $v.user;
      _userlist = $v.userlist?.toBuilder();
      _imagestring = $v.imagestring;
      _postdate = $v.postdate;
      _postUrl = $v.postUrl;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LearningPostRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LearningPostRecord;
  }

  @override
  void update(void Function(LearningPostRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LearningPostRecord build() => _build();

  _$LearningPostRecord _build() {
    _$LearningPostRecord _$result;
    try {
      _$result = _$v ??
          new _$LearningPostRecord._(
              title: title,
              author: author,
              description: description,
              videoLink: videoLink,
              isVideo: isVideo,
              isDay: isDay,
              image: image,
              miniDescription: miniDescription,
              isImage: isImage,
              userSaved: userSaved,
              user: user,
              userlist: _userlist?.build(),
              imagestring: imagestring,
              postdate: postdate,
              postUrl: postUrl,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userlist';
        _userlist?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LearningPostRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
