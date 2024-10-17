import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsertokensFCMRecord extends FirestoreRecord {
  UsertokensFCMRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "token" field.
  String? _token;
  String get token => _token ?? '';
  bool hasToken() => _token != null;

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "updatedAt" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  void _initializeFields() {
    _token = snapshotData['token'] as String?;
    _userId = snapshotData['userId'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
    _isActive = snapshotData['isActive'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('usertokensFCM');

  static Stream<UsertokensFCMRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsertokensFCMRecord.fromSnapshot(s));

  static Future<UsertokensFCMRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsertokensFCMRecord.fromSnapshot(s));

  static UsertokensFCMRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UsertokensFCMRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsertokensFCMRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsertokensFCMRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsertokensFCMRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsertokensFCMRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsertokensFCMRecordData({
  String? token,
  String? userId,
  DateTime? createdAt,
  DateTime? updatedAt,
  bool? isActive,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'token': token,
      'userId': userId,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'isActive': isActive,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsertokensFCMRecordDocumentEquality
    implements Equality<UsertokensFCMRecord> {
  const UsertokensFCMRecordDocumentEquality();

  @override
  bool equals(UsertokensFCMRecord? e1, UsertokensFCMRecord? e2) {
    return e1?.token == e2?.token &&
        e1?.userId == e2?.userId &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.isActive == e2?.isActive;
  }

  @override
  int hash(UsertokensFCMRecord? e) => const ListEquality()
      .hash([e?.token, e?.userId, e?.createdAt, e?.updatedAt, e?.isActive]);

  @override
  bool isValidKey(Object? o) => o is UsertokensFCMRecord;
}
