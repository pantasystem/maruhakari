// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_chart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FoodChart _$FoodChartFromJson(Map<String, dynamic> json) {
  return _FoodChart.fromJson(json);
}

/// @nodoc
mixin _$FoodChart {
  @JsonKey(name: "records")
  List<FoodChartRecord> get records => throw _privateConstructorUsedError;
  @JsonKey(name: "begin_at")
  DateTime get beginAt => throw _privateConstructorUsedError;
  @JsonKey(name: "end_at")
  DateTime get endAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FoodChartCopyWith<FoodChart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodChartCopyWith<$Res> {
  factory $FoodChartCopyWith(FoodChart value, $Res Function(FoodChart) then) =
      _$FoodChartCopyWithImpl<$Res, FoodChart>;
  @useResult
  $Res call(
      {@JsonKey(name: "records") List<FoodChartRecord> records,
      @JsonKey(name: "begin_at") DateTime beginAt,
      @JsonKey(name: "end_at") DateTime endAt});
}

/// @nodoc
class _$FoodChartCopyWithImpl<$Res, $Val extends FoodChart>
    implements $FoodChartCopyWith<$Res> {
  _$FoodChartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
    Object? beginAt = null,
    Object? endAt = null,
  }) {
    return _then(_value.copyWith(
      records: null == records
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<FoodChartRecord>,
      beginAt: null == beginAt
          ? _value.beginAt
          : beginAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endAt: null == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FoodChartCopyWith<$Res> implements $FoodChartCopyWith<$Res> {
  factory _$$_FoodChartCopyWith(
          _$_FoodChart value, $Res Function(_$_FoodChart) then) =
      __$$_FoodChartCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "records") List<FoodChartRecord> records,
      @JsonKey(name: "begin_at") DateTime beginAt,
      @JsonKey(name: "end_at") DateTime endAt});
}

/// @nodoc
class __$$_FoodChartCopyWithImpl<$Res>
    extends _$FoodChartCopyWithImpl<$Res, _$_FoodChart>
    implements _$$_FoodChartCopyWith<$Res> {
  __$$_FoodChartCopyWithImpl(
      _$_FoodChart _value, $Res Function(_$_FoodChart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
    Object? beginAt = null,
    Object? endAt = null,
  }) {
    return _then(_$_FoodChart(
      records: null == records
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<FoodChartRecord>,
      beginAt: null == beginAt
          ? _value.beginAt
          : beginAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endAt: null == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FoodChart implements _FoodChart {
  const _$_FoodChart(
      {@JsonKey(name: "records") required final List<FoodChartRecord> records,
      @JsonKey(name: "begin_at") required this.beginAt,
      @JsonKey(name: "end_at") required this.endAt})
      : _records = records;

  factory _$_FoodChart.fromJson(Map<String, dynamic> json) =>
      _$$_FoodChartFromJson(json);

  final List<FoodChartRecord> _records;
  @override
  @JsonKey(name: "records")
  List<FoodChartRecord> get records {
    if (_records is EqualUnmodifiableListView) return _records;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_records);
  }

  @override
  @JsonKey(name: "begin_at")
  final DateTime beginAt;
  @override
  @JsonKey(name: "end_at")
  final DateTime endAt;

  @override
  String toString() {
    return 'FoodChart(records: $records, beginAt: $beginAt, endAt: $endAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FoodChart &&
            const DeepCollectionEquality().equals(other._records, _records) &&
            (identical(other.beginAt, beginAt) || other.beginAt == beginAt) &&
            (identical(other.endAt, endAt) || other.endAt == endAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_records), beginAt, endAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FoodChartCopyWith<_$_FoodChart> get copyWith =>
      __$$_FoodChartCopyWithImpl<_$_FoodChart>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FoodChartToJson(
      this,
    );
  }
}

abstract class _FoodChart implements FoodChart {
  const factory _FoodChart(
      {@JsonKey(name: "records") required final List<FoodChartRecord> records,
      @JsonKey(name: "begin_at") required final DateTime beginAt,
      @JsonKey(name: "end_at") required final DateTime endAt}) = _$_FoodChart;

  factory _FoodChart.fromJson(Map<String, dynamic> json) =
      _$_FoodChart.fromJson;

  @override
  @JsonKey(name: "records")
  List<FoodChartRecord> get records;
  @override
  @JsonKey(name: "begin_at")
  DateTime get beginAt;
  @override
  @JsonKey(name: "end_at")
  DateTime get endAt;
  @override
  @JsonKey(ignore: true)
  _$$_FoodChartCopyWith<_$_FoodChart> get copyWith =>
      throw _privateConstructorUsedError;
}

FoodChartRecord _$FoodChartRecordFromJson(Map<String, dynamic> json) {
  return _FoodChartRecord.fromJson(json);
}

/// @nodoc
mixin _$FoodChartRecord {
  double get x => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FoodChartRecordCopyWith<FoodChartRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodChartRecordCopyWith<$Res> {
  factory $FoodChartRecordCopyWith(
          FoodChartRecord value, $Res Function(FoodChartRecord) then) =
      _$FoodChartRecordCopyWithImpl<$Res, FoodChartRecord>;
  @useResult
  $Res call({double x, double y});
}

/// @nodoc
class _$FoodChartRecordCopyWithImpl<$Res, $Val extends FoodChartRecord>
    implements $FoodChartRecordCopyWith<$Res> {
  _$FoodChartRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_value.copyWith(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FoodChartRecordCopyWith<$Res>
    implements $FoodChartRecordCopyWith<$Res> {
  factory _$$_FoodChartRecordCopyWith(
          _$_FoodChartRecord value, $Res Function(_$_FoodChartRecord) then) =
      __$$_FoodChartRecordCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double x, double y});
}

/// @nodoc
class __$$_FoodChartRecordCopyWithImpl<$Res>
    extends _$FoodChartRecordCopyWithImpl<$Res, _$_FoodChartRecord>
    implements _$$_FoodChartRecordCopyWith<$Res> {
  __$$_FoodChartRecordCopyWithImpl(
      _$_FoodChartRecord _value, $Res Function(_$_FoodChartRecord) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_$_FoodChartRecord(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FoodChartRecord implements _FoodChartRecord {
  const _$_FoodChartRecord({required this.x, required this.y});

  factory _$_FoodChartRecord.fromJson(Map<String, dynamic> json) =>
      _$$_FoodChartRecordFromJson(json);

  @override
  final double x;
  @override
  final double y;

  @override
  String toString() {
    return 'FoodChartRecord(x: $x, y: $y)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FoodChartRecord &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, x, y);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FoodChartRecordCopyWith<_$_FoodChartRecord> get copyWith =>
      __$$_FoodChartRecordCopyWithImpl<_$_FoodChartRecord>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FoodChartRecordToJson(
      this,
    );
  }
}

abstract class _FoodChartRecord implements FoodChartRecord {
  const factory _FoodChartRecord(
      {required final double x, required final double y}) = _$_FoodChartRecord;

  factory _FoodChartRecord.fromJson(Map<String, dynamic> json) =
      _$_FoodChartRecord.fromJson;

  @override
  double get x;
  @override
  double get y;
  @override
  @JsonKey(ignore: true)
  _$$_FoodChartRecordCopyWith<_$_FoodChartRecord> get copyWith =>
      throw _privateConstructorUsedError;
}
