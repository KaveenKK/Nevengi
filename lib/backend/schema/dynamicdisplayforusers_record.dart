import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DynamicdisplayforusersRecord extends FirestoreRecord {
  DynamicdisplayforusersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "displaytext" field.
  String? _displaytext;
  String get displaytext => _displaytext ?? '';
  bool hasDisplaytext() => _displaytext != null;

  // "displaytexttitle" field.
  String? _displaytexttitle;
  String get displaytexttitle => _displaytexttitle ?? '';
  bool hasDisplaytexttitle() => _displaytexttitle != null;

  void _initializeFields() {
    _displaytext = snapshotData['displaytext'] as String?;
    _displaytexttitle = snapshotData['displaytexttitle'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('dynamicdisplayforusers');

  static Stream<DynamicdisplayforusersRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => DynamicdisplayforusersRecord.fromSnapshot(s));

  static Future<DynamicdisplayforusersRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => DynamicdisplayforusersRecord.fromSnapshot(s));

  static DynamicdisplayforusersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DynamicdisplayforusersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DynamicdisplayforusersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DynamicdisplayforusersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DynamicdisplayforusersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DynamicdisplayforusersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDynamicdisplayforusersRecordData({
  String? displaytext,
  String? displaytexttitle,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'displaytext': displaytext,
      'displaytexttitle': displaytexttitle,
    }.withoutNulls,
  );

  return firestoreData;
}

class DynamicdisplayforusersRecordDocumentEquality
    implements Equality<DynamicdisplayforusersRecord> {
  const DynamicdisplayforusersRecordDocumentEquality();

  @override
  bool equals(
      DynamicdisplayforusersRecord? e1, DynamicdisplayforusersRecord? e2) {
    return e1?.displaytext == e2?.displaytext &&
        e1?.displaytexttitle == e2?.displaytexttitle;
  }

  @override
  int hash(DynamicdisplayforusersRecord? e) =>
      const ListEquality().hash([e?.displaytext, e?.displaytexttitle]);

  @override
  bool isValidKey(Object? o) => o is DynamicdisplayforusersRecord;
}
