// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PaymentRecord> _$paymentRecordSerializer =
    new _$PaymentRecordSerializer();

class _$PaymentRecordSerializer implements StructuredSerializer<PaymentRecord> {
  @override
  final Iterable<Type> types = const [PaymentRecord, _$PaymentRecord];
  @override
  final String wireName = 'PaymentRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PaymentRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.amount;
    if (value != null) {
      result
        ..add('amount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.vendorName;
    if (value != null) {
      result
        ..add('vendor_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tips;
    if (value != null) {
      result
        ..add('tips')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.total;
    if (value != null) {
      result
        ..add('total')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.baseFare;
    if (value != null) {
      result
        ..add('baseFare')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
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
  PaymentRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PaymentRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'vendor_name':
          result.vendorName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tips':
          result.tips = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'baseFare':
          result.baseFare = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
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

class _$PaymentRecord extends PaymentRecord {
  @override
  final String? name;
  @override
  final double? amount;
  @override
  final String? status;
  @override
  final DateTime? createdAt;
  @override
  final String? vendorName;
  @override
  final double? tips;
  @override
  final double? total;
  @override
  final double? baseFare;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PaymentRecord([void Function(PaymentRecordBuilder)? updates]) =>
      (new PaymentRecordBuilder()..update(updates))._build();

  _$PaymentRecord._(
      {this.name,
      this.amount,
      this.status,
      this.createdAt,
      this.vendorName,
      this.tips,
      this.total,
      this.baseFare,
      this.ffRef})
      : super._();

  @override
  PaymentRecord rebuild(void Function(PaymentRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaymentRecordBuilder toBuilder() => new PaymentRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaymentRecord &&
        name == other.name &&
        amount == other.amount &&
        status == other.status &&
        createdAt == other.createdAt &&
        vendorName == other.vendorName &&
        tips == other.tips &&
        total == other.total &&
        baseFare == other.baseFare &&
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
                            $jc($jc($jc(0, name.hashCode), amount.hashCode),
                                status.hashCode),
                            createdAt.hashCode),
                        vendorName.hashCode),
                    tips.hashCode),
                total.hashCode),
            baseFare.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PaymentRecord')
          ..add('name', name)
          ..add('amount', amount)
          ..add('status', status)
          ..add('createdAt', createdAt)
          ..add('vendorName', vendorName)
          ..add('tips', tips)
          ..add('total', total)
          ..add('baseFare', baseFare)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PaymentRecordBuilder
    implements Builder<PaymentRecord, PaymentRecordBuilder> {
  _$PaymentRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  double? _amount;
  double? get amount => _$this._amount;
  set amount(double? amount) => _$this._amount = amount;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  String? _vendorName;
  String? get vendorName => _$this._vendorName;
  set vendorName(String? vendorName) => _$this._vendorName = vendorName;

  double? _tips;
  double? get tips => _$this._tips;
  set tips(double? tips) => _$this._tips = tips;

  double? _total;
  double? get total => _$this._total;
  set total(double? total) => _$this._total = total;

  double? _baseFare;
  double? get baseFare => _$this._baseFare;
  set baseFare(double? baseFare) => _$this._baseFare = baseFare;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PaymentRecordBuilder() {
    PaymentRecord._initializeBuilder(this);
  }

  PaymentRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _amount = $v.amount;
      _status = $v.status;
      _createdAt = $v.createdAt;
      _vendorName = $v.vendorName;
      _tips = $v.tips;
      _total = $v.total;
      _baseFare = $v.baseFare;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaymentRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PaymentRecord;
  }

  @override
  void update(void Function(PaymentRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaymentRecord build() => _build();

  _$PaymentRecord _build() {
    final _$result = _$v ??
        new _$PaymentRecord._(
            name: name,
            amount: amount,
            status: status,
            createdAt: createdAt,
            vendorName: vendorName,
            tips: tips,
            total: total,
            baseFare: baseFare,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
