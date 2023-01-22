// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DriverRecord> _$driverRecordSerializer =
    new _$DriverRecordSerializer();

class _$DriverRecordSerializer implements StructuredSerializer<DriverRecord> {
  @override
  final Iterable<Type> types = const [DriverRecord, _$DriverRecord];
  @override
  final String wireName = 'DriverRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, DriverRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.driverName;
    if (value != null) {
      result
        ..add('driver_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.driverPhotoUrl;
    if (value != null) {
      result
        ..add('driver_photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.driverUid;
    if (value != null) {
      result
        ..add('driver_uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.driverCreatedTime;
    if (value != null) {
      result
        ..add('driver_created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.driverPhoneNumber;
    if (value != null) {
      result
        ..add('driver_phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.driverGender;
    if (value != null) {
      result
        ..add('driver_gender')
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
  DriverRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DriverRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'driver_name':
          result.driverName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'driver_photo_url':
          result.driverPhotoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'driver_uid':
          result.driverUid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'driver_created_time':
          result.driverCreatedTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'driver_phone_number':
          result.driverPhoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'driver_gender':
          result.driverGender = serializers.deserialize(value,
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

class _$DriverRecord extends DriverRecord {
  @override
  final String? driverName;
  @override
  final String? driverPhotoUrl;
  @override
  final String? driverUid;
  @override
  final DateTime? driverCreatedTime;
  @override
  final String? driverPhoneNumber;
  @override
  final String? driverGender;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DriverRecord([void Function(DriverRecordBuilder)? updates]) =>
      (new DriverRecordBuilder()..update(updates))._build();

  _$DriverRecord._(
      {this.driverName,
      this.driverPhotoUrl,
      this.driverUid,
      this.driverCreatedTime,
      this.driverPhoneNumber,
      this.driverGender,
      this.ffRef})
      : super._();

  @override
  DriverRecord rebuild(void Function(DriverRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DriverRecordBuilder toBuilder() => new DriverRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DriverRecord &&
        driverName == other.driverName &&
        driverPhotoUrl == other.driverPhotoUrl &&
        driverUid == other.driverUid &&
        driverCreatedTime == other.driverCreatedTime &&
        driverPhoneNumber == other.driverPhoneNumber &&
        driverGender == other.driverGender &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, driverName.hashCode),
                            driverPhotoUrl.hashCode),
                        driverUid.hashCode),
                    driverCreatedTime.hashCode),
                driverPhoneNumber.hashCode),
            driverGender.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DriverRecord')
          ..add('driverName', driverName)
          ..add('driverPhotoUrl', driverPhotoUrl)
          ..add('driverUid', driverUid)
          ..add('driverCreatedTime', driverCreatedTime)
          ..add('driverPhoneNumber', driverPhoneNumber)
          ..add('driverGender', driverGender)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DriverRecordBuilder
    implements Builder<DriverRecord, DriverRecordBuilder> {
  _$DriverRecord? _$v;

  String? _driverName;
  String? get driverName => _$this._driverName;
  set driverName(String? driverName) => _$this._driverName = driverName;

  String? _driverPhotoUrl;
  String? get driverPhotoUrl => _$this._driverPhotoUrl;
  set driverPhotoUrl(String? driverPhotoUrl) =>
      _$this._driverPhotoUrl = driverPhotoUrl;

  String? _driverUid;
  String? get driverUid => _$this._driverUid;
  set driverUid(String? driverUid) => _$this._driverUid = driverUid;

  DateTime? _driverCreatedTime;
  DateTime? get driverCreatedTime => _$this._driverCreatedTime;
  set driverCreatedTime(DateTime? driverCreatedTime) =>
      _$this._driverCreatedTime = driverCreatedTime;

  String? _driverPhoneNumber;
  String? get driverPhoneNumber => _$this._driverPhoneNumber;
  set driverPhoneNumber(String? driverPhoneNumber) =>
      _$this._driverPhoneNumber = driverPhoneNumber;

  String? _driverGender;
  String? get driverGender => _$this._driverGender;
  set driverGender(String? driverGender) => _$this._driverGender = driverGender;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DriverRecordBuilder() {
    DriverRecord._initializeBuilder(this);
  }

  DriverRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _driverName = $v.driverName;
      _driverPhotoUrl = $v.driverPhotoUrl;
      _driverUid = $v.driverUid;
      _driverCreatedTime = $v.driverCreatedTime;
      _driverPhoneNumber = $v.driverPhoneNumber;
      _driverGender = $v.driverGender;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DriverRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DriverRecord;
  }

  @override
  void update(void Function(DriverRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DriverRecord build() => _build();

  _$DriverRecord _build() {
    final _$result = _$v ??
        new _$DriverRecord._(
            driverName: driverName,
            driverPhotoUrl: driverPhotoUrl,
            driverUid: driverUid,
            driverCreatedTime: driverCreatedTime,
            driverPhoneNumber: driverPhoneNumber,
            driverGender: driverGender,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
