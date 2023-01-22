import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'driver_record.g.dart';

abstract class DriverRecord
    implements Built<DriverRecord, DriverRecordBuilder> {
  static Serializer<DriverRecord> get serializer => _$driverRecordSerializer;

  @BuiltValueField(wireName: 'driver_name')
  String? get driverName;

  @BuiltValueField(wireName: 'driver_photo_url')
  String? get driverPhotoUrl;

  @BuiltValueField(wireName: 'driver_uid')
  String? get driverUid;

  @BuiltValueField(wireName: 'driver_created_time')
  DateTime? get driverCreatedTime;

  @BuiltValueField(wireName: 'driver_phone_number')
  String? get driverPhoneNumber;

  @BuiltValueField(wireName: 'driver_gender')
  String? get driverGender;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(DriverRecordBuilder builder) => builder
    ..driverName = ''
    ..driverPhotoUrl = ''
    ..driverUid = ''
    ..driverPhoneNumber = ''
    ..driverGender = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('driver');

  static Stream<DriverRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DriverRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DriverRecord._();
  factory DriverRecord([void Function(DriverRecordBuilder) updates]) =
      _$DriverRecord;

  static DriverRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDriverRecordData({
  String? driverName,
  String? driverPhotoUrl,
  String? driverUid,
  DateTime? driverCreatedTime,
  String? driverPhoneNumber,
  String? driverGender,
}) {
  final firestoreData = serializers.toFirestore(
    DriverRecord.serializer,
    DriverRecord(
      (d) => d
        ..driverName = driverName
        ..driverPhotoUrl = driverPhotoUrl
        ..driverUid = driverUid
        ..driverCreatedTime = driverCreatedTime
        ..driverPhoneNumber = driverPhoneNumber
        ..driverGender = driverGender,
    ),
  );

  return firestoreData;
}
