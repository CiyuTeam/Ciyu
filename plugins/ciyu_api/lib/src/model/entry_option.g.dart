// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entry_option.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntryOption extends EntryOption {
  @override
  final String? text;
  @override
  final int? offset;
  @override
  final int? length;
  @override
  final BuiltList<Option>? options;

  factory _$EntryOption([void Function(EntryOptionBuilder)? updates]) =>
      (new EntryOptionBuilder()..update(updates))._build();

  _$EntryOption._({this.text, this.offset, this.length, this.options})
      : super._();

  @override
  EntryOption rebuild(void Function(EntryOptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntryOptionBuilder toBuilder() => new EntryOptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntryOption &&
        text == other.text &&
        offset == other.offset &&
        length == other.length &&
        options == other.options;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, text.hashCode), offset.hashCode), length.hashCode),
        options.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntryOption')
          ..add('text', text)
          ..add('offset', offset)
          ..add('length', length)
          ..add('options', options))
        .toString();
  }
}

class EntryOptionBuilder implements Builder<EntryOption, EntryOptionBuilder> {
  _$EntryOption? _$v;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  int? _offset;
  int? get offset => _$this._offset;
  set offset(int? offset) => _$this._offset = offset;

  int? _length;
  int? get length => _$this._length;
  set length(int? length) => _$this._length = length;

  ListBuilder<Option>? _options;
  ListBuilder<Option> get options =>
      _$this._options ??= new ListBuilder<Option>();
  set options(ListBuilder<Option>? options) => _$this._options = options;

  EntryOptionBuilder() {
    EntryOption._defaults(this);
  }

  EntryOptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _text = $v.text;
      _offset = $v.offset;
      _length = $v.length;
      _options = $v.options?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntryOption other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EntryOption;
  }

  @override
  void update(void Function(EntryOptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntryOption build() => _build();

  _$EntryOption _build() {
    _$EntryOption _$result;
    try {
      _$result = _$v ??
          new _$EntryOption._(
              text: text,
              offset: offset,
              length: length,
              options: _options?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'options';
        _options?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EntryOption', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
