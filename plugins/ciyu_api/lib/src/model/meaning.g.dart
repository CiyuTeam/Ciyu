// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meaning.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Meaning extends Meaning {
  @override
  final String? id;
  @override
  final String? definition;
  @override
  final Word? word;

  factory _$Meaning([void Function(MeaningBuilder)? updates]) =>
      (new MeaningBuilder()..update(updates))._build();

  _$Meaning._({this.id, this.definition, this.word}) : super._();

  @override
  Meaning rebuild(void Function(MeaningBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MeaningBuilder toBuilder() => new MeaningBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Meaning &&
        id == other.id &&
        definition == other.definition &&
        word == other.word;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, id.hashCode), definition.hashCode), word.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Meaning')
          ..add('id', id)
          ..add('definition', definition)
          ..add('word', word))
        .toString();
  }
}

class MeaningBuilder implements Builder<Meaning, MeaningBuilder> {
  _$Meaning? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _definition;
  String? get definition => _$this._definition;
  set definition(String? definition) => _$this._definition = definition;

  WordBuilder? _word;
  WordBuilder get word => _$this._word ??= new WordBuilder();
  set word(WordBuilder? word) => _$this._word = word;

  MeaningBuilder() {
    Meaning._defaults(this);
  }

  MeaningBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _definition = $v.definition;
      _word = $v.word?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Meaning other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Meaning;
  }

  @override
  void update(void Function(MeaningBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Meaning build() => _build();

  _$Meaning _build() {
    _$Meaning _$result;
    try {
      _$result = _$v ??
          new _$Meaning._(id: id, definition: definition, word: _word?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'word';
        _word?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Meaning', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
