import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserCartRecord extends FirestoreRecord {
  UserCartRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "Price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "User" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

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

  // "Product_id" field.
  String? _productId;
  String get productId => _productId ?? '';
  bool hasProductId() => _productId != null;

  // "color" field.
  String? _color;
  String get color => _color ?? '';
  bool hasColor() => _color != null;

  // "size" field.
  String? _size;
  String get size => _size ?? '';
  bool hasSize() => _size != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _image = snapshotData['image'] as String?;
    _price = castToType<double>(snapshotData['Price']);
    _user = snapshotData['User'] as DocumentReference?;
    _qantity = castToType<int>(snapshotData['Qantity']);
    _finalPrice = castToType<double>(snapshotData['Final_Price']);
    _email = snapshotData['Email'] as String?;
    _productId = snapshotData['Product_id'] as String?;
    _color = snapshotData['color'] as String?;
    _size = snapshotData['size'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user_cart');

  static Stream<UserCartRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserCartRecord.fromSnapshot(s));

  static Future<UserCartRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserCartRecord.fromSnapshot(s));

  static UserCartRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserCartRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserCartRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserCartRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserCartRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserCartRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserCartRecordData({
  String? name,
  String? description,
  String? image,
  double? price,
  DocumentReference? user,
  int? qantity,
  double? finalPrice,
  String? email,
  String? productId,
  String? color,
  String? size,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'image': image,
      'Price': price,
      'User': user,
      'Qantity': qantity,
      'Final_Price': finalPrice,
      'Email': email,
      'Product_id': productId,
      'color': color,
      'size': size,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserCartRecordDocumentEquality implements Equality<UserCartRecord> {
  const UserCartRecordDocumentEquality();

  @override
  bool equals(UserCartRecord? e1, UserCartRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.image == e2?.image &&
        e1?.price == e2?.price &&
        e1?.user == e2?.user &&
        e1?.qantity == e2?.qantity &&
        e1?.finalPrice == e2?.finalPrice &&
        e1?.email == e2?.email &&
        e1?.productId == e2?.productId &&
        e1?.color == e2?.color &&
        e1?.size == e2?.size;
  }

  @override
  int hash(UserCartRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.image,
        e?.price,
        e?.user,
        e?.qantity,
        e?.finalPrice,
        e?.email,
        e?.productId,
        e?.color,
        e?.size
      ]);

  @override
  bool isValidKey(Object? o) => o is UserCartRecord;
}
