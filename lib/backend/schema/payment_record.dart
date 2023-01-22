import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'payment_record.g.dart';

abstract class PaymentRecord
    implements Built<PaymentRecord, PaymentRecordBuilder> {
  static Serializer<PaymentRecord> get serializer => _$paymentRecordSerializer;

  String? get name;

  double? get amount;

  String? get status;

  @BuiltValueField(wireName: 'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: 'vendor_name')
  String? get vendorName;

  double? get tips;

  double? get total;

  double? get baseFare;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PaymentRecordBuilder builder) => builder
    ..name = ''
    ..amount = 0.0
    ..status = ''
    ..vendorName = ''
    ..tips = 0.0
    ..total = 0.0
    ..baseFare = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('payment');

  static Stream<PaymentRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PaymentRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PaymentRecord._();
  factory PaymentRecord([void Function(PaymentRecordBuilder) updates]) =
      _$PaymentRecord;

  static PaymentRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPaymentRecordData({
  String? name,
  double? amount,
  String? status,
  DateTime? createdAt,
  String? vendorName,
  double? tips,
  double? total,
  double? baseFare,
}) {
  final firestoreData = serializers.toFirestore(
    PaymentRecord.serializer,
    PaymentRecord(
      (p) => p
        ..name = name
        ..amount = amount
        ..status = status
        ..createdAt = createdAt
        ..vendorName = vendorName
        ..tips = tips
        ..total = total
        ..baseFare = baseFare,
    ),
  );

  return firestoreData;
}
