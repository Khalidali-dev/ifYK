// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'explore_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExploreItem _$ExploreItemFromJson(Map<String, dynamic> json) {
  return _ExploreItem.fromJson(json);
}

/// @nodoc
mixin _$ExploreItem {
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExploreItemCopyWith<ExploreItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExploreItemCopyWith<$Res> {
  factory $ExploreItemCopyWith(
          ExploreItem value, $Res Function(ExploreItem) then) =
      _$ExploreItemCopyWithImpl<$Res, ExploreItem>;
  @useResult
  $Res call({String name, String image});
}

/// @nodoc
class _$ExploreItemCopyWithImpl<$Res, $Val extends ExploreItem>
    implements $ExploreItemCopyWith<$Res> {
  _$ExploreItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExploreItemImplCopyWith<$Res>
    implements $ExploreItemCopyWith<$Res> {
  factory _$$ExploreItemImplCopyWith(
          _$ExploreItemImpl value, $Res Function(_$ExploreItemImpl) then) =
      __$$ExploreItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String image});
}

/// @nodoc
class __$$ExploreItemImplCopyWithImpl<$Res>
    extends _$ExploreItemCopyWithImpl<$Res, _$ExploreItemImpl>
    implements _$$ExploreItemImplCopyWith<$Res> {
  __$$ExploreItemImplCopyWithImpl(
      _$ExploreItemImpl _value, $Res Function(_$ExploreItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? image = null,
  }) {
    return _then(_$ExploreItemImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExploreItemImpl with DiagnosticableTreeMixin implements _ExploreItem {
  const _$ExploreItemImpl({required this.name, required this.image});

  factory _$ExploreItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExploreItemImplFromJson(json);

  @override
  final String name;
  @override
  final String image;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExploreItem(name: $name, image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ExploreItem'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExploreItemImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExploreItemImplCopyWith<_$ExploreItemImpl> get copyWith =>
      __$$ExploreItemImplCopyWithImpl<_$ExploreItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExploreItemImplToJson(
      this,
    );
  }
}

abstract class _ExploreItem implements ExploreItem {
  const factory _ExploreItem(
      {required final String name,
      required final String image}) = _$ExploreItemImpl;

  factory _ExploreItem.fromJson(Map<String, dynamic> json) =
      _$ExploreItemImpl.fromJson;

  @override
  String get name;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$ExploreItemImplCopyWith<_$ExploreItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
