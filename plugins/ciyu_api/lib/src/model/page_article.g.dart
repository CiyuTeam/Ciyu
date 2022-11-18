// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_article.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PageArticle extends PageArticle {
  @override
  final int? totalPages;
  @override
  final int? totalElements;
  @override
  final int? size;
  @override
  final BuiltList<Article>? content;
  @override
  final int? number;
  @override
  final Sort? sort;
  @override
  final int? numberOfElements;
  @override
  final bool? first;
  @override
  final bool? last;
  @override
  final PageableObject? pageable;
  @override
  final bool? empty;

  factory _$PageArticle([void Function(PageArticleBuilder)? updates]) =>
      (new PageArticleBuilder()..update(updates))._build();

  _$PageArticle._(
      {this.totalPages,
      this.totalElements,
      this.size,
      this.content,
      this.number,
      this.sort,
      this.numberOfElements,
      this.first,
      this.last,
      this.pageable,
      this.empty})
      : super._();

  @override
  PageArticle rebuild(void Function(PageArticleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PageArticleBuilder toBuilder() => new PageArticleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PageArticle &&
        totalPages == other.totalPages &&
        totalElements == other.totalElements &&
        size == other.size &&
        content == other.content &&
        number == other.number &&
        sort == other.sort &&
        numberOfElements == other.numberOfElements &&
        first == other.first &&
        last == other.last &&
        pageable == other.pageable &&
        empty == other.empty;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, totalPages.hashCode),
                                            totalElements.hashCode),
                                        size.hashCode),
                                    content.hashCode),
                                number.hashCode),
                            sort.hashCode),
                        numberOfElements.hashCode),
                    first.hashCode),
                last.hashCode),
            pageable.hashCode),
        empty.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PageArticle')
          ..add('totalPages', totalPages)
          ..add('totalElements', totalElements)
          ..add('size', size)
          ..add('content', content)
          ..add('number', number)
          ..add('sort', sort)
          ..add('numberOfElements', numberOfElements)
          ..add('first', first)
          ..add('last', last)
          ..add('pageable', pageable)
          ..add('empty', empty))
        .toString();
  }
}

class PageArticleBuilder implements Builder<PageArticle, PageArticleBuilder> {
  _$PageArticle? _$v;

  int? _totalPages;
  int? get totalPages => _$this._totalPages;
  set totalPages(int? totalPages) => _$this._totalPages = totalPages;

  int? _totalElements;
  int? get totalElements => _$this._totalElements;
  set totalElements(int? totalElements) =>
      _$this._totalElements = totalElements;

  int? _size;
  int? get size => _$this._size;
  set size(int? size) => _$this._size = size;

  ListBuilder<Article>? _content;
  ListBuilder<Article> get content =>
      _$this._content ??= new ListBuilder<Article>();
  set content(ListBuilder<Article>? content) => _$this._content = content;

  int? _number;
  int? get number => _$this._number;
  set number(int? number) => _$this._number = number;

  SortBuilder? _sort;
  SortBuilder get sort => _$this._sort ??= new SortBuilder();
  set sort(SortBuilder? sort) => _$this._sort = sort;

  int? _numberOfElements;
  int? get numberOfElements => _$this._numberOfElements;
  set numberOfElements(int? numberOfElements) =>
      _$this._numberOfElements = numberOfElements;

  bool? _first;
  bool? get first => _$this._first;
  set first(bool? first) => _$this._first = first;

  bool? _last;
  bool? get last => _$this._last;
  set last(bool? last) => _$this._last = last;

  PageableObjectBuilder? _pageable;
  PageableObjectBuilder get pageable =>
      _$this._pageable ??= new PageableObjectBuilder();
  set pageable(PageableObjectBuilder? pageable) => _$this._pageable = pageable;

  bool? _empty;
  bool? get empty => _$this._empty;
  set empty(bool? empty) => _$this._empty = empty;

  PageArticleBuilder() {
    PageArticle._defaults(this);
  }

  PageArticleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalPages = $v.totalPages;
      _totalElements = $v.totalElements;
      _size = $v.size;
      _content = $v.content?.toBuilder();
      _number = $v.number;
      _sort = $v.sort?.toBuilder();
      _numberOfElements = $v.numberOfElements;
      _first = $v.first;
      _last = $v.last;
      _pageable = $v.pageable?.toBuilder();
      _empty = $v.empty;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PageArticle other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PageArticle;
  }

  @override
  void update(void Function(PageArticleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PageArticle build() => _build();

  _$PageArticle _build() {
    _$PageArticle _$result;
    try {
      _$result = _$v ??
          new _$PageArticle._(
              totalPages: totalPages,
              totalElements: totalElements,
              size: size,
              content: _content?.build(),
              number: number,
              sort: _sort?.build(),
              numberOfElements: numberOfElements,
              first: first,
              last: last,
              pageable: _pageable?.build(),
              empty: empty);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'content';
        _content?.build();

        _$failedField = 'sort';
        _sort?.build();

        _$failedField = 'pageable';
        _pageable?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PageArticle', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
