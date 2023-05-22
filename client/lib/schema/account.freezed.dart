// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateAccountRequest _$CreateAccountRequestFromJson(Map<String, dynamic> json) {
  return _CreateAccountRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateAccountRequest {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateAccountRequestCopyWith<CreateAccountRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAccountRequestCopyWith<$Res> {
  factory $CreateAccountRequestCopyWith(CreateAccountRequest value,
          $Res Function(CreateAccountRequest) then) =
      _$CreateAccountRequestCopyWithImpl<$Res, CreateAccountRequest>;
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class _$CreateAccountRequestCopyWithImpl<$Res,
        $Val extends CreateAccountRequest>
    implements $CreateAccountRequestCopyWith<$Res> {
  _$CreateAccountRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateAccountRequestCopyWith<$Res>
    implements $CreateAccountRequestCopyWith<$Res> {
  factory _$$_CreateAccountRequestCopyWith(_$_CreateAccountRequest value,
          $Res Function(_$_CreateAccountRequest) then) =
      __$$_CreateAccountRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class __$$_CreateAccountRequestCopyWithImpl<$Res>
    extends _$CreateAccountRequestCopyWithImpl<$Res, _$_CreateAccountRequest>
    implements _$$_CreateAccountRequestCopyWith<$Res> {
  __$$_CreateAccountRequestCopyWithImpl(_$_CreateAccountRequest _value,
      $Res Function(_$_CreateAccountRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$_CreateAccountRequest(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateAccountRequest implements _CreateAccountRequest {
  const _$_CreateAccountRequest(
      {required this.username, required this.password});

  factory _$_CreateAccountRequest.fromJson(Map<String, dynamic> json) =>
      _$$_CreateAccountRequestFromJson(json);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'CreateAccountRequest(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateAccountRequest &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateAccountRequestCopyWith<_$_CreateAccountRequest> get copyWith =>
      __$$_CreateAccountRequestCopyWithImpl<_$_CreateAccountRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateAccountRequestToJson(
      this,
    );
  }
}

abstract class _CreateAccountRequest implements CreateAccountRequest {
  const factory _CreateAccountRequest(
      {required final String username,
      required final String password}) = _$_CreateAccountRequest;

  factory _CreateAccountRequest.fromJson(Map<String, dynamic> json) =
      _$_CreateAccountRequest.fromJson;

  @override
  String get username;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_CreateAccountRequestCopyWith<_$_CreateAccountRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

LoginAccountRequest _$LoginAccountRequestFromJson(Map<String, dynamic> json) {
  return _LoginAccountRequest.fromJson(json);
}

/// @nodoc
mixin _$LoginAccountRequest {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginAccountRequestCopyWith<LoginAccountRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginAccountRequestCopyWith<$Res> {
  factory $LoginAccountRequestCopyWith(
          LoginAccountRequest value, $Res Function(LoginAccountRequest) then) =
      _$LoginAccountRequestCopyWithImpl<$Res, LoginAccountRequest>;
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class _$LoginAccountRequestCopyWithImpl<$Res, $Val extends LoginAccountRequest>
    implements $LoginAccountRequestCopyWith<$Res> {
  _$LoginAccountRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginAccountRequestCopyWith<$Res>
    implements $LoginAccountRequestCopyWith<$Res> {
  factory _$$_LoginAccountRequestCopyWith(_$_LoginAccountRequest value,
          $Res Function(_$_LoginAccountRequest) then) =
      __$$_LoginAccountRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class __$$_LoginAccountRequestCopyWithImpl<$Res>
    extends _$LoginAccountRequestCopyWithImpl<$Res, _$_LoginAccountRequest>
    implements _$$_LoginAccountRequestCopyWith<$Res> {
  __$$_LoginAccountRequestCopyWithImpl(_$_LoginAccountRequest _value,
      $Res Function(_$_LoginAccountRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$_LoginAccountRequest(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginAccountRequest implements _LoginAccountRequest {
  const _$_LoginAccountRequest(
      {required this.username, required this.password});

  factory _$_LoginAccountRequest.fromJson(Map<String, dynamic> json) =>
      _$$_LoginAccountRequestFromJson(json);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginAccountRequest(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginAccountRequest &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginAccountRequestCopyWith<_$_LoginAccountRequest> get copyWith =>
      __$$_LoginAccountRequestCopyWithImpl<_$_LoginAccountRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginAccountRequestToJson(
      this,
    );
  }
}

abstract class _LoginAccountRequest implements LoginAccountRequest {
  const factory _LoginAccountRequest(
      {required final String username,
      required final String password}) = _$_LoginAccountRequest;

  factory _LoginAccountRequest.fromJson(Map<String, dynamic> json) =
      _$_LoginAccountRequest.fromJson;

  @override
  String get username;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_LoginAccountRequestCopyWith<_$_LoginAccountRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

Account _$AccountFromJson(Map<String, dynamic> json) {
  return _Account.fromJson(json);
}

/// @nodoc
mixin _$Account {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountCopyWith<Account> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountCopyWith<$Res> {
  factory $AccountCopyWith(Account value, $Res Function(Account) then) =
      _$AccountCopyWithImpl<$Res, Account>;
  @useResult
  $Res call(
      {String id,
      String username,
      @JsonKey(name: "created_at") String createdAt,
      @JsonKey(name: "updated_at") String updatedAt});
}

/// @nodoc
class _$AccountCopyWithImpl<$Res, $Val extends Account>
    implements $AccountCopyWith<$Res> {
  _$AccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccountCopyWith<$Res> implements $AccountCopyWith<$Res> {
  factory _$$_AccountCopyWith(
          _$_Account value, $Res Function(_$_Account) then) =
      __$$_AccountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String username,
      @JsonKey(name: "created_at") String createdAt,
      @JsonKey(name: "updated_at") String updatedAt});
}

/// @nodoc
class __$$_AccountCopyWithImpl<$Res>
    extends _$AccountCopyWithImpl<$Res, _$_Account>
    implements _$$_AccountCopyWith<$Res> {
  __$$_AccountCopyWithImpl(_$_Account _value, $Res Function(_$_Account) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_Account(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Account implements _Account {
  const _$_Account(
      {required this.id,
      required this.username,
      @JsonKey(name: "created_at") required this.createdAt,
      @JsonKey(name: "updated_at") required this.updatedAt});

  factory _$_Account.fromJson(Map<String, dynamic> json) =>
      _$$_AccountFromJson(json);

  @override
  final String id;
  @override
  final String username;
  @override
  @JsonKey(name: "created_at")
  final String createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String updatedAt;

  @override
  String toString() {
    return 'Account(id: $id, username: $username, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Account &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, username, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountCopyWith<_$_Account> get copyWith =>
      __$$_AccountCopyWithImpl<_$_Account>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountToJson(
      this,
    );
  }
}

abstract class _Account implements Account {
  const factory _Account(
          {required final String id,
          required final String username,
          @JsonKey(name: "created_at") required final String createdAt,
          @JsonKey(name: "updated_at") required final String updatedAt}) =
      _$_Account;

  factory _Account.fromJson(Map<String, dynamic> json) = _$_Account.fromJson;

  @override
  String get id;
  @override
  String get username;
  @override
  @JsonKey(name: "created_at")
  String get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_AccountCopyWith<_$_Account> get copyWith =>
      throw _privateConstructorUsedError;
}

TokenWithAccount _$TokenWithAccountFromJson(Map<String, dynamic> json) {
  return _TokenWithAccount.fromJson(json);
}

/// @nodoc
mixin _$TokenWithAccount {
  String get token => throw _privateConstructorUsedError;
  Account get account => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenWithAccountCopyWith<TokenWithAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenWithAccountCopyWith<$Res> {
  factory $TokenWithAccountCopyWith(
          TokenWithAccount value, $Res Function(TokenWithAccount) then) =
      _$TokenWithAccountCopyWithImpl<$Res, TokenWithAccount>;
  @useResult
  $Res call({String token, Account account});

  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class _$TokenWithAccountCopyWithImpl<$Res, $Val extends TokenWithAccount>
    implements $TokenWithAccountCopyWith<$Res> {
  _$TokenWithAccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? account = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res> get account {
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TokenWithAccountCopyWith<$Res>
    implements $TokenWithAccountCopyWith<$Res> {
  factory _$$_TokenWithAccountCopyWith(
          _$_TokenWithAccount value, $Res Function(_$_TokenWithAccount) then) =
      __$$_TokenWithAccountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, Account account});

  @override
  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class __$$_TokenWithAccountCopyWithImpl<$Res>
    extends _$TokenWithAccountCopyWithImpl<$Res, _$_TokenWithAccount>
    implements _$$_TokenWithAccountCopyWith<$Res> {
  __$$_TokenWithAccountCopyWithImpl(
      _$_TokenWithAccount _value, $Res Function(_$_TokenWithAccount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? account = null,
  }) {
    return _then(_$_TokenWithAccount(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TokenWithAccount implements _TokenWithAccount {
  const _$_TokenWithAccount({required this.token, required this.account});

  factory _$_TokenWithAccount.fromJson(Map<String, dynamic> json) =>
      _$$_TokenWithAccountFromJson(json);

  @override
  final String token;
  @override
  final Account account;

  @override
  String toString() {
    return 'TokenWithAccount(token: $token, account: $account)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TokenWithAccount &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.account, account) || other.account == account));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, account);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TokenWithAccountCopyWith<_$_TokenWithAccount> get copyWith =>
      __$$_TokenWithAccountCopyWithImpl<_$_TokenWithAccount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenWithAccountToJson(
      this,
    );
  }
}

abstract class _TokenWithAccount implements TokenWithAccount {
  const factory _TokenWithAccount(
      {required final String token,
      required final Account account}) = _$_TokenWithAccount;

  factory _TokenWithAccount.fromJson(Map<String, dynamic> json) =
      _$_TokenWithAccount.fromJson;

  @override
  String get token;
  @override
  Account get account;
  @override
  @JsonKey(ignore: true)
  _$$_TokenWithAccountCopyWith<_$_TokenWithAccount> get copyWith =>
      throw _privateConstructorUsedError;
}
