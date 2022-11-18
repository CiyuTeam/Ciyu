// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nested_meta_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NestedMetaData extends NestedMetaData {
  @override
  final String? field;
  @override
  final int? offset;
  @override
  final NestedMetaData? child;

  factory _$NestedMetaData([void Function(NestedMetaDataBuilder)? updates]) =>
      (new NestedMetaDataBuilder()..update(updates))._build();

  _$NestedMetaData._({this.field, this.offset, this.child}) : super._();

  @override
  NestedMetaData rebuild(void Function(NestedMetaDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NestedMetaDataBuilder toBuilder() =>
      new NestedMetaDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NestedMetaData &&
        field == other.field &&
        offset == other.offset &&
        child == other.child;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, field.hashCode), offset.hashCode), child.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NestedMetaData')
          ..add('field', field)
          ..add('offset', offset)
          ..add('child', child))
        .toString();
  }
}

class NestedMetaDataBuilder
    implements Builder<NestedMetaData, NestedMetaDataBuilder> {
  _$NestedMetaData? _$v;

  String? _field;
  String? get field => _$this._field;
  set field(String? field) => _$this._field = field;

  int? _offset;
  int? get offset => _$this._offset;
  set offset(int? offset) => _$this._offset = offset;

  NestedMetaDataBuilder? _child;
  NestedMetaDataBuilder get child =>
      _$this._child ??= new NestedMetaDataBuilder();
  set child(NestedMetaDataBuilder? child) => _$this._child = child;

  NestedMetaDataBuilder() {
    NestedMetaData._defaults(this);
  }

  NestedMetaDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _field = $v.field;
      _offset = $v.offset;
      _child = $v.child?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NestedMetaData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NestedMetaData;
  }

  @override
  void update(void Function(NestedMetaDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NestedMetaData build() => _build();

  _$NestedMetaData _build() {
    _$NestedMetaData _$result;
    try {
      _$result = _$v ??
          new _$NestedMetaData._(
              field: field, offset: offset, child: _child?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'child';
        _child?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NestedMetaData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
