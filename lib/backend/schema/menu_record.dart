import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MenuRecord extends FirestoreRecord {
  MenuRecord._(
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

  // "Proudct_ID" field.
  String? _proudctID;
  String get proudctID => _proudctID ?? '';
  bool hasProudctID() => _proudctID != null;

  // "size" field.
  String? _size;
  String get size => _size ?? '';
  bool hasSize() => _size != null;

  // "color" field.
  String? _color;
  String get color => _color ?? '';
  bool hasColor() => _color != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _image = snapshotData['image'] as String?;
    _price = castToType<double>(snapshotData['Price']);
    _proudctID = snapshotData['Proudct_ID'] as String?;
    _size = snapshotData['size'] as String?;
    _color = snapshotData['color'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('menu');

  static Stream<MenuRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MenuRecord.fromSnapshot(s));

  static Future<MenuRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MenuRecord.fromSnapshot(s));

  static MenuRecord fromSnapshot(DocumentSnapshot snapshot) => MenuRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MenuRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MenuRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MenuRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MenuRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMenuRecordData({
  String? name,
  String? description,
  String? image,
  double? price,
  String? proudctID,
  String? size,
  String? color,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'image': image,
      'Price': price,
      'Proudct_ID': proudctID,
      'size': size,
      'color': color,
    }.withoutNulls,
  );

  return firestoreData;
}

class MenuRecordDocumentEquality implements Equality<MenuRecord> {
  const MenuRecordDocumentEquality();

  @override
  bool equals(MenuRecord? e1, MenuRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.image == e2?.image &&
        e1?.price == e2?.price &&
        e1?.proudctID == e2?.proudctID &&
        e1?.size == e2?.size &&
        e1?.color == e2?.color;
  }

  @override
  int hash(MenuRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.image,
        e?.price,
        e?.proudctID,
        e?.size,
        e?.color
      ]);

  @override
  bool isValidKey(Object? o) => o is MenuRecord;
}
