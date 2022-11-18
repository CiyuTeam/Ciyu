// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_meet_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateMeetRequest extends CreateMeetRequest {
  @override
  final User? user;
  @override
  final CreateMeetDto? createMeetDto;

  factory _$CreateMeetRequest(
          [void Function(CreateMeetRequestBuilder)? updates]) =>
      (new CreateMeetRequestBuilder()..update(updates))._build();

  _$CreateMeetRequest._({this.user, this.createMeetDto}) : super._();

  @override
  CreateMeetRequest rebuild(void Function(CreateMeetRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateMeetRequestBuilder toBuilder() =>
      new CreateMeetRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateMeetRequest &&
        user == other.user &&
        createMeetDto == other.createMeetDto;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, user.hashCode), createMeetDto.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateMeetRequest')
          ..add('user', user)
          ..add('createMeetDto', createMeetDto))
        .toString();
  }
}

class CreateMeetRequestBuilder
    implements Builder<CreateMeetRequest, CreateMeetRequestBuilder> {
  _$CreateMeetRequest? _$v;

  UserBuilder? _user;
  UserBuilder get user => _$this._user ??= new UserBuilder();
  set user(UserBuilder? user) => _$this._user = user;

  CreateMeetDtoBuilder? _createMeetDto;
  CreateMeetDtoBuilder get createMeetDto =>
      _$this._createMeetDto ??= new CreateMeetDtoBuilder();
  set createMeetDto(CreateMeetDtoBuilder? createMeetDto) =>
      _$this._createMeetDto = createMeetDto;

  CreateMeetRequestBuilder() {
    CreateMeetRequest._defaults(this);
  }

  CreateMeetRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user?.toBuilder();
      _createMeetDto = $v.createMeetDto?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateMeetRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateMeetRequest;
  }

  @override
  void update(void Function(CreateMeetRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateMeetRequest build() => _build();

  _$CreateMeetRequest _build() {
    _$CreateMeetRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateMeetRequest._(
              user: _user?.build(), createMeetDto: _createMeetDto?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
        _$failedField = 'createMeetDto';
        _createMeetDto?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateMeetRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
