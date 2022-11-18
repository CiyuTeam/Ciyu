// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_bonds_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBondsDto extends GetBondsDto {
  @override
  final String? id;
  @override
  final Word? word;
  @override
  final double? strength;

  factory _$GetBondsDto([void Function(GetBondsDtoBuilder)? updates]) =>
      (new GetBondsDtoBuilder()..update(updates))._build();

  _$GetBondsDto._({this.id, this.word, this.strength}) : super._();

  @override
  GetBondsDto rebuild(void Function(GetBondsDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBondsDtoBuilder toBuilder() => new GetBondsDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBondsDto &&
        id == other.id &&
        word == other.word &&
        strength == other.strength;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), word.hashCode), strength.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetBondsDto')
          ..add('id', id)
          ..add('word', word)
          ..add('strength', strength))
        .toString();
  }
}

class GetBondsDtoBuilder implements Builder<GetBondsDto, GetBondsDtoBuilder> {
  _$GetBondsDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  WordBuilder? _word;
  WordBuilder get word => _$this._word ??= new WordBuilder();
  set word(WordBuilder? word) => _$this._word = word;

  double? _strength;
  double? get strength => _$this._strength;
  set strength(double? strength) => _$this._strength = strength;

  GetBondsDtoBuilder() {
    GetBondsDto._defaults(this);
  }

  GetBondsDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _word = $v.word?.toBuilder();
      _strength = $v.strength;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetBondsDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBondsDto;
  }

  @override
  void update(void Function(GetBondsDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBondsDto build() => _build();

  _$GetBondsDto _build() {
    _$GetBondsDto _$result;
    try {
      _$result = _$v ??
          new _$GetBondsDto._(id: id, word: _word?.build(), strength: strength);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'word';
        _word?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetBondsDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
