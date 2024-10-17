import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AppProblemPhotosRecord extends FirestoreRecord {
  AppProblemPhotosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('AppProblemPhotos');

  static Stream<AppProblemPhotosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AppProblemPhotosRecord.fromSnapshot(s));

  static Future<AppProblemPhotosRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => AppProblemPhotosRecord.fromSnapshot(s));

  static AppProblemPhotosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AppProblemPhotosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AppProblemPhotosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AppProblemPhotosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AppProblemPhotosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AppProblemPhotosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAppProblemPhotosRecordData({
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class AppProblemPhotosRecordDocumentEquality
    implements Equality<AppProblemPhotosRecord> {
  const AppProblemPhotosRecordDocumentEquality();

  @override
  bool equals(AppProblemPhotosRecord? e1, AppProblemPhotosRecord? e2) {
    return e1?.image == e2?.image;
  }

  @override
  int hash(AppProblemPhotosRecord? e) => const ListEquality().hash([e?.image]);

  @override
  bool isValidKey(Object? o) => o is AppProblemPhotosRecord;
}
