import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserOrderRecord extends FirestoreRecord {
  UserOrderRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "Qantity" field.
  int? _qantity;
  int get qantity => _qantity ?? 0;
  bool hasQantity() => _qantity != null;

  // "Final_Price" field.
  double? _finalPrice;
  double get finalPrice => _finalPrice ?? 0.0;
  bool hasFinalPrice() => _finalPrice != null;

  // "Email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "product_id" field.
  String? _productId;
  String get productId => _productId ?? '';
  bool hasProductId() => _productId != null;

  // "PhoneNumber" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "UserName" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "test" field.
  bool? _test;
  bool get test => _test ?? false;
  bool hasTest() => _test != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _qantity = castToType<int>(snapshotData['Qantity']);
    _finalPrice = castToType<double>(snapshotData['Final_Price']);
    _email = snapshotData['Email'] as String?;
    _productId = snapshotData['product_id'] as String?;
    _phoneNumber = snapshotData['PhoneNumber'] as String?;
    _userName = snapshotData['UserName'] as String?;
    _test = snapshotData['test'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('User_order');

  static Stream<UserOrderRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserOrderRecord.fromSnapshot(s));

  static Future<UserOrderRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserOrderRecord.fromSnapshot(s));

  static UserOrderRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserOrderRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserOrderRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserOrderRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserOrderRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserOrderRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserOrderRecordData({
  String? name,
  int? qantity,
  double? finalPrice,
  String? email,
  String? productId,
  String? phoneNumber,
  String? userName,
  bool? test,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'Qantity': qantity,
      'Final_Price': finalPrice,
      'Email': email,
      'product_id': productId,
      'PhoneNumber': phoneNumber,
      'UserName': userName,
      'test': test,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserOrderRecordDocumentEquality implements Equality<UserOrderRecord> {
  const UserOrderRecordDocumentEquality();

  @override
  bool equals(UserOrderRecord? e1, UserOrderRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.qantity == e2?.qantity &&
        e1?.finalPrice == e2?.finalPrice &&
        e1?.email == e2?.email &&
        e1?.productId == e2?.productId &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.userName == e2?.userName &&
        e1?.test == e2?.test;
  }

  @override
  int hash(UserOrderRecord? e) => const ListEquality().hash([
        e?.name,
        e?.qantity,
        e?.finalPrice,
        e?.email,
        e?.productId,
        e?.phoneNumber,
        e?.userName,
        e?.test
      ]);

  @override
  bool isValidKey(Object? o) => o is UserOrderRecord;
}
