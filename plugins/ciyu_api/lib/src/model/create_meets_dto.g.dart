// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_meets_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateMeetsDto extends CreateMeetsDto {
  @override
  final String? articleId;
  @override
  final BuiltList<String>? meaningIds;

  factory _$CreateMeetsDto([void Function(CreateMeetsDtoBuilder)? updates]) =>
      (new CreateMeetsDtoBuilder()..update(updates))._build();

  _$CreateMeetsDto._({this.articleId, this.meaningIds}) : super._();

  @override
  CreateMeetsDto rebuild(void Function(CreateMeetsDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateMeetsDtoBuilder toBuilder() =>
      new CreateMeetsDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateMeetsDto &&
        articleId == other.articleId &&
        meaningIds == other.meaningIds;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, articleId.hashCode), meaningIds.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateMeetsDto')
          ..add('articleId', articleId)
          ..add('meaningIds', meaningIds))
        .toString();
  }
}

class CreateMeetsDtoBuilder
    implements Builder<CreateMeetsDto, CreateMeetsDtoBuilder> {
  _$CreateMeetsDto? _$v;

  String? _articleId;
  String? get articleId => _$this._articleId;
  set articleId(String? articleId) => _$this._articleId = articleId;

  ListBuilder<String>? _meaningIds;
  ListBuilder<String> get meaningIds =>
      _$this._meaningIds ??= new ListBuilder<String>();
  set meaningIds(ListBuilder<String>? meaningIds) =>
      _$this._meaningIds = meaningIds;

  CreateMeetsDtoBuilder() {
    CreateMeetsDto._defaults(this);
  }

  CreateMeetsDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _articleId = $v.articleId;
      _meaningIds = $v.meaningIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateMeetsDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateMeetsDto;
  }

  @override
  void update(void Function(CreateMeetsDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateMeetsDto build() => _build();

  _$CreateMeetsDto _build() {
    _$CreateMeetsDto _$result;
    try {
      _$result = _$v ??
          new _$CreateMeetsDto._(
              articleId: articleId, meaningIds: _meaningIds?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'meaningIds';
        _meaningIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateMeetsDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
