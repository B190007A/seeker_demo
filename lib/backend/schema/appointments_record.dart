import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'appointments_record.g.dart';

abstract class AppointmentsRecord
    implements Built<AppointmentsRecord, AppointmentsRecordBuilder> {
  static Serializer<AppointmentsRecord> get serializer =>
      _$appointmentsRecordSerializer;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  LatLng? get pickupLocation;

  LatLng? get dropoffLocation;

  String? get appointmentID;

  String? get carPlate;

  String? get carBrand;

  String? get carModel;

  String? get carCondition;

  int? get custRating;

  String? get custComment;

  DateTime? get selectDate;

  DateTime? get selectTime;

  String? get pickupAddress;

  String? get dropoffAddress;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AppointmentsRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..phoneNumber = ''
    ..appointmentID = ''
    ..carPlate = ''
    ..carBrand = ''
    ..carModel = ''
    ..carCondition = ''
    ..custRating = 0
    ..custComment = ''
    ..pickupAddress = ''
    ..dropoffAddress = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('appointments');

  static Stream<AppointmentsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AppointmentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AppointmentsRecord._();
  factory AppointmentsRecord(
          [void Function(AppointmentsRecordBuilder) updates]) =
      _$AppointmentsRecord;

  static AppointmentsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAppointmentsRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  DateTime? createdTime,
  String? phoneNumber,
  LatLng? pickupLocation,
  LatLng? dropoffLocation,
  String? appointmentID,
  String? carPlate,
  String? carBrand,
  String? carModel,
  String? carCondition,
  int? custRating,
  String? custComment,
  DateTime? selectDate,
  DateTime? selectTime,
  String? pickupAddress,
  String? dropoffAddress,
}) {
  final firestoreData = serializers.toFirestore(
    AppointmentsRecord.serializer,
    AppointmentsRecord(
      (a) => a
        ..email = email
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber
        ..pickupLocation = pickupLocation
        ..dropoffLocation = dropoffLocation
        ..appointmentID = appointmentID
        ..carPlate = carPlate
        ..carBrand = carBrand
        ..carModel = carModel
        ..carCondition = carCondition
        ..custRating = custRating
        ..custComment = custComment
        ..selectDate = selectDate
        ..selectTime = selectTime
        ..pickupAddress = pickupAddress
        ..dropoffAddress = dropoffAddress,
    ),
  );

  return firestoreData;
}
