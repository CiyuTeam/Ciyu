// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_bond_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateBondRequest extends CreateBondRequest {
  @override
  final User? user;
  @override
  final CreateBondDto? createBondDto;

  factory _$CreateBondRequest(
          [void Function(CreateBondRequestBuilder)? updates]) =>
      (new CreateBondRequestBuilder()..update(updates))._build();

  _$CreateBondRequest._({this.user, this.createBondDto}) : super._();

  @override
  CreateBondRequest rebuild(void Function(CreateBondRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateBondRequestBuilder toBuilder() =>
      new CreateBondRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateBondRequest &&
        user == other.user &&
        createBondDto == other.createBondDto;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, user.hashCode), createBondDto.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateBondRequest')
          ..add('user', user)
          ..add('createBondDto', createBondDto))
        .toString();
  }
}

class CreateBondRequestBuilder
    implements Builder<CreateBondRequest, CreateBondRequestBuilder> {
  _$CreateBondRequest? _$v;

  UserBuilder? _user;
  UserBuilder get user => _$this._user ??= new UserBuilder();
  set user(UserBuilder? user) => _$this._user = user;

  CreateBondDtoBuilder? _createBondDto;
  CreateBondDtoBuilder get createBondDto =>
      _$this._createBondDto ??= new CreateBondDtoBuilder();
  set createBondDto(CreateBondDtoBuilder? createBondDto) =>
      _$this._createBondDto = createBondDto;

  CreateBondRequestBuilder() {
    CreateBondRequest._defaults(this);
  }

  CreateBondRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user?.toBuilder();
      _createBondDto = $v.createBondDto?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateBondRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateBondRequest;
  }

  @override
  void update(void Function(CreateBondRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateBondRequest build() => _build();

  _$CreateBondRequest _build() {
    _$CreateBondRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateBondRequest._(
              user: _user?.build(), createBondDto: _createBondDto?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
        _$failedField = 'createBondDto';
        _createBondDto?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateBondRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
