import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdminRequestsRecord extends FirestoreRecord {
  AdminRequestsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "status" field.
  RequestState? _status;
  RequestState? get status => _status;
  bool hasStatus() => _status != null;

  void _initializeFields() {
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _status = deserializeEnum<RequestState>(snapshotData['status']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('admin_requests');

  static Stream<AdminRequestsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AdminRequestsRecord.fromSnapshot(s));

  static Future<AdminRequestsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AdminRequestsRecord.fromSnapshot(s));

  static AdminRequestsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AdminRequestsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AdminRequestsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AdminRequestsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AdminRequestsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AdminRequestsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAdminRequestsRecordData({
  DocumentReference? userRef,
  RequestState? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_ref': userRef,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class AdminRequestsRecordDocumentEquality
    implements Equality<AdminRequestsRecord> {
  const AdminRequestsRecordDocumentEquality();

  @override
  bool equals(AdminRequestsRecord? e1, AdminRequestsRecord? e2) {
    return e1?.userRef == e2?.userRef && e1?.status == e2?.status;
  }

  @override
  int hash(AdminRequestsRecord? e) =>
      const ListEquality().hash([e?.userRef, e?.status]);

  @override
  bool isValidKey(Object? o) => o is AdminRequestsRecord;
}
