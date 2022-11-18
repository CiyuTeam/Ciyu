// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Word extends Word {
  @override
  final String? id;
  @override
  final BuiltList<Phonetic>? phonetics;

  factory _$Word([void Function(WordBuilder)? updates]) =>
      (new WordBuilder()..update(updates))._build();

  _$Word._({this.id, this.phonetics}) : super._();

  @override
  Word rebuild(void Function(WordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WordBuilder toBuilder() => new WordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Word && id == other.id && phonetics == other.phonetics;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), phonetics.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Word')
          ..add('id', id)
          ..add('phonetics', phonetics))
        .toString();
  }
}

class WordBuilder implements Builder<Word, WordBuilder> {
  _$Word? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ListBuilder<Phonetic>? _phonetics;
  ListBuilder<Phonetic> get phonetics =>
      _$this._phonetics ??= new ListBuilder<Phonetic>();
  set phonetics(ListBuilder<Phonetic>? phonetics) =>
      _$this._phonetics = phonetics;

  WordBuilder() {
    Word._defaults(this);
  }

  WordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _phonetics = $v.phonetics?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Word other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Word;
  }

  @override
  void update(void Function(WordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Word build() => _build();

  _$Word _build() {
    _$Word _$result;
    try {
      _$result = _$v ?? new _$Word._(id: id, phonetics: _phonetics?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'phonetics';
        _phonetics?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Word', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
