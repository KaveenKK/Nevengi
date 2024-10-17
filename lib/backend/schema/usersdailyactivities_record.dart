import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersdailyactivitiesRecord extends FirestoreRecord {
  UsersdailyactivitiesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "activity" field.
  String? _activity;
  String get activity => _activity ?? '';
  bool hasActivity() => _activity != null;

  // "activitytimeframe" field.
  String? _activitytimeframe;
  String get activitytimeframe => _activitytimeframe ?? '';
  bool hasActivitytimeframe() => _activitytimeframe != null;

  // "notificationsenttime" field.
  DateTime? _notificationsenttime;
  DateTime? get notificationsenttime => _notificationsenttime;
  bool hasNotificationsenttime() => _notificationsenttime != null;

  // "sleeptime" field.
  DateTime? _sleeptime;
  DateTime? get sleeptime => _sleeptime;
  bool hasSleeptime() => _sleeptime != null;

  // "wakeuptime" field.
  DateTime? _wakeuptime;
  DateTime? get wakeuptime => _wakeuptime;
  bool hasWakeuptime() => _wakeuptime != null;

  // "mood" field.
  String? _mood;
  String get mood => _mood ?? '';
  bool hasMood() => _mood != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  void _initializeFields() {
    _activity = snapshotData['activity'] as String?;
    _activitytimeframe = snapshotData['activitytimeframe'] as String?;
    _notificationsenttime = snapshotData['notificationsenttime'] as DateTime?;
    _sleeptime = snapshotData['sleeptime'] as DateTime?;
    _wakeuptime = snapshotData['wakeuptime'] as DateTime?;
    _mood = snapshotData['mood'] as String?;
    _email = snapshotData['email'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('usersdailyactivities');

  static Stream<UsersdailyactivitiesRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => UsersdailyactivitiesRecord.fromSnapshot(s));

  static Future<UsersdailyactivitiesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => UsersdailyactivitiesRecord.fromSnapshot(s));

  static UsersdailyactivitiesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UsersdailyactivitiesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersdailyactivitiesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersdailyactivitiesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersdailyactivitiesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersdailyactivitiesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersdailyactivitiesRecordData({
  String? activity,
  String? activitytimeframe,
  DateTime? notificationsenttime,
  DateTime? sleeptime,
  DateTime? wakeuptime,
  String? mood,
  String? email,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'activity': activity,
      'activitytimeframe': activitytimeframe,
      'notificationsenttime': notificationsenttime,
      'sleeptime': sleeptime,
      'wakeuptime': wakeuptime,
      'mood': mood,
      'email': email,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersdailyactivitiesRecordDocumentEquality
    implements Equality<UsersdailyactivitiesRecord> {
  const UsersdailyactivitiesRecordDocumentEquality();

  @override
  bool equals(UsersdailyactivitiesRecord? e1, UsersdailyactivitiesRecord? e2) {
    return e1?.activity == e2?.activity &&
        e1?.activitytimeframe == e2?.activitytimeframe &&
        e1?.notificationsenttime == e2?.notificationsenttime &&
        e1?.sleeptime == e2?.sleeptime &&
        e1?.wakeuptime == e2?.wakeuptime &&
        e1?.mood == e2?.mood &&
        e1?.email == e2?.email;
  }

  @override
  int hash(UsersdailyactivitiesRecord? e) => const ListEquality().hash([
        e?.activity,
        e?.activitytimeframe,
        e?.notificationsenttime,
        e?.sleeptime,
        e?.wakeuptime,
        e?.mood,
        e?.email
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersdailyactivitiesRecord;
}
