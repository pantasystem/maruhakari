// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Food _$FoodFromJson(Map<String, dynamic> json) {
  return _Food.fromJson(json);
}

/// @nodoc
mixin _$Food {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'container_weight_gram')
  double get containerWeightGram => throw _privateConstructorUsedError;
  @JsonKey(name: 'container_max_weight_gram')
  double get containerMaxWeightGram => throw _privateConstructorUsedError;
  @JsonKey(name: 'gram_per_milliliter')
  double? get gramPerMilliliter => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_id')
  String get accountId => throw _privateConstructorUsedError;
  @JsonKey(name: 'nfc_uid')
  String? get nfcUid => throw _privateConstructorUsedError;
  @JsonKey(name: 'raw_weight_gram')
  double get rawWeightGram => throw _privateConstructorUsedError;
  @JsonKey(name: 'weight_gram')
  double get weightGram => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at', fromJson: _fromJson, toJson: _toJson)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at', fromJson: _fromJson, toJson: _toJson)
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FoodCopyWith<Food> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodCopyWith<$Res> {
  factory $FoodCopyWith(Food value, $Res Function(Food) then) =
      _$FoodCopyWithImpl<$Res, Food>;
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'container_weight_gram')
          double containerWeightGram,
      @JsonKey(name: 'container_max_weight_gram')
          double containerMaxWeightGram,
      @JsonKey(name: 'gram_per_milliliter')
          double? gramPerMilliliter,
      @JsonKey(name: 'account_id')
          String accountId,
      @JsonKey(name: 'nfc_uid')
          String? nfcUid,
      @JsonKey(name: 'raw_weight_gram')
          double rawWeightGram,
      @JsonKey(name: 'weight_gram')
          double weightGram,
      @JsonKey(name: 'created_at', fromJson: _fromJson, toJson: _toJson)
          DateTime? createdAt,
      @JsonKey(name: 'updated_at', fromJson: _fromJson, toJson: _toJson)
          DateTime? updatedAt});
}

/// @nodoc
class _$FoodCopyWithImpl<$Res, $Val extends Food>
    implements $FoodCopyWith<$Res> {
  _$FoodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? containerWeightGram = null,
    Object? containerMaxWeightGram = null,
    Object? gramPerMilliliter = freezed,
    Object? accountId = null,
    Object? nfcUid = freezed,
    Object? rawWeightGram = null,
    Object? weightGram = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      containerWeightGram: null == containerWeightGram
          ? _value.containerWeightGram
          : containerWeightGram // ignore: cast_nullable_to_non_nullable
              as double,
      containerMaxWeightGram: null == containerMaxWeightGram
          ? _value.containerMaxWeightGram
          : containerMaxWeightGram // ignore: cast_nullable_to_non_nullable
              as double,
      gramPerMilliliter: freezed == gramPerMilliliter
          ? _value.gramPerMilliliter
          : gramPerMilliliter // ignore: cast_nullable_to_non_nullable
              as double?,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      nfcUid: freezed == nfcUid
          ? _value.nfcUid
          : nfcUid // ignore: cast_nullable_to_non_nullable
              as String?,
      rawWeightGram: null == rawWeightGram
          ? _value.rawWeightGram
          : rawWeightGram // ignore: cast_nullable_to_non_nullable
              as double,
      weightGram: null == weightGram
          ? _value.weightGram
          : weightGram // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FoodCopyWith<$Res> implements $FoodCopyWith<$Res> {
  factory _$$_FoodCopyWith(_$_Food value, $Res Function(_$_Food) then) =
      __$$_FoodCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'container_weight_gram')
          double containerWeightGram,
      @JsonKey(name: 'container_max_weight_gram')
          double containerMaxWeightGram,
      @JsonKey(name: 'gram_per_milliliter')
          double? gramPerMilliliter,
      @JsonKey(name: 'account_id')
          String accountId,
      @JsonKey(name: 'nfc_uid')
          String? nfcUid,
      @JsonKey(name: 'raw_weight_gram')
          double rawWeightGram,
      @JsonKey(name: 'weight_gram')
          double weightGram,
      @JsonKey(name: 'created_at', fromJson: _fromJson, toJson: _toJson)
          DateTime? createdAt,
      @JsonKey(name: 'updated_at', fromJson: _fromJson, toJson: _toJson)
          DateTime? updatedAt});
}

/// @nodoc
class __$$_FoodCopyWithImpl<$Res> extends _$FoodCopyWithImpl<$Res, _$_Food>
    implements _$$_FoodCopyWith<$Res> {
  __$$_FoodCopyWithImpl(_$_Food _value, $Res Function(_$_Food) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? containerWeightGram = null,
    Object? containerMaxWeightGram = null,
    Object? gramPerMilliliter = freezed,
    Object? accountId = null,
    Object? nfcUid = freezed,
    Object? rawWeightGram = null,
    Object? weightGram = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_Food(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      containerWeightGram: null == containerWeightGram
          ? _value.containerWeightGram
          : containerWeightGram // ignore: cast_nullable_to_non_nullable
              as double,
      containerMaxWeightGram: null == containerMaxWeightGram
          ? _value.containerMaxWeightGram
          : containerMaxWeightGram // ignore: cast_nullable_to_non_nullable
              as double,
      gramPerMilliliter: freezed == gramPerMilliliter
          ? _value.gramPerMilliliter
          : gramPerMilliliter // ignore: cast_nullable_to_non_nullable
              as double?,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      nfcUid: freezed == nfcUid
          ? _value.nfcUid
          : nfcUid // ignore: cast_nullable_to_non_nullable
              as String?,
      rawWeightGram: null == rawWeightGram
          ? _value.rawWeightGram
          : rawWeightGram // ignore: cast_nullable_to_non_nullable
              as double,
      weightGram: null == weightGram
          ? _value.weightGram
          : weightGram // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Food implements _Food {
  const _$_Food(
      {required this.id,
      required this.name,
      @JsonKey(name: 'container_weight_gram')
          required this.containerWeightGram,
      @JsonKey(name: 'container_max_weight_gram')
          required this.containerMaxWeightGram,
      @JsonKey(name: 'gram_per_milliliter')
          this.gramPerMilliliter,
      @JsonKey(name: 'account_id')
          required this.accountId,
      @JsonKey(name: 'nfc_uid')
          this.nfcUid,
      @JsonKey(name: 'raw_weight_gram')
          required this.rawWeightGram,
      @JsonKey(name: 'weight_gram')
          required this.weightGram,
      @JsonKey(name: 'created_at', fromJson: _fromJson, toJson: _toJson)
          this.createdAt,
      @JsonKey(name: 'updated_at', fromJson: _fromJson, toJson: _toJson)
          this.updatedAt});

  factory _$_Food.fromJson(Map<String, dynamic> json) => _$$_FoodFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(name: 'container_weight_gram')
  final double containerWeightGram;
  @override
  @JsonKey(name: 'container_max_weight_gram')
  final double containerMaxWeightGram;
  @override
  @JsonKey(name: 'gram_per_milliliter')
  final double? gramPerMilliliter;
  @override
  @JsonKey(name: 'account_id')
  final String accountId;
  @override
  @JsonKey(name: 'nfc_uid')
  final String? nfcUid;
  @override
  @JsonKey(name: 'raw_weight_gram')
  final double rawWeightGram;
  @override
  @JsonKey(name: 'weight_gram')
  final double weightGram;
  @override
  @JsonKey(name: 'created_at', fromJson: _fromJson, toJson: _toJson)
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at', fromJson: _fromJson, toJson: _toJson)
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Food(id: $id, name: $name, containerWeightGram: $containerWeightGram, containerMaxWeightGram: $containerMaxWeightGram, gramPerMilliliter: $gramPerMilliliter, accountId: $accountId, nfcUid: $nfcUid, rawWeightGram: $rawWeightGram, weightGram: $weightGram, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Food &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.containerWeightGram, containerWeightGram) ||
                other.containerWeightGram == containerWeightGram) &&
            (identical(other.containerMaxWeightGram, containerMaxWeightGram) ||
                other.containerMaxWeightGram == containerMaxWeightGram) &&
            (identical(other.gramPerMilliliter, gramPerMilliliter) ||
                other.gramPerMilliliter == gramPerMilliliter) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.nfcUid, nfcUid) || other.nfcUid == nfcUid) &&
            (identical(other.rawWeightGram, rawWeightGram) ||
                other.rawWeightGram == rawWeightGram) &&
            (identical(other.weightGram, weightGram) ||
                other.weightGram == weightGram) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      containerWeightGram,
      containerMaxWeightGram,
      gramPerMilliliter,
      accountId,
      nfcUid,
      rawWeightGram,
      weightGram,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FoodCopyWith<_$_Food> get copyWith =>
      __$$_FoodCopyWithImpl<_$_Food>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FoodToJson(
      this,
    );
  }
}

abstract class _Food implements Food {
  const factory _Food(
      {required final String id,
      required final String name,
      @JsonKey(name: 'container_weight_gram')
          required final double containerWeightGram,
      @JsonKey(name: 'container_max_weight_gram')
          required final double containerMaxWeightGram,
      @JsonKey(name: 'gram_per_milliliter')
          final double? gramPerMilliliter,
      @JsonKey(name: 'account_id')
          required final String accountId,
      @JsonKey(name: 'nfc_uid')
          final String? nfcUid,
      @JsonKey(name: 'raw_weight_gram')
          required final double rawWeightGram,
      @JsonKey(name: 'weight_gram')
          required final double weightGram,
      @JsonKey(name: 'created_at', fromJson: _fromJson, toJson: _toJson)
          final DateTime? createdAt,
      @JsonKey(name: 'updated_at', fromJson: _fromJson, toJson: _toJson)
          final DateTime? updatedAt}) = _$_Food;

  factory _Food.fromJson(Map<String, dynamic> json) = _$_Food.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'container_weight_gram')
  double get containerWeightGram;
  @override
  @JsonKey(name: 'container_max_weight_gram')
  double get containerMaxWeightGram;
  @override
  @JsonKey(name: 'gram_per_milliliter')
  double? get gramPerMilliliter;
  @override
  @JsonKey(name: 'account_id')
  String get accountId;
  @override
  @JsonKey(name: 'nfc_uid')
  String? get nfcUid;
  @override
  @JsonKey(name: 'raw_weight_gram')
  double get rawWeightGram;
  @override
  @JsonKey(name: 'weight_gram')
  double get weightGram;
  @override
  @JsonKey(name: 'created_at', fromJson: _fromJson, toJson: _toJson)
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at', fromJson: _fromJson, toJson: _toJson)
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_FoodCopyWith<_$_Food> get copyWith => throw _privateConstructorUsedError;
}

CreateFoodRequest _$CreateFoodRequestFromJson(Map<String, dynamic> json) {
  return _CreateFoodRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateFoodRequest {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'nfc_uid')
  String get nfcUid => throw _privateConstructorUsedError;
  @JsonKey(name: 'container_weight_gram')
  double get containerWeightGram => throw _privateConstructorUsedError;
  @JsonKey(name: 'container_max_weight_gram')
  double get containerMaxWeightGram => throw _privateConstructorUsedError;
  @JsonKey(name: 'gram_per_milliliter')
  double? get gramPerMilliliter => throw _privateConstructorUsedError;
  bool get force => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateFoodRequestCopyWith<CreateFoodRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateFoodRequestCopyWith<$Res> {
  factory $CreateFoodRequestCopyWith(
          CreateFoodRequest value, $Res Function(CreateFoodRequest) then) =
      _$CreateFoodRequestCopyWithImpl<$Res, CreateFoodRequest>;
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: 'nfc_uid') String nfcUid,
      @JsonKey(name: 'container_weight_gram') double containerWeightGram,
      @JsonKey(name: 'container_max_weight_gram') double containerMaxWeightGram,
      @JsonKey(name: 'gram_per_milliliter') double? gramPerMilliliter,
      bool force});
}

/// @nodoc
class _$CreateFoodRequestCopyWithImpl<$Res, $Val extends CreateFoodRequest>
    implements $CreateFoodRequestCopyWith<$Res> {
  _$CreateFoodRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? nfcUid = null,
    Object? containerWeightGram = null,
    Object? containerMaxWeightGram = null,
    Object? gramPerMilliliter = freezed,
    Object? force = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nfcUid: null == nfcUid
          ? _value.nfcUid
          : nfcUid // ignore: cast_nullable_to_non_nullable
              as String,
      containerWeightGram: null == containerWeightGram
          ? _value.containerWeightGram
          : containerWeightGram // ignore: cast_nullable_to_non_nullable
              as double,
      containerMaxWeightGram: null == containerMaxWeightGram
          ? _value.containerMaxWeightGram
          : containerMaxWeightGram // ignore: cast_nullable_to_non_nullable
              as double,
      gramPerMilliliter: freezed == gramPerMilliliter
          ? _value.gramPerMilliliter
          : gramPerMilliliter // ignore: cast_nullable_to_non_nullable
              as double?,
      force: null == force
          ? _value.force
          : force // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateFoodRequestCopyWith<$Res>
    implements $CreateFoodRequestCopyWith<$Res> {
  factory _$$_CreateFoodRequestCopyWith(_$_CreateFoodRequest value,
          $Res Function(_$_CreateFoodRequest) then) =
      __$$_CreateFoodRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: 'nfc_uid') String nfcUid,
      @JsonKey(name: 'container_weight_gram') double containerWeightGram,
      @JsonKey(name: 'container_max_weight_gram') double containerMaxWeightGram,
      @JsonKey(name: 'gram_per_milliliter') double? gramPerMilliliter,
      bool force});
}

/// @nodoc
class __$$_CreateFoodRequestCopyWithImpl<$Res>
    extends _$CreateFoodRequestCopyWithImpl<$Res, _$_CreateFoodRequest>
    implements _$$_CreateFoodRequestCopyWith<$Res> {
  __$$_CreateFoodRequestCopyWithImpl(
      _$_CreateFoodRequest _value, $Res Function(_$_CreateFoodRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? nfcUid = null,
    Object? containerWeightGram = null,
    Object? containerMaxWeightGram = null,
    Object? gramPerMilliliter = freezed,
    Object? force = null,
  }) {
    return _then(_$_CreateFoodRequest(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nfcUid: null == nfcUid
          ? _value.nfcUid
          : nfcUid // ignore: cast_nullable_to_non_nullable
              as String,
      containerWeightGram: null == containerWeightGram
          ? _value.containerWeightGram
          : containerWeightGram // ignore: cast_nullable_to_non_nullable
              as double,
      containerMaxWeightGram: null == containerMaxWeightGram
          ? _value.containerMaxWeightGram
          : containerMaxWeightGram // ignore: cast_nullable_to_non_nullable
              as double,
      gramPerMilliliter: freezed == gramPerMilliliter
          ? _value.gramPerMilliliter
          : gramPerMilliliter // ignore: cast_nullable_to_non_nullable
              as double?,
      force: null == force
          ? _value.force
          : force // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateFoodRequest implements _CreateFoodRequest {
  const _$_CreateFoodRequest(
      {required this.name,
      @JsonKey(name: 'nfc_uid')
          required this.nfcUid,
      @JsonKey(name: 'container_weight_gram')
          required this.containerWeightGram,
      @JsonKey(name: 'container_max_weight_gram')
          required this.containerMaxWeightGram,
      @JsonKey(name: 'gram_per_milliliter')
          this.gramPerMilliliter,
      required this.force});

  factory _$_CreateFoodRequest.fromJson(Map<String, dynamic> json) =>
      _$$_CreateFoodRequestFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: 'nfc_uid')
  final String nfcUid;
  @override
  @JsonKey(name: 'container_weight_gram')
  final double containerWeightGram;
  @override
  @JsonKey(name: 'container_max_weight_gram')
  final double containerMaxWeightGram;
  @override
  @JsonKey(name: 'gram_per_milliliter')
  final double? gramPerMilliliter;
  @override
  final bool force;

  @override
  String toString() {
    return 'CreateFoodRequest(name: $name, nfcUid: $nfcUid, containerWeightGram: $containerWeightGram, containerMaxWeightGram: $containerMaxWeightGram, gramPerMilliliter: $gramPerMilliliter, force: $force)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateFoodRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nfcUid, nfcUid) || other.nfcUid == nfcUid) &&
            (identical(other.containerWeightGram, containerWeightGram) ||
                other.containerWeightGram == containerWeightGram) &&
            (identical(other.containerMaxWeightGram, containerMaxWeightGram) ||
                other.containerMaxWeightGram == containerMaxWeightGram) &&
            (identical(other.gramPerMilliliter, gramPerMilliliter) ||
                other.gramPerMilliliter == gramPerMilliliter) &&
            (identical(other.force, force) || other.force == force));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, nfcUid,
      containerWeightGram, containerMaxWeightGram, gramPerMilliliter, force);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateFoodRequestCopyWith<_$_CreateFoodRequest> get copyWith =>
      __$$_CreateFoodRequestCopyWithImpl<_$_CreateFoodRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateFoodRequestToJson(
      this,
    );
  }
}

abstract class _CreateFoodRequest implements CreateFoodRequest {
  const factory _CreateFoodRequest(
      {required final String name,
      @JsonKey(name: 'nfc_uid')
          required final String nfcUid,
      @JsonKey(name: 'container_weight_gram')
          required final double containerWeightGram,
      @JsonKey(name: 'container_max_weight_gram')
          required final double containerMaxWeightGram,
      @JsonKey(name: 'gram_per_milliliter')
          final double? gramPerMilliliter,
      required final bool force}) = _$_CreateFoodRequest;

  factory _CreateFoodRequest.fromJson(Map<String, dynamic> json) =
      _$_CreateFoodRequest.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: 'nfc_uid')
  String get nfcUid;
  @override
  @JsonKey(name: 'container_weight_gram')
  double get containerWeightGram;
  @override
  @JsonKey(name: 'container_max_weight_gram')
  double get containerMaxWeightGram;
  @override
  @JsonKey(name: 'gram_per_milliliter')
  double? get gramPerMilliliter;
  @override
  bool get force;
  @override
  @JsonKey(ignore: true)
  _$$_CreateFoodRequestCopyWith<_$_CreateFoodRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateFoodRequest _$UpdateFoodRequestFromJson(Map<String, dynamic> json) {
  return _UpdateFoodRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateFoodRequest {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'nfc_uid')
  String get nfcUid => throw _privateConstructorUsedError;
  @JsonKey(name: 'container_weight_gram')
  double get containerWeightGram => throw _privateConstructorUsedError;
  @JsonKey(name: 'container_max_weight_gram')
  double get containerMaxWeightGram => throw _privateConstructorUsedError;
  @JsonKey(name: 'gram_per_milliliter')
  double? get gramPerMilliliter => throw _privateConstructorUsedError;
  bool get force => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateFoodRequestCopyWith<UpdateFoodRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateFoodRequestCopyWith<$Res> {
  factory $UpdateFoodRequestCopyWith(
          UpdateFoodRequest value, $Res Function(UpdateFoodRequest) then) =
      _$UpdateFoodRequestCopyWithImpl<$Res, UpdateFoodRequest>;
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'nfc_uid') String nfcUid,
      @JsonKey(name: 'container_weight_gram') double containerWeightGram,
      @JsonKey(name: 'container_max_weight_gram') double containerMaxWeightGram,
      @JsonKey(name: 'gram_per_milliliter') double? gramPerMilliliter,
      bool force});
}

/// @nodoc
class _$UpdateFoodRequestCopyWithImpl<$Res, $Val extends UpdateFoodRequest>
    implements $UpdateFoodRequestCopyWith<$Res> {
  _$UpdateFoodRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? nfcUid = null,
    Object? containerWeightGram = null,
    Object? containerMaxWeightGram = null,
    Object? gramPerMilliliter = freezed,
    Object? force = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nfcUid: null == nfcUid
          ? _value.nfcUid
          : nfcUid // ignore: cast_nullable_to_non_nullable
              as String,
      containerWeightGram: null == containerWeightGram
          ? _value.containerWeightGram
          : containerWeightGram // ignore: cast_nullable_to_non_nullable
              as double,
      containerMaxWeightGram: null == containerMaxWeightGram
          ? _value.containerMaxWeightGram
          : containerMaxWeightGram // ignore: cast_nullable_to_non_nullable
              as double,
      gramPerMilliliter: freezed == gramPerMilliliter
          ? _value.gramPerMilliliter
          : gramPerMilliliter // ignore: cast_nullable_to_non_nullable
              as double?,
      force: null == force
          ? _value.force
          : force // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateFoodRequestCopyWith<$Res>
    implements $UpdateFoodRequestCopyWith<$Res> {
  factory _$$_UpdateFoodRequestCopyWith(_$_UpdateFoodRequest value,
          $Res Function(_$_UpdateFoodRequest) then) =
      __$$_UpdateFoodRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'nfc_uid') String nfcUid,
      @JsonKey(name: 'container_weight_gram') double containerWeightGram,
      @JsonKey(name: 'container_max_weight_gram') double containerMaxWeightGram,
      @JsonKey(name: 'gram_per_milliliter') double? gramPerMilliliter,
      bool force});
}

/// @nodoc
class __$$_UpdateFoodRequestCopyWithImpl<$Res>
    extends _$UpdateFoodRequestCopyWithImpl<$Res, _$_UpdateFoodRequest>
    implements _$$_UpdateFoodRequestCopyWith<$Res> {
  __$$_UpdateFoodRequestCopyWithImpl(
      _$_UpdateFoodRequest _value, $Res Function(_$_UpdateFoodRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? nfcUid = null,
    Object? containerWeightGram = null,
    Object? containerMaxWeightGram = null,
    Object? gramPerMilliliter = freezed,
    Object? force = null,
  }) {
    return _then(_$_UpdateFoodRequest(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nfcUid: null == nfcUid
          ? _value.nfcUid
          : nfcUid // ignore: cast_nullable_to_non_nullable
              as String,
      containerWeightGram: null == containerWeightGram
          ? _value.containerWeightGram
          : containerWeightGram // ignore: cast_nullable_to_non_nullable
              as double,
      containerMaxWeightGram: null == containerMaxWeightGram
          ? _value.containerMaxWeightGram
          : containerMaxWeightGram // ignore: cast_nullable_to_non_nullable
              as double,
      gramPerMilliliter: freezed == gramPerMilliliter
          ? _value.gramPerMilliliter
          : gramPerMilliliter // ignore: cast_nullable_to_non_nullable
              as double?,
      force: null == force
          ? _value.force
          : force // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateFoodRequest implements _UpdateFoodRequest {
  const _$_UpdateFoodRequest(
      {required this.id,
      required this.name,
      @JsonKey(name: 'nfc_uid')
          required this.nfcUid,
      @JsonKey(name: 'container_weight_gram')
          required this.containerWeightGram,
      @JsonKey(name: 'container_max_weight_gram')
          required this.containerMaxWeightGram,
      @JsonKey(name: 'gram_per_milliliter')
          this.gramPerMilliliter,
      required this.force});

  factory _$_UpdateFoodRequest.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateFoodRequestFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(name: 'nfc_uid')
  final String nfcUid;
  @override
  @JsonKey(name: 'container_weight_gram')
  final double containerWeightGram;
  @override
  @JsonKey(name: 'container_max_weight_gram')
  final double containerMaxWeightGram;
  @override
  @JsonKey(name: 'gram_per_milliliter')
  final double? gramPerMilliliter;
  @override
  final bool force;

  @override
  String toString() {
    return 'UpdateFoodRequest(id: $id, name: $name, nfcUid: $nfcUid, containerWeightGram: $containerWeightGram, containerMaxWeightGram: $containerMaxWeightGram, gramPerMilliliter: $gramPerMilliliter, force: $force)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateFoodRequest &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nfcUid, nfcUid) || other.nfcUid == nfcUid) &&
            (identical(other.containerWeightGram, containerWeightGram) ||
                other.containerWeightGram == containerWeightGram) &&
            (identical(other.containerMaxWeightGram, containerMaxWeightGram) ||
                other.containerMaxWeightGram == containerMaxWeightGram) &&
            (identical(other.gramPerMilliliter, gramPerMilliliter) ||
                other.gramPerMilliliter == gramPerMilliliter) &&
            (identical(other.force, force) || other.force == force));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, nfcUid,
      containerWeightGram, containerMaxWeightGram, gramPerMilliliter, force);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateFoodRequestCopyWith<_$_UpdateFoodRequest> get copyWith =>
      __$$_UpdateFoodRequestCopyWithImpl<_$_UpdateFoodRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateFoodRequestToJson(
      this,
    );
  }
}

abstract class _UpdateFoodRequest implements UpdateFoodRequest {
  const factory _UpdateFoodRequest(
      {required final String id,
      required final String name,
      @JsonKey(name: 'nfc_uid')
          required final String nfcUid,
      @JsonKey(name: 'container_weight_gram')
          required final double containerWeightGram,
      @JsonKey(name: 'container_max_weight_gram')
          required final double containerMaxWeightGram,
      @JsonKey(name: 'gram_per_milliliter')
          final double? gramPerMilliliter,
      required final bool force}) = _$_UpdateFoodRequest;

  factory _UpdateFoodRequest.fromJson(Map<String, dynamic> json) =
      _$_UpdateFoodRequest.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'nfc_uid')
  String get nfcUid;
  @override
  @JsonKey(name: 'container_weight_gram')
  double get containerWeightGram;
  @override
  @JsonKey(name: 'container_max_weight_gram')
  double get containerMaxWeightGram;
  @override
  @JsonKey(name: 'gram_per_milliliter')
  double? get gramPerMilliliter;
  @override
  bool get force;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateFoodRequestCopyWith<_$_UpdateFoodRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

MyFoodsResponse _$MyFoodsResponseFromJson(Map<String, dynamic> json) {
  return _MyFoodsResponse.fromJson(json);
}

/// @nodoc
mixin _$MyFoodsResponse {
  @JsonKey(name: 'foods')
  List<Food> get foods => throw _privateConstructorUsedError;
  @JsonKey(name: 'low_weight_foods')
  List<Food> get lowWeightFoods => throw _privateConstructorUsedError;
  @JsonKey(name: 'unused_foods')
  List<Food> get unusedFoods => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyFoodsResponseCopyWith<MyFoodsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyFoodsResponseCopyWith<$Res> {
  factory $MyFoodsResponseCopyWith(
          MyFoodsResponse value, $Res Function(MyFoodsResponse) then) =
      _$MyFoodsResponseCopyWithImpl<$Res, MyFoodsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'foods') List<Food> foods,
      @JsonKey(name: 'low_weight_foods') List<Food> lowWeightFoods,
      @JsonKey(name: 'unused_foods') List<Food> unusedFoods});
}

/// @nodoc
class _$MyFoodsResponseCopyWithImpl<$Res, $Val extends MyFoodsResponse>
    implements $MyFoodsResponseCopyWith<$Res> {
  _$MyFoodsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foods = null,
    Object? lowWeightFoods = null,
    Object? unusedFoods = null,
  }) {
    return _then(_value.copyWith(
      foods: null == foods
          ? _value.foods
          : foods // ignore: cast_nullable_to_non_nullable
              as List<Food>,
      lowWeightFoods: null == lowWeightFoods
          ? _value.lowWeightFoods
          : lowWeightFoods // ignore: cast_nullable_to_non_nullable
              as List<Food>,
      unusedFoods: null == unusedFoods
          ? _value.unusedFoods
          : unusedFoods // ignore: cast_nullable_to_non_nullable
              as List<Food>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MyFoodsResponseCopyWith<$Res>
    implements $MyFoodsResponseCopyWith<$Res> {
  factory _$$_MyFoodsResponseCopyWith(
          _$_MyFoodsResponse value, $Res Function(_$_MyFoodsResponse) then) =
      __$$_MyFoodsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'foods') List<Food> foods,
      @JsonKey(name: 'low_weight_foods') List<Food> lowWeightFoods,
      @JsonKey(name: 'unused_foods') List<Food> unusedFoods});
}

/// @nodoc
class __$$_MyFoodsResponseCopyWithImpl<$Res>
    extends _$MyFoodsResponseCopyWithImpl<$Res, _$_MyFoodsResponse>
    implements _$$_MyFoodsResponseCopyWith<$Res> {
  __$$_MyFoodsResponseCopyWithImpl(
      _$_MyFoodsResponse _value, $Res Function(_$_MyFoodsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foods = null,
    Object? lowWeightFoods = null,
    Object? unusedFoods = null,
  }) {
    return _then(_$_MyFoodsResponse(
      foods: null == foods
          ? _value._foods
          : foods // ignore: cast_nullable_to_non_nullable
              as List<Food>,
      lowWeightFoods: null == lowWeightFoods
          ? _value._lowWeightFoods
          : lowWeightFoods // ignore: cast_nullable_to_non_nullable
              as List<Food>,
      unusedFoods: null == unusedFoods
          ? _value._unusedFoods
          : unusedFoods // ignore: cast_nullable_to_non_nullable
              as List<Food>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MyFoodsResponse implements _MyFoodsResponse {
  const _$_MyFoodsResponse(
      {@JsonKey(name: 'foods')
          required final List<Food> foods,
      @JsonKey(name: 'low_weight_foods')
          required final List<Food> lowWeightFoods,
      @JsonKey(name: 'unused_foods')
          required final List<Food> unusedFoods})
      : _foods = foods,
        _lowWeightFoods = lowWeightFoods,
        _unusedFoods = unusedFoods;

  factory _$_MyFoodsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MyFoodsResponseFromJson(json);

  final List<Food> _foods;
  @override
  @JsonKey(name: 'foods')
  List<Food> get foods {
    if (_foods is EqualUnmodifiableListView) return _foods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_foods);
  }

  final List<Food> _lowWeightFoods;
  @override
  @JsonKey(name: 'low_weight_foods')
  List<Food> get lowWeightFoods {
    if (_lowWeightFoods is EqualUnmodifiableListView) return _lowWeightFoods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lowWeightFoods);
  }

  final List<Food> _unusedFoods;
  @override
  @JsonKey(name: 'unused_foods')
  List<Food> get unusedFoods {
    if (_unusedFoods is EqualUnmodifiableListView) return _unusedFoods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_unusedFoods);
  }

  @override
  String toString() {
    return 'MyFoodsResponse(foods: $foods, lowWeightFoods: $lowWeightFoods, unusedFoods: $unusedFoods)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyFoodsResponse &&
            const DeepCollectionEquality().equals(other._foods, _foods) &&
            const DeepCollectionEquality()
                .equals(other._lowWeightFoods, _lowWeightFoods) &&
            const DeepCollectionEquality()
                .equals(other._unusedFoods, _unusedFoods));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_foods),
      const DeepCollectionEquality().hash(_lowWeightFoods),
      const DeepCollectionEquality().hash(_unusedFoods));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MyFoodsResponseCopyWith<_$_MyFoodsResponse> get copyWith =>
      __$$_MyFoodsResponseCopyWithImpl<_$_MyFoodsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MyFoodsResponseToJson(
      this,
    );
  }
}

abstract class _MyFoodsResponse implements MyFoodsResponse {
  const factory _MyFoodsResponse(
      {@JsonKey(name: 'foods')
          required final List<Food> foods,
      @JsonKey(name: 'low_weight_foods')
          required final List<Food> lowWeightFoods,
      @JsonKey(name: 'unused_foods')
          required final List<Food> unusedFoods}) = _$_MyFoodsResponse;

  factory _MyFoodsResponse.fromJson(Map<String, dynamic> json) =
      _$_MyFoodsResponse.fromJson;

  @override
  @JsonKey(name: 'foods')
  List<Food> get foods;
  @override
  @JsonKey(name: 'low_weight_foods')
  List<Food> get lowWeightFoods;
  @override
  @JsonKey(name: 'unused_foods')
  List<Food> get unusedFoods;
  @override
  @JsonKey(ignore: true)
  _$$_MyFoodsResponseCopyWith<_$_MyFoodsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
