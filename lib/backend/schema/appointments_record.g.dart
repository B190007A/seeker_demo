// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointments_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppointmentsRecord> _$appointmentsRecordSerializer =
    new _$AppointmentsRecordSerializer();

class _$AppointmentsRecordSerializer
    implements StructuredSerializer<AppointmentsRecord> {
  @override
  final Iterable<Type> types = const [AppointmentsRecord, _$AppointmentsRecord];
  @override
  final String wireName = 'AppointmentsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, AppointmentsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pickupLocation;
    if (value != null) {
      result
        ..add('pickupLocation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.dropoffLocation;
    if (value != null) {
      result
        ..add('dropoffLocation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.appointmentID;
    if (value != null) {
      result
        ..add('appointmentID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.carPlate;
    if (value != null) {
      result
        ..add('carPlate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.carBrand;
    if (value != null) {
      result
        ..add('carBrand')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.carModel;
    if (value != null) {
      result
        ..add('carModel')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.carCondition;
    if (value != null) {
      result
        ..add('carCondition')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.custRating;
    if (value != null) {
      result
        ..add('custRating')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.custComment;
    if (value != null) {
      result
        ..add('custComment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.selectDate;
    if (value != null) {
      result
        ..add('selectDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.selectTime;
    if (value != null) {
      result
        ..add('selectTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.pickupAddress;
    if (value != null) {
      result
        ..add('pickupAddress')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dropoffAddress;
    if (value != null) {
      result
        ..add('dropoffAddress')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  AppointmentsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppointmentsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pickupLocation':
          result.pickupLocation = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'dropoffLocation':
          result.dropoffLocation = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'appointmentID':
          result.appointmentID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'carPlate':
          result.carPlate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'carBrand':
          result.carBrand = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'carModel':
          result.carModel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'carCondition':
          result.carCondition = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'custRating':
          result.custRating = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'custComment':
          result.custComment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'selectDate':
          result.selectDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'selectTime':
          result.selectTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'pickupAddress':
          result.pickupAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dropoffAddress':
          result.dropoffAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$AppointmentsRecord extends AppointmentsRecord {
  @override
  final String? email;
  @override
  final String? displayName;
  @override
  final String? photoUrl;
  @override
  final DateTime? createdTime;
  @override
  final String? phoneNumber;
  @override
  final LatLng? pickupLocation;
  @override
  final LatLng? dropoffLocation;
  @override
  final String? appointmentID;
  @override
  final String? carPlate;
  @override
  final String? carBrand;
  @override
  final String? carModel;
  @override
  final String? carCondition;
  @override
  final int? custRating;
  @override
  final String? custComment;
  @override
  final DateTime? selectDate;
  @override
  final DateTime? selectTime;
  @override
  final String? pickupAddress;
  @override
  final String? dropoffAddress;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AppointmentsRecord(
          [void Function(AppointmentsRecordBuilder)? updates]) =>
      (new AppointmentsRecordBuilder()..update(updates))._build();

  _$AppointmentsRecord._(
      {this.email,
      this.displayName,
      this.photoUrl,
      this.createdTime,
      this.phoneNumber,
      this.pickupLocation,
      this.dropoffLocation,
      this.appointmentID,
      this.carPlate,
      this.carBrand,
      this.carModel,
      this.carCondition,
      this.custRating,
      this.custComment,
      this.selectDate,
      this.selectTime,
      this.pickupAddress,
      this.dropoffAddress,
      this.ffRef})
      : super._();

  @override
  AppointmentsRecord rebuild(
          void Function(AppointmentsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppointmentsRecordBuilder toBuilder() =>
      new AppointmentsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppointmentsRecord &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        pickupLocation == other.pickupLocation &&
        dropoffLocation == other.dropoffLocation &&
        appointmentID == other.appointmentID &&
        carPlate == other.carPlate &&
        carBrand == other.carBrand &&
        carModel == other.carModel &&
        carCondition == other.carCondition &&
        custRating == other.custRating &&
        custComment == other.custComment &&
        selectDate == other.selectDate &&
        selectTime == other.selectTime &&
        pickupAddress == other.pickupAddress &&
        dropoffAddress == other.dropoffAddress &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc(
                                                                                0,
                                                                                email
                                                                                    .hashCode),
                                                                            displayName
                                                                                .hashCode),
                                                                        photoUrl
                                                                            .hashCode),
                                                                    createdTime
                                                                        .hashCode),
                                                                phoneNumber
                                                                    .hashCode),
                                                            pickupLocation
                                                                .hashCode),
                                                        dropoffLocation
                                                            .hashCode),
                                                    appointmentID.hashCode),
                                                carPlate.hashCode),
                                            carBrand.hashCode),
                                        carModel.hashCode),
                                    carCondition.hashCode),
                                custRating.hashCode),
                            custComment.hashCode),
                        selectDate.hashCode),
                    selectTime.hashCode),
                pickupAddress.hashCode),
            dropoffAddress.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AppointmentsRecord')
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('pickupLocation', pickupLocation)
          ..add('dropoffLocation', dropoffLocation)
          ..add('appointmentID', appointmentID)
          ..add('carPlate', carPlate)
          ..add('carBrand', carBrand)
          ..add('carModel', carModel)
          ..add('carCondition', carCondition)
          ..add('custRating', custRating)
          ..add('custComment', custComment)
          ..add('selectDate', selectDate)
          ..add('selectTime', selectTime)
          ..add('pickupAddress', pickupAddress)
          ..add('dropoffAddress', dropoffAddress)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AppointmentsRecordBuilder
    implements Builder<AppointmentsRecord, AppointmentsRecordBuilder> {
  _$AppointmentsRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  LatLng? _pickupLocation;
  LatLng? get pickupLocation => _$this._pickupLocation;
  set pickupLocation(LatLng? pickupLocation) =>
      _$this._pickupLocation = pickupLocation;

  LatLng? _dropoffLocation;
  LatLng? get dropoffLocation => _$this._dropoffLocation;
  set dropoffLocation(LatLng? dropoffLocation) =>
      _$this._dropoffLocation = dropoffLocation;

  String? _appointmentID;
  String? get appointmentID => _$this._appointmentID;
  set appointmentID(String? appointmentID) =>
      _$this._appointmentID = appointmentID;

  String? _carPlate;
  String? get carPlate => _$this._carPlate;
  set carPlate(String? carPlate) => _$this._carPlate = carPlate;

  String? _carBrand;
  String? get carBrand => _$this._carBrand;
  set carBrand(String? carBrand) => _$this._carBrand = carBrand;

  String? _carModel;
  String? get carModel => _$this._carModel;
  set carModel(String? carModel) => _$this._carModel = carModel;

  String? _carCondition;
  String? get carCondition => _$this._carCondition;
  set carCondition(String? carCondition) => _$this._carCondition = carCondition;

  int? _custRating;
  int? get custRating => _$this._custRating;
  set custRating(int? custRating) => _$this._custRating = custRating;

  String? _custComment;
  String? get custComment => _$this._custComment;
  set custComment(String? custComment) => _$this._custComment = custComment;

  DateTime? _selectDate;
  DateTime? get selectDate => _$this._selectDate;
  set selectDate(DateTime? selectDate) => _$this._selectDate = selectDate;

  DateTime? _selectTime;
  DateTime? get selectTime => _$this._selectTime;
  set selectTime(DateTime? selectTime) => _$this._selectTime = selectTime;

  String? _pickupAddress;
  String? get pickupAddress => _$this._pickupAddress;
  set pickupAddress(String? pickupAddress) =>
      _$this._pickupAddress = pickupAddress;

  String? _dropoffAddress;
  String? get dropoffAddress => _$this._dropoffAddress;
  set dropoffAddress(String? dropoffAddress) =>
      _$this._dropoffAddress = dropoffAddress;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AppointmentsRecordBuilder() {
    AppointmentsRecord._initializeBuilder(this);
  }

  AppointmentsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _pickupLocation = $v.pickupLocation;
      _dropoffLocation = $v.dropoffLocation;
      _appointmentID = $v.appointmentID;
      _carPlate = $v.carPlate;
      _carBrand = $v.carBrand;
      _carModel = $v.carModel;
      _carCondition = $v.carCondition;
      _custRating = $v.custRating;
      _custComment = $v.custComment;
      _selectDate = $v.selectDate;
      _selectTime = $v.selectTime;
      _pickupAddress = $v.pickupAddress;
      _dropoffAddress = $v.dropoffAddress;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppointmentsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppointmentsRecord;
  }

  @override
  void update(void Function(AppointmentsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AppointmentsRecord build() => _build();

  _$AppointmentsRecord _build() {
    final _$result = _$v ??
        new _$AppointmentsRecord._(
            email: email,
            displayName: displayName,
            photoUrl: photoUrl,
            createdTime: createdTime,
            phoneNumber: phoneNumber,
            pickupLocation: pickupLocation,
            dropoffLocation: dropoffLocation,
            appointmentID: appointmentID,
            carPlate: carPlate,
            carBrand: carBrand,
            carModel: carModel,
            carCondition: carCondition,
            custRating: custRating,
            custComment: custComment,
            selectDate: selectDate,
            selectTime: selectTime,
            pickupAddress: pickupAddress,
            dropoffAddress: dropoffAddress,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
