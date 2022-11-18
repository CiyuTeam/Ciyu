// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phonetic.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Phonetic extends Phonetic {
  @override
  final String? id;
  @override
  final String? locale;
  @override
  final String? symbol;
  @override
  final String? audio;
  @override
  final Word? word;

  factory _$Phonetic([void Function(PhoneticBuilder)? updates]) =>
      (new PhoneticBuilder()..update(updates))._build();

  _$Phonetic._({this.id, this.locale, this.symbol, this.audio, this.word})
      : super._();

  @override
  Phonetic rebuild(void Function(PhoneticBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PhoneticBuilder toBuilder() => new PhoneticBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Phonetic &&
        id == other.id &&
        locale == other.locale &&
        symbol == other.symbol &&
        audio == other.audio &&
        word == other.word;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), locale.hashCode), symbol.hashCode),
            audio.hashCode),
        word.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Phonetic')
          ..add('id', id)
          ..add('locale', locale)
          ..add('symbol', symbol)
          ..add('audio', audio)
          ..add('word', word))
        .toString();
  }
}

class PhoneticBuilder implements Builder<Phonetic, PhoneticBuilder> {
  _$Phonetic? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _locale;
  String? get locale => _$this._locale;
  set locale(String? locale) => _$this._locale = locale;

  String? _symbol;
  String? get symbol => _$this._symbol;
  set symbol(String? symbol) => _$this._symbol = symbol;

  String? _audio;
  String? get audio => _$this._audio;
  set audio(String? audio) => _$this._audio = audio;

  WordBuilder? _word;
  WordBuilder get word => _$this._word ??= new WordBuilder();
  set word(WordBuilder? word) => _$this._word = word;

  PhoneticBuilder() {
    Phonetic._defaults(this);
  }

  PhoneticBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _locale = $v.locale;
      _symbol = $v.symbol;
      _audio = $v.audio;
      _word = $v.word?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Phonetic other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Phonetic;
  }

  @override
  void update(void Function(PhoneticBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Phonetic build() => _build();

  _$Phonetic _build() {
    _$Phonetic _$result;
    try {
      _$result = _$v ??
          new _$Phonetic._(
              id: id,
              locale: locale,
              symbol: symbol,
              audio: audio,
              word: _word?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'word';
        _word?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Phonetic', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
