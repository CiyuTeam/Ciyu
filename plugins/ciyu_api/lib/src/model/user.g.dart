// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$User extends User {
  @override
  final String? id;
  @override
  final String phone;
  @override
  final String? password;
  @override
  final String? nickname;
  @override
  final DateTime? createdDate;
  @override
  final DateTime? lastModifiedDate;

  factory _$User([void Function(UserBuilder)? updates]) =>
      (new UserBuilder()..update(updates))._build();

  _$User._(
      {this.id,
      required this.phone,
      this.password,
      this.nickname,
      this.createdDate,
      this.lastModifiedDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(phone, r'User', 'phone');
  }

  @override
  User rebuild(void Function(UserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBuilder toBuilder() => new UserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
        id == other.id &&
        phone == other.phone &&
        password == other.password &&
        nickname == other.nickname &&
        createdDate == other.createdDate &&
        lastModifiedDate == other.lastModifiedDate;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, id.hashCode), phone.hashCode),
                    password.hashCode),
                nickname.hashCode),
            createdDate.hashCode),
        lastModifiedDate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'User')
          ..add('id', id)
          ..add('phone', phone)
          ..add('password', password)
          ..add('nickname', nickname)
          ..add('createdDate', createdDate)
          ..add('lastModifiedDate', lastModifiedDate))
        .toString();
  }
}

class UserBuilder implements Builder<User, UserBuilder> {
  _$User? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _nickname;
  String? get nickname => _$this._nickname;
  set nickname(String? nickname) => _$this._nickname = nickname;

  DateTime? _createdDate;
  DateTime? get createdDate => _$this._createdDate;
  set createdDate(DateTime? createdDate) => _$this._createdDate = createdDate;

  DateTime? _lastModifiedDate;
  DateTime? get lastModifiedDate => _$this._lastModifiedDate;
  set lastModifiedDate(DateTime? lastModifiedDate) =>
      _$this._lastModifiedDate = lastModifiedDate;

  UserBuilder() {
    User._defaults(this);
  }

  UserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _phone = $v.phone;
      _password = $v.password;
      _nickname = $v.nickname;
      _createdDate = $v.createdDate;
      _lastModifiedDate = $v.lastModifiedDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(User other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$User;
  }

  @override
  void update(void Function(UserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  User build() => _build();

  _$User _build() {
    final _$result = _$v ??
        new _$User._(
            id: id,
            phone:
                BuiltValueNullFieldError.checkNotNull(phone, r'User', 'phone'),
            password: password,
            nickname: nickname,
            createdDate: createdDate,
            lastModifiedDate: lastModifiedDate);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
