import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'learning_post_record.g.dart';

abstract class LearningPostRecord
    implements Built<LearningPostRecord, LearningPostRecordBuilder> {
  static Serializer<LearningPostRecord> get serializer =>
      _$learningPostRecordSerializer;

  @BuiltValueField(wireName: 'Title')
  String? get title;

  @BuiltValueField(wireName: 'Author')
  String? get author;

  @BuiltValueField(wireName: 'Description')
  String? get description;

  @BuiltValueField(wireName: 'VideoLink')
  String? get videoLink;

  bool? get isVideo;

  int? get isDay;

  @BuiltValueField(wireName: 'Image')
  String? get image;

  @BuiltValueField(wireName: 'MiniDescription')
  String? get miniDescription;

  bool? get isImage;

  @BuiltValueField(wireName: 'UserSaved')
  bool? get userSaved;

  DocumentReference? get user;

  BuiltList<DocumentReference>? get userlist;

  @BuiltValueField(wireName: 'Imagestring')
  String? get imagestring;

  @BuiltValueField(wireName: 'Postdate')
  DateTime? get postdate;

  @BuiltValueField(wireName: 'post_url')
  String? get postUrl;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(LearningPostRecordBuilder builder) => builder
    ..title = ''
    ..author = ''
    ..description = ''
    ..videoLink = ''
    ..isVideo = false
    ..isDay = 0
    ..image = ''
    ..miniDescription = ''
    ..isImage = false
    ..userSaved = false
    ..userlist = ListBuilder()
    ..imagestring = ''
    ..postUrl = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('LearningPost');

  static Stream<LearningPostRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<LearningPostRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  LearningPostRecord._();
  factory LearningPostRecord(
          [void Function(LearningPostRecordBuilder) updates]) =
      _$LearningPostRecord;

  static LearningPostRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createLearningPostRecordData({
  String? title,
  String? author,
  String? description,
  String? videoLink,
  bool? isVideo,
  int? isDay,
  String? image,
  String? miniDescription,
  bool? isImage,
  bool? userSaved,
  DocumentReference? user,
  String? imagestring,
  DateTime? postdate,
  String? postUrl,
}) {
  final firestoreData = serializers.toFirestore(
    LearningPostRecord.serializer,
    LearningPostRecord(
      (l) => l
        ..title = title
        ..author = author
        ..description = description
        ..videoLink = videoLink
        ..isVideo = isVideo
        ..isDay = isDay
        ..image = image
        ..miniDescription = miniDescription
        ..isImage = isImage
        ..userSaved = userSaved
        ..user = user
        ..userlist = null
        ..imagestring = imagestring
        ..postdate = postdate
        ..postUrl = postUrl,
    ),
  );

  return firestoreData;
}
