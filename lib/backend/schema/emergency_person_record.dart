import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'emergency_person_record.g.dart';

abstract class EmergencyPersonRecord
    implements Built<EmergencyPersonRecord, EmergencyPersonRecordBuilder> {
  static Serializer<EmergencyPersonRecord> get serializer =>
      _$emergencyPersonRecordSerializer;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  String? get gender;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EmergencyPersonRecordBuilder builder) =>
      builder
        ..email = ''
        ..displayName = ''
        ..photoUrl = ''
        ..phoneNumber = ''
        ..gender = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('emergencyPerson');

  static Stream<EmergencyPersonRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EmergencyPersonRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EmergencyPersonRecord._();
  factory EmergencyPersonRecord(
          [void Function(EmergencyPersonRecordBuilder) updates]) =
      _$EmergencyPersonRecord;

  static EmergencyPersonRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEmergencyPersonRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? phoneNumber,
  String? gender,
}) {
  final firestoreData = serializers.toFirestore(
    EmergencyPersonRecord.serializer,
    EmergencyPersonRecord(
      (e) => e
        ..email = email
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..phoneNumber = phoneNumber
        ..gender = gender,
    ),
  );

  return firestoreData;
}
