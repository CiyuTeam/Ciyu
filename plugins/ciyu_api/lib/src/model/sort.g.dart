// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sort.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Sort extends Sort {
  @override
  final bool? empty;
  @override
  final bool? unsorted;
  @override
  final bool? sorted;

  factory _$Sort([void Function(SortBuilder)? updates]) =>
      (new SortBuilder()..update(updates))._build();

  _$Sort._({this.empty, this.unsorted, this.sorted}) : super._();

  @override
  Sort rebuild(void Function(SortBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SortBuilder toBuilder() => new SortBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Sort &&
        empty == other.empty &&
        unsorted == other.unsorted &&
        sorted == other.sorted;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, empty.hashCode), unsorted.hashCode), sorted.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Sort')
          ..add('empty', empty)
          ..add('unsorted', unsorted)
          ..add('sorted', sorted))
        .toString();
  }
}

class SortBuilder implements Builder<Sort, SortBuilder> {
  _$Sort? _$v;

  bool? _empty;
  bool? get empty => _$this._empty;
  set empty(bool? empty) => _$this._empty = empty;

  bool? _unsorted;
  bool? get unsorted => _$this._unsorted;
  set unsorted(bool? unsorted) => _$this._unsorted = unsorted;

  bool? _sorted;
  bool? get sorted => _$this._sorted;
  set sorted(bool? sorted) => _$this._sorted = sorted;

  SortBuilder() {
    Sort._defaults(this);
  }

  SortBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _empty = $v.empty;
      _unsorted = $v.unsorted;
      _sorted = $v.sorted;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Sort other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Sort;
  }

  @override
  void update(void Function(SortBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Sort build() => _build();

  _$Sort _build() {
    final _$result =
        _$v ?? new _$Sort._(empty: empty, unsorted: unsorted, sorted: sorted);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
