// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pageable.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Pageable extends Pageable {
  @override
  final int? page;
  @override
  final int? size;
  @override
  final BuiltList<String>? sort;

  factory _$Pageable([void Function(PageableBuilder)? updates]) =>
      (new PageableBuilder()..update(updates))._build();

  _$Pageable._({this.page, this.size, this.sort}) : super._();

  @override
  Pageable rebuild(void Function(PageableBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PageableBuilder toBuilder() => new PageableBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Pageable &&
        page == other.page &&
        size == other.size &&
        sort == other.sort;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, page.hashCode), size.hashCode), sort.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Pageable')
          ..add('page', page)
          ..add('size', size)
          ..add('sort', sort))
        .toString();
  }
}

class PageableBuilder implements Builder<Pageable, PageableBuilder> {
  _$Pageable? _$v;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _size;
  int? get size => _$this._size;
  set size(int? size) => _$this._size = size;

  ListBuilder<String>? _sort;
  ListBuilder<String> get sort => _$this._sort ??= new ListBuilder<String>();
  set sort(ListBuilder<String>? sort) => _$this._sort = sort;

  PageableBuilder() {
    Pageable._defaults(this);
  }

  PageableBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _page = $v.page;
      _size = $v.size;
      _sort = $v.sort?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Pageable other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Pageable;
  }

  @override
  void update(void Function(PageableBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Pageable build() => _build();

  _$Pageable _build() {
    _$Pageable _$result;
    try {
      _$result =
          _$v ?? new _$Pageable._(page: page, size: size, sort: _sort?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sort';
        _sort?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Pageable', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
