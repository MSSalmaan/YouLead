import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'books_record.g.dart';

abstract class BooksRecord implements Built<BooksRecord, BooksRecordBuilder> {
  static Serializer<BooksRecord> get serializer => _$booksRecordSerializer;

  @BuiltValueField(wireName: 'BookTitle')
  String? get bookTitle;

  DocumentReference? get user;

  DateTime? get createdtime;

  @BuiltValueField(wireName: 'Book_Subject_area')
  String? get bookSubjectArea;

  @BuiltValueField(wireName: 'Book_completed_date')
  String? get bookCompletedDate;

  @BuiltValueField(wireName: 'BookUpdate_time')
  DateTime? get bookUpdateTime;

  @BuiltValueField(wireName: 'BookLearning')
  String? get bookLearning;

  @BuiltValueField(wireName: 'BookSummary')
  String? get bookSummary;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BooksRecordBuilder builder) => builder
    ..bookTitle = ''
    ..bookSubjectArea = ''
    ..bookCompletedDate = ''
    ..bookLearning = ''
    ..bookSummary = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Books');

  static Stream<BooksRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BooksRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BooksRecord._();
  factory BooksRecord([void Function(BooksRecordBuilder) updates]) =
      _$BooksRecord;

  static BooksRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBooksRecordData({
  String? bookTitle,
  DocumentReference? user,
  DateTime? createdtime,
  String? bookSubjectArea,
  String? bookCompletedDate,
  DateTime? bookUpdateTime,
  String? bookLearning,
  String? bookSummary,
}) {
  final firestoreData = serializers.toFirestore(
    BooksRecord.serializer,
    BooksRecord(
      (b) => b
        ..bookTitle = bookTitle
        ..user = user
        ..createdtime = createdtime
        ..bookSubjectArea = bookSubjectArea
        ..bookCompletedDate = bookCompletedDate
        ..bookUpdateTime = bookUpdateTime
        ..bookLearning = bookLearning
        ..bookSummary = bookSummary,
    ),
  );

  return firestoreData;
}
