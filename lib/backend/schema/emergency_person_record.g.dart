// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emergency_person_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EmergencyPersonRecord> _$emergencyPersonRecordSerializer =
    new _$EmergencyPersonRecordSerializer();

class _$EmergencyPersonRecordSerializer
    implements StructuredSerializer<EmergencyPersonRecord> {
  @override
  final Iterable<Type> types = const [
    EmergencyPersonRecord,
    _$EmergencyPersonRecord
  ];
  @override
  final String wireName = 'EmergencyPersonRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, EmergencyPersonRecord object,
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
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
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
  EmergencyPersonRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EmergencyPersonRecordBuilder();

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
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
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

class _$EmergencyPersonRecord extends EmergencyPersonRecord {
  @override
  final String? email;
  @override
  final String? displayName;
  @override
  final String? photoUrl;
  @override
  final String? phoneNumber;
  @override
  final String? gender;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$EmergencyPersonRecord(
          [void Function(EmergencyPersonRecordBuilder)? updates]) =>
      (new EmergencyPersonRecordBuilder()..update(updates))._build();

  _$EmergencyPersonRecord._(
      {this.email,
      this.displayName,
      this.photoUrl,
      this.phoneNumber,
      this.gender,
      this.ffRef})
      : super._();

  @override
  EmergencyPersonRecord rebuild(
          void Function(EmergencyPersonRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EmergencyPersonRecordBuilder toBuilder() =>
      new EmergencyPersonRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmergencyPersonRecord &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        phoneNumber == other.phoneNumber &&
        gender == other.gender &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, email.hashCode), displayName.hashCode),
                    photoUrl.hashCode),
                phoneNumber.hashCode),
            gender.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EmergencyPersonRecord')
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('phoneNumber', phoneNumber)
          ..add('gender', gender)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class EmergencyPersonRecordBuilder
    implements Builder<EmergencyPersonRecord, EmergencyPersonRecordBuilder> {
  _$EmergencyPersonRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  EmergencyPersonRecordBuilder() {
    EmergencyPersonRecord._initializeBuilder(this);
  }

  EmergencyPersonRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _phoneNumber = $v.phoneNumber;
      _gender = $v.gender;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EmergencyPersonRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EmergencyPersonRecord;
  }

  @override
  void update(void Function(EmergencyPersonRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EmergencyPersonRecord build() => _build();

  _$EmergencyPersonRecord _build() {
    final _$result = _$v ??
        new _$EmergencyPersonRecord._(
            email: email,
            displayName: displayName,
            photoUrl: photoUrl,
            phoneNumber: phoneNumber,
            gender: gender,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
