// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ProductsStruct extends FFFirebaseStruct {
  ProductsStruct({
    String? title,
    String? subtitle,
    double? price,
    String? image,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _title = title,
        _subtitle = subtitle,
        _price = price,
        _image = image,
        super(firestoreUtilData);

  // "Title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "subtitle" field.
  String? _subtitle;
  String get subtitle => _subtitle ?? '';
  set subtitle(String? val) => _subtitle = val;

  bool hasSubtitle() => _subtitle != null;

  // "Price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;

  void incrementPrice(double amount) => price = price + amount;

  bool hasPrice() => _price != null;

  // "Image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  static ProductsStruct fromMap(Map<String, dynamic> data) => ProductsStruct(
        title: data['Title'] as String?,
        subtitle: data['subtitle'] as String?,
        price: castToType<double>(data['Price']),
        image: data['Image'] as String?,
      );

  static ProductsStruct? maybeFromMap(dynamic data) =>
      data is Map ? ProductsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Title': _title,
        'subtitle': _subtitle,
        'Price': _price,
        'Image': _image,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => toMap();
  static ProductsStruct fromSerializableMap(Map<String, dynamic> data) =>
      fromMap(data);

  @override
  String toString() => 'ProductsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductsStruct &&
        title == other.title &&
        subtitle == other.subtitle &&
        price == other.price &&
        image == other.image;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([title, subtitle, price, image]);
}

ProductsStruct createProductsStruct({
  String? title,
  String? subtitle,
  double? price,
  String? image,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProductsStruct(
      title: title,
      subtitle: subtitle,
      price: price,
      image: image,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProductsStruct? updateProductsStruct(
  ProductsStruct? products, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    products
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProductsStructData(
  Map<String, dynamic> firestoreData,
  ProductsStruct? products,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (products == null) {
    return;
  }
  if (products.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && products.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final productsData = getProductsFirestoreData(products, forFieldValue);
  final nestedData = productsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = products.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProductsFirestoreData(
  ProductsStruct? products, [
  bool forFieldValue = false,
]) {
  if (products == null) {
    return {};
  }
  final firestoreData = mapToFirestore(products.toMap());

  // Add any Firestore field values
  products.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProductsListFirestoreData(
  List<ProductsStruct>? productss,
) =>
    productss?.map((e) => getProductsFirestoreData(e, true)).toList() ?? [];
