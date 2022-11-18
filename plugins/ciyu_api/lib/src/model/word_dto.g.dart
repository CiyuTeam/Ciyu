// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WordDto extends WordDto {
  @override
  final String? id;
  @override
  final BuiltList<Meaning>? meanings;
  @override
  final BuiltList<Phonetic>? phonetics;
  @override
  final bool? hasBond;

  factory _$WordDto([void Function(WordDtoBuilder)? updates]) =>
      (new WordDtoBuilder()..update(updates))._build();

  _$WordDto._({this.id, this.meanings, this.phonetics, this.hasBond})
      : super._();

  @override
  WordDto rebuild(void Function(WordDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WordDtoBuilder toBuilder() => new WordDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WordDto &&
        id == other.id &&
        meanings == other.meanings &&
        phonetics == other.phonetics &&
        hasBond == other.hasBond;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), meanings.hashCode), phonetics.hashCode),
        hasBond.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WordDto')
          ..add('id', id)
          ..add('meanings', meanings)
          ..add('phonetics', phonetics)
          ..add('hasBond', hasBond))
        .toString();
  }
}

class WordDtoBuilder implements Builder<WordDto, WordDtoBuilder> {
  _$WordDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ListBuilder<Meaning>? _meanings;
  ListBuilder<Meaning> get meanings =>
      _$this._meanings ??= new ListBuilder<Meaning>();
  set meanings(ListBuilder<Meaning>? meanings) => _$this._meanings = meanings;

  ListBuilder<Phonetic>? _phonetics;
  ListBuilder<Phonetic> get phonetics =>
      _$this._phonetics ??= new ListBuilder<Phonetic>();
  set phonetics(ListBuilder<Phonetic>? phonetics) =>
      _$this._phonetics = phonetics;

  bool? _hasBond;
  bool? get hasBond => _$this._hasBond;
  set hasBond(bool? hasBond) => _$this._hasBond = hasBond;

  WordDtoBuilder() {
    WordDto._defaults(this);
  }

  WordDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _meanings = $v.meanings?.toBuilder();
      _phonetics = $v.phonetics?.toBuilder();
      _hasBond = $v.hasBond;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WordDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WordDto;
  }

  @override
  void update(void Function(WordDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WordDto build() => _build();

  _$WordDto _build() {
    _$WordDto _$result;
    try {
      _$result = _$v ??
          new _$WordDto._(
              id: id,
              meanings: _meanings?.build(),
              phonetics: _phonetics?.build(),
              hasBond: hasBond);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'meanings';
        _meanings?.build();
        _$failedField = 'phonetics';
        _phonetics?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'WordDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
