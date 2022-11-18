// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bond.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Bond extends Bond {
  @override
  final String? id;
  @override
  final Word word;
  @override
  final BuiltList<Meet>? meets;

  factory _$Bond([void Function(BondBuilder)? updates]) =>
      (new BondBuilder()..update(updates))._build();

  _$Bond._({this.id, required this.word, this.meets}) : super._() {
    BuiltValueNullFieldError.checkNotNull(word, r'Bond', 'word');
  }

  @override
  Bond rebuild(void Function(BondBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BondBuilder toBuilder() => new BondBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Bond &&
        id == other.id &&
        word == other.word &&
        meets == other.meets;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), word.hashCode), meets.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Bond')
          ..add('id', id)
          ..add('word', word)
          ..add('meets', meets))
        .toString();
  }
}

class BondBuilder implements Builder<Bond, BondBuilder> {
  _$Bond? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  WordBuilder? _word;
  WordBuilder get word => _$this._word ??= new WordBuilder();
  set word(WordBuilder? word) => _$this._word = word;

  ListBuilder<Meet>? _meets;
  ListBuilder<Meet> get meets => _$this._meets ??= new ListBuilder<Meet>();
  set meets(ListBuilder<Meet>? meets) => _$this._meets = meets;

  BondBuilder() {
    Bond._defaults(this);
  }

  BondBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _word = $v.word.toBuilder();
      _meets = $v.meets?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Bond other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Bond;
  }

  @override
  void update(void Function(BondBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Bond build() => _build();

  _$Bond _build() {
    _$Bond _$result;
    try {
      _$result = _$v ??
          new _$Bond._(id: id, word: word.build(), meets: _meets?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'word';
        word.build();
        _$failedField = 'meets';
        _meets?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Bond', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
