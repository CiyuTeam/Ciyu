// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suggest.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Suggest extends Suggest {
  @override
  final BuiltList<SuggestionEntryOption>? suggestions;

  factory _$Suggest([void Function(SuggestBuilder)? updates]) =>
      (new SuggestBuilder()..update(updates))._build();

  _$Suggest._({this.suggestions}) : super._();

  @override
  Suggest rebuild(void Function(SuggestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SuggestBuilder toBuilder() => new SuggestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Suggest && suggestions == other.suggestions;
  }

  @override
  int get hashCode {
    return $jf($jc(0, suggestions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Suggest')
          ..add('suggestions', suggestions))
        .toString();
  }
}

class SuggestBuilder implements Builder<Suggest, SuggestBuilder> {
  _$Suggest? _$v;

  ListBuilder<SuggestionEntryOption>? _suggestions;
  ListBuilder<SuggestionEntryOption> get suggestions =>
      _$this._suggestions ??= new ListBuilder<SuggestionEntryOption>();
  set suggestions(ListBuilder<SuggestionEntryOption>? suggestions) =>
      _$this._suggestions = suggestions;

  SuggestBuilder() {
    Suggest._defaults(this);
  }

  SuggestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _suggestions = $v.suggestions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Suggest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Suggest;
  }

  @override
  void update(void Function(SuggestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Suggest build() => _build();

  _$Suggest _build() {
    _$Suggest _$result;
    try {
      _$result = _$v ?? new _$Suggest._(suggestions: _suggestions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'suggestions';
        _suggestions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Suggest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
