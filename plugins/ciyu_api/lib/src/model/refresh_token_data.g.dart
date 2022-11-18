// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RefreshTokenData extends RefreshTokenData {
  @override
  final String? refreshToken;

  factory _$RefreshTokenData(
          [void Function(RefreshTokenDataBuilder)? updates]) =>
      (new RefreshTokenDataBuilder()..update(updates))._build();

  _$RefreshTokenData._({this.refreshToken}) : super._();

  @override
  RefreshTokenData rebuild(void Function(RefreshTokenDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RefreshTokenDataBuilder toBuilder() =>
      new RefreshTokenDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RefreshTokenData && refreshToken == other.refreshToken;
  }

  @override
  int get hashCode {
    return $jf($jc(0, refreshToken.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RefreshTokenData')
          ..add('refreshToken', refreshToken))
        .toString();
  }
}

class RefreshTokenDataBuilder
    implements Builder<RefreshTokenData, RefreshTokenDataBuilder> {
  _$RefreshTokenData? _$v;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  RefreshTokenDataBuilder() {
    RefreshTokenData._defaults(this);
  }

  RefreshTokenDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _refreshToken = $v.refreshToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RefreshTokenData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RefreshTokenData;
  }

  @override
  void update(void Function(RefreshTokenDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RefreshTokenData build() => _build();

  _$RefreshTokenData _build() {
    final _$result =
        _$v ?? new _$RefreshTokenData._(refreshToken: refreshToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
