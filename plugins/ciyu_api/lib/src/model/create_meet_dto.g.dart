// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_meet_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateMeetDto extends CreateMeetDto {
  @override
  final String? meaningId;
  @override
  final String? articleId;
  @override
  final double? quality;

  factory _$CreateMeetDto([void Function(CreateMeetDtoBuilder)? updates]) =>
      (new CreateMeetDtoBuilder()..update(updates))._build();

  _$CreateMeetDto._({this.meaningId, this.articleId, this.quality}) : super._();

  @override
  CreateMeetDto rebuild(void Function(CreateMeetDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateMeetDtoBuilder toBuilder() => new CreateMeetDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateMeetDto &&
        meaningId == other.meaningId &&
        articleId == other.articleId &&
        quality == other.quality;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, meaningId.hashCode), articleId.hashCode), quality.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateMeetDto')
          ..add('meaningId', meaningId)
          ..add('articleId', articleId)
          ..add('quality', quality))
        .toString();
  }
}

class CreateMeetDtoBuilder
    implements Builder<CreateMeetDto, CreateMeetDtoBuilder> {
  _$CreateMeetDto? _$v;

  String? _meaningId;
  String? get meaningId => _$this._meaningId;
  set meaningId(String? meaningId) => _$this._meaningId = meaningId;

  String? _articleId;
  String? get articleId => _$this._articleId;
  set articleId(String? articleId) => _$this._articleId = articleId;

  double? _quality;
  double? get quality => _$this._quality;
  set quality(double? quality) => _$this._quality = quality;

  CreateMeetDtoBuilder() {
    CreateMeetDto._defaults(this);
  }

  CreateMeetDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _meaningId = $v.meaningId;
      _articleId = $v.articleId;
      _quality = $v.quality;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateMeetDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateMeetDto;
  }

  @override
  void update(void Function(CreateMeetDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateMeetDto build() => _build();

  _$CreateMeetDto _build() {
    final _$result = _$v ??
        new _$CreateMeetDto._(
            meaningId: meaningId, articleId: articleId, quality: quality);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
