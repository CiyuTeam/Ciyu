// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meet.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Meet extends Meet {
  @override
  final String? id;
  @override
  final String? articleId;
  @override
  final double? quality;
  @override
  final DateTime? createdTime;
  @override
  final Meaning? meaning;
  @override
  final Bond? bond;

  factory _$Meet([void Function(MeetBuilder)? updates]) =>
      (new MeetBuilder()..update(updates))._build();

  _$Meet._(
      {this.id,
      this.articleId,
      this.quality,
      this.createdTime,
      this.meaning,
      this.bond})
      : super._();

  @override
  Meet rebuild(void Function(MeetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MeetBuilder toBuilder() => new MeetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Meet &&
        id == other.id &&
        articleId == other.articleId &&
        quality == other.quality &&
        createdTime == other.createdTime &&
        meaning == other.meaning &&
        bond == other.bond;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, id.hashCode), articleId.hashCode),
                    quality.hashCode),
                createdTime.hashCode),
            meaning.hashCode),
        bond.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Meet')
          ..add('id', id)
          ..add('articleId', articleId)
          ..add('quality', quality)
          ..add('createdTime', createdTime)
          ..add('meaning', meaning)
          ..add('bond', bond))
        .toString();
  }
}

class MeetBuilder implements Builder<Meet, MeetBuilder> {
  _$Meet? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _articleId;
  String? get articleId => _$this._articleId;
  set articleId(String? articleId) => _$this._articleId = articleId;

  double? _quality;
  double? get quality => _$this._quality;
  set quality(double? quality) => _$this._quality = quality;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  MeaningBuilder? _meaning;
  MeaningBuilder get meaning => _$this._meaning ??= new MeaningBuilder();
  set meaning(MeaningBuilder? meaning) => _$this._meaning = meaning;

  BondBuilder? _bond;
  BondBuilder get bond => _$this._bond ??= new BondBuilder();
  set bond(BondBuilder? bond) => _$this._bond = bond;

  MeetBuilder() {
    Meet._defaults(this);
  }

  MeetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _articleId = $v.articleId;
      _quality = $v.quality;
      _createdTime = $v.createdTime;
      _meaning = $v.meaning?.toBuilder();
      _bond = $v.bond?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Meet other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Meet;
  }

  @override
  void update(void Function(MeetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Meet build() => _build();

  _$Meet _build() {
    _$Meet _$result;
    try {
      _$result = _$v ??
          new _$Meet._(
              id: id,
              articleId: articleId,
              quality: quality,
              createdTime: createdTime,
              meaning: _meaning?.build(),
              bond: _bond?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'meaning';
        _meaning?.build();
        _$failedField = 'bond';
        _bond?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Meet', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
