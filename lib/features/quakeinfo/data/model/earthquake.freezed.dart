// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'earthquake.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EarthquakeResponse _$EarthquakeResponseFromJson(Map<String, dynamic> json) {
  return _EarthquakeResponse.fromJson(json);
}

/// @nodoc
mixin _$EarthquakeResponse {
  String get type => throw _privateConstructorUsedError;
  Metadata get metadata => throw _privateConstructorUsedError;
  List<Feature> get features => throw _privateConstructorUsedError;
  List<double> get bbox => throw _privateConstructorUsedError;

  /// Serializes this EarthquakeResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EarthquakeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EarthquakeResponseCopyWith<EarthquakeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarthquakeResponseCopyWith<$Res> {
  factory $EarthquakeResponseCopyWith(
          EarthquakeResponse value, $Res Function(EarthquakeResponse) then) =
      _$EarthquakeResponseCopyWithImpl<$Res, EarthquakeResponse>;
  @useResult
  $Res call(
      {String type,
      Metadata metadata,
      List<Feature> features,
      List<double> bbox});

  $MetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class _$EarthquakeResponseCopyWithImpl<$Res, $Val extends EarthquakeResponse>
    implements $EarthquakeResponseCopyWith<$Res> {
  _$EarthquakeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EarthquakeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? metadata = null,
    Object? features = null,
    Object? bbox = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Metadata,
      features: null == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as List<Feature>,
      bbox: null == bbox
          ? _value.bbox
          : bbox // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ) as $Val);
  }

  /// Create a copy of EarthquakeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetadataCopyWith<$Res> get metadata {
    return $MetadataCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EarthquakeResponseImplCopyWith<$Res>
    implements $EarthquakeResponseCopyWith<$Res> {
  factory _$$EarthquakeResponseImplCopyWith(_$EarthquakeResponseImpl value,
          $Res Function(_$EarthquakeResponseImpl) then) =
      __$$EarthquakeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      Metadata metadata,
      List<Feature> features,
      List<double> bbox});

  @override
  $MetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class __$$EarthquakeResponseImplCopyWithImpl<$Res>
    extends _$EarthquakeResponseCopyWithImpl<$Res, _$EarthquakeResponseImpl>
    implements _$$EarthquakeResponseImplCopyWith<$Res> {
  __$$EarthquakeResponseImplCopyWithImpl(_$EarthquakeResponseImpl _value,
      $Res Function(_$EarthquakeResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of EarthquakeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? metadata = null,
    Object? features = null,
    Object? bbox = null,
  }) {
    return _then(_$EarthquakeResponseImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Metadata,
      features: null == features
          ? _value._features
          : features // ignore: cast_nullable_to_non_nullable
              as List<Feature>,
      bbox: null == bbox
          ? _value._bbox
          : bbox // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EarthquakeResponseImpl implements _EarthquakeResponse {
  const _$EarthquakeResponseImpl(
      {required this.type,
      required this.metadata,
      required final List<Feature> features,
      required final List<double> bbox})
      : _features = features,
        _bbox = bbox;

  factory _$EarthquakeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$EarthquakeResponseImplFromJson(json);

  @override
  final String type;
  @override
  final Metadata metadata;
  final List<Feature> _features;
  @override
  List<Feature> get features {
    if (_features is EqualUnmodifiableListView) return _features;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_features);
  }

  final List<double> _bbox;
  @override
  List<double> get bbox {
    if (_bbox is EqualUnmodifiableListView) return _bbox;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bbox);
  }

  @override
  String toString() {
    return 'EarthquakeResponse(type: $type, metadata: $metadata, features: $features, bbox: $bbox)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EarthquakeResponseImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            const DeepCollectionEquality().equals(other._features, _features) &&
            const DeepCollectionEquality().equals(other._bbox, _bbox));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      metadata,
      const DeepCollectionEquality().hash(_features),
      const DeepCollectionEquality().hash(_bbox));

  /// Create a copy of EarthquakeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EarthquakeResponseImplCopyWith<_$EarthquakeResponseImpl> get copyWith =>
      __$$EarthquakeResponseImplCopyWithImpl<_$EarthquakeResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EarthquakeResponseImplToJson(
      this,
    );
  }
}

abstract class _EarthquakeResponse implements EarthquakeResponse {
  const factory _EarthquakeResponse(
      {required final String type,
      required final Metadata metadata,
      required final List<Feature> features,
      required final List<double> bbox}) = _$EarthquakeResponseImpl;

  factory _EarthquakeResponse.fromJson(Map<String, dynamic> json) =
      _$EarthquakeResponseImpl.fromJson;

  @override
  String get type;
  @override
  Metadata get metadata;
  @override
  List<Feature> get features;
  @override
  List<double> get bbox;

  /// Create a copy of EarthquakeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EarthquakeResponseImplCopyWith<_$EarthquakeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Metadata _$MetadataFromJson(Map<String, dynamic> json) {
  return _Metadata.fromJson(json);
}

/// @nodoc
mixin _$Metadata {
  int get generated => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get api => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;

  /// Serializes this Metadata to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetadataCopyWith<Metadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetadataCopyWith<$Res> {
  factory $MetadataCopyWith(Metadata value, $Res Function(Metadata) then) =
      _$MetadataCopyWithImpl<$Res, Metadata>;
  @useResult
  $Res call(
      {int generated,
      String url,
      String title,
      String api,
      int count,
      int status});
}

/// @nodoc
class _$MetadataCopyWithImpl<$Res, $Val extends Metadata>
    implements $MetadataCopyWith<$Res> {
  _$MetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? generated = null,
    Object? url = null,
    Object? title = null,
    Object? api = null,
    Object? count = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      generated: null == generated
          ? _value.generated
          : generated // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      api: null == api
          ? _value.api
          : api // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetadataImplCopyWith<$Res>
    implements $MetadataCopyWith<$Res> {
  factory _$$MetadataImplCopyWith(
          _$MetadataImpl value, $Res Function(_$MetadataImpl) then) =
      __$$MetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int generated,
      String url,
      String title,
      String api,
      int count,
      int status});
}

/// @nodoc
class __$$MetadataImplCopyWithImpl<$Res>
    extends _$MetadataCopyWithImpl<$Res, _$MetadataImpl>
    implements _$$MetadataImplCopyWith<$Res> {
  __$$MetadataImplCopyWithImpl(
      _$MetadataImpl _value, $Res Function(_$MetadataImpl) _then)
      : super(_value, _then);

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? generated = null,
    Object? url = null,
    Object? title = null,
    Object? api = null,
    Object? count = null,
    Object? status = null,
  }) {
    return _then(_$MetadataImpl(
      generated: null == generated
          ? _value.generated
          : generated // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      api: null == api
          ? _value.api
          : api // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetadataImpl implements _Metadata {
  const _$MetadataImpl(
      {required this.generated,
      required this.url,
      required this.title,
      required this.api,
      required this.count,
      required this.status});

  factory _$MetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetadataImplFromJson(json);

  @override
  final int generated;
  @override
  final String url;
  @override
  final String title;
  @override
  final String api;
  @override
  final int count;
  @override
  final int status;

  @override
  String toString() {
    return 'Metadata(generated: $generated, url: $url, title: $title, api: $api, count: $count, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetadataImpl &&
            (identical(other.generated, generated) ||
                other.generated == generated) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.api, api) || other.api == api) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, generated, url, title, api, count, status);

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetadataImplCopyWith<_$MetadataImpl> get copyWith =>
      __$$MetadataImplCopyWithImpl<_$MetadataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetadataImplToJson(
      this,
    );
  }
}

abstract class _Metadata implements Metadata {
  const factory _Metadata(
      {required final int generated,
      required final String url,
      required final String title,
      required final String api,
      required final int count,
      required final int status}) = _$MetadataImpl;

  factory _Metadata.fromJson(Map<String, dynamic> json) =
      _$MetadataImpl.fromJson;

  @override
  int get generated;
  @override
  String get url;
  @override
  String get title;
  @override
  String get api;
  @override
  int get count;
  @override
  int get status;

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetadataImplCopyWith<_$MetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Feature _$FeatureFromJson(Map<String, dynamic> json) {
  return _Feature.fromJson(json);
}

/// @nodoc
mixin _$Feature {
  String get type => throw _privateConstructorUsedError;
  Properties get properties => throw _privateConstructorUsedError;
  Geometry get geometry => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  /// Serializes this Feature to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Feature
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeatureCopyWith<Feature> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeatureCopyWith<$Res> {
  factory $FeatureCopyWith(Feature value, $Res Function(Feature) then) =
      _$FeatureCopyWithImpl<$Res, Feature>;
  @useResult
  $Res call({String type, Properties properties, Geometry geometry, String id});

  $PropertiesCopyWith<$Res> get properties;
  $GeometryCopyWith<$Res> get geometry;
}

/// @nodoc
class _$FeatureCopyWithImpl<$Res, $Val extends Feature>
    implements $FeatureCopyWith<$Res> {
  _$FeatureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Feature
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? properties = null,
    Object? geometry = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      properties: null == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Properties,
      geometry: null == geometry
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as Geometry,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of Feature
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PropertiesCopyWith<$Res> get properties {
    return $PropertiesCopyWith<$Res>(_value.properties, (value) {
      return _then(_value.copyWith(properties: value) as $Val);
    });
  }

  /// Create a copy of Feature
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeometryCopyWith<$Res> get geometry {
    return $GeometryCopyWith<$Res>(_value.geometry, (value) {
      return _then(_value.copyWith(geometry: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FeatureImplCopyWith<$Res> implements $FeatureCopyWith<$Res> {
  factory _$$FeatureImplCopyWith(
          _$FeatureImpl value, $Res Function(_$FeatureImpl) then) =
      __$$FeatureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, Properties properties, Geometry geometry, String id});

  @override
  $PropertiesCopyWith<$Res> get properties;
  @override
  $GeometryCopyWith<$Res> get geometry;
}

/// @nodoc
class __$$FeatureImplCopyWithImpl<$Res>
    extends _$FeatureCopyWithImpl<$Res, _$FeatureImpl>
    implements _$$FeatureImplCopyWith<$Res> {
  __$$FeatureImplCopyWithImpl(
      _$FeatureImpl _value, $Res Function(_$FeatureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Feature
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? properties = null,
    Object? geometry = null,
    Object? id = null,
  }) {
    return _then(_$FeatureImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      properties: null == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Properties,
      geometry: null == geometry
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as Geometry,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeatureImpl implements _Feature {
  const _$FeatureImpl(
      {required this.type,
      required this.properties,
      required this.geometry,
      required this.id});

  factory _$FeatureImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeatureImplFromJson(json);

  @override
  final String type;
  @override
  final Properties properties;
  @override
  final Geometry geometry;
  @override
  final String id;

  @override
  String toString() {
    return 'Feature(type: $type, properties: $properties, geometry: $geometry, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeatureImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.properties, properties) ||
                other.properties == properties) &&
            (identical(other.geometry, geometry) ||
                other.geometry == geometry) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, properties, geometry, id);

  /// Create a copy of Feature
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeatureImplCopyWith<_$FeatureImpl> get copyWith =>
      __$$FeatureImplCopyWithImpl<_$FeatureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeatureImplToJson(
      this,
    );
  }
}

abstract class _Feature implements Feature {
  const factory _Feature(
      {required final String type,
      required final Properties properties,
      required final Geometry geometry,
      required final String id}) = _$FeatureImpl;

  factory _Feature.fromJson(Map<String, dynamic> json) = _$FeatureImpl.fromJson;

  @override
  String get type;
  @override
  Properties get properties;
  @override
  Geometry get geometry;
  @override
  String get id;

  /// Create a copy of Feature
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeatureImplCopyWith<_$FeatureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Properties _$PropertiesFromJson(Map<String, dynamic> json) {
  return _Properties.fromJson(json);
}

/// @nodoc
mixin _$Properties {
  double get mag => throw _privateConstructorUsedError;
  String get place => throw _privateConstructorUsedError;
  int get time => throw _privateConstructorUsedError;
  int get updated => throw _privateConstructorUsedError;
  int? get tz => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get detail => throw _privateConstructorUsedError;
  int? get felt => throw _privateConstructorUsedError;
  double? get cdi => throw _privateConstructorUsedError;
  double? get mmi => throw _privateConstructorUsedError;
  String? get alert => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int get tsunami => throw _privateConstructorUsedError;
  int get sig => throw _privateConstructorUsedError;
  String get net => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get ids => throw _privateConstructorUsedError;
  String get sources => throw _privateConstructorUsedError;
  String get types => throw _privateConstructorUsedError;
  int? get nst => throw _privateConstructorUsedError;
  double? get dmin => throw _privateConstructorUsedError;
  double? get rms => throw _privateConstructorUsedError;
  double? get gap => throw _privateConstructorUsedError;
  String get magType => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  /// Serializes this Properties to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Properties
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PropertiesCopyWith<Properties> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertiesCopyWith<$Res> {
  factory $PropertiesCopyWith(
          Properties value, $Res Function(Properties) then) =
      _$PropertiesCopyWithImpl<$Res, Properties>;
  @useResult
  $Res call(
      {double mag,
      String place,
      int time,
      int updated,
      int? tz,
      String url,
      String detail,
      int? felt,
      double? cdi,
      double? mmi,
      String? alert,
      String status,
      int tsunami,
      int sig,
      String net,
      String code,
      String ids,
      String sources,
      String types,
      int? nst,
      double? dmin,
      double? rms,
      double? gap,
      String magType,
      String type});
}

/// @nodoc
class _$PropertiesCopyWithImpl<$Res, $Val extends Properties>
    implements $PropertiesCopyWith<$Res> {
  _$PropertiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Properties
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mag = null,
    Object? place = null,
    Object? time = null,
    Object? updated = null,
    Object? tz = freezed,
    Object? url = null,
    Object? detail = null,
    Object? felt = freezed,
    Object? cdi = freezed,
    Object? mmi = freezed,
    Object? alert = freezed,
    Object? status = null,
    Object? tsunami = null,
    Object? sig = null,
    Object? net = null,
    Object? code = null,
    Object? ids = null,
    Object? sources = null,
    Object? types = null,
    Object? nst = freezed,
    Object? dmin = freezed,
    Object? rms = freezed,
    Object? gap = freezed,
    Object? magType = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      mag: null == mag
          ? _value.mag
          : mag // ignore: cast_nullable_to_non_nullable
              as double,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as int,
      tz: freezed == tz
          ? _value.tz
          : tz // ignore: cast_nullable_to_non_nullable
              as int?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      felt: freezed == felt
          ? _value.felt
          : felt // ignore: cast_nullable_to_non_nullable
              as int?,
      cdi: freezed == cdi
          ? _value.cdi
          : cdi // ignore: cast_nullable_to_non_nullable
              as double?,
      mmi: freezed == mmi
          ? _value.mmi
          : mmi // ignore: cast_nullable_to_non_nullable
              as double?,
      alert: freezed == alert
          ? _value.alert
          : alert // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      tsunami: null == tsunami
          ? _value.tsunami
          : tsunami // ignore: cast_nullable_to_non_nullable
              as int,
      sig: null == sig
          ? _value.sig
          : sig // ignore: cast_nullable_to_non_nullable
              as int,
      net: null == net
          ? _value.net
          : net // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      ids: null == ids
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as String,
      sources: null == sources
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as String,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as String,
      nst: freezed == nst
          ? _value.nst
          : nst // ignore: cast_nullable_to_non_nullable
              as int?,
      dmin: freezed == dmin
          ? _value.dmin
          : dmin // ignore: cast_nullable_to_non_nullable
              as double?,
      rms: freezed == rms
          ? _value.rms
          : rms // ignore: cast_nullable_to_non_nullable
              as double?,
      gap: freezed == gap
          ? _value.gap
          : gap // ignore: cast_nullable_to_non_nullable
              as double?,
      magType: null == magType
          ? _value.magType
          : magType // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PropertiesImplCopyWith<$Res>
    implements $PropertiesCopyWith<$Res> {
  factory _$$PropertiesImplCopyWith(
          _$PropertiesImpl value, $Res Function(_$PropertiesImpl) then) =
      __$$PropertiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double mag,
      String place,
      int time,
      int updated,
      int? tz,
      String url,
      String detail,
      int? felt,
      double? cdi,
      double? mmi,
      String? alert,
      String status,
      int tsunami,
      int sig,
      String net,
      String code,
      String ids,
      String sources,
      String types,
      int? nst,
      double? dmin,
      double? rms,
      double? gap,
      String magType,
      String type});
}

/// @nodoc
class __$$PropertiesImplCopyWithImpl<$Res>
    extends _$PropertiesCopyWithImpl<$Res, _$PropertiesImpl>
    implements _$$PropertiesImplCopyWith<$Res> {
  __$$PropertiesImplCopyWithImpl(
      _$PropertiesImpl _value, $Res Function(_$PropertiesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Properties
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mag = null,
    Object? place = null,
    Object? time = null,
    Object? updated = null,
    Object? tz = freezed,
    Object? url = null,
    Object? detail = null,
    Object? felt = freezed,
    Object? cdi = freezed,
    Object? mmi = freezed,
    Object? alert = freezed,
    Object? status = null,
    Object? tsunami = null,
    Object? sig = null,
    Object? net = null,
    Object? code = null,
    Object? ids = null,
    Object? sources = null,
    Object? types = null,
    Object? nst = freezed,
    Object? dmin = freezed,
    Object? rms = freezed,
    Object? gap = freezed,
    Object? magType = null,
    Object? type = null,
  }) {
    return _then(_$PropertiesImpl(
      mag: null == mag
          ? _value.mag
          : mag // ignore: cast_nullable_to_non_nullable
              as double,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as int,
      tz: freezed == tz
          ? _value.tz
          : tz // ignore: cast_nullable_to_non_nullable
              as int?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      felt: freezed == felt
          ? _value.felt
          : felt // ignore: cast_nullable_to_non_nullable
              as int?,
      cdi: freezed == cdi
          ? _value.cdi
          : cdi // ignore: cast_nullable_to_non_nullable
              as double?,
      mmi: freezed == mmi
          ? _value.mmi
          : mmi // ignore: cast_nullable_to_non_nullable
              as double?,
      alert: freezed == alert
          ? _value.alert
          : alert // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      tsunami: null == tsunami
          ? _value.tsunami
          : tsunami // ignore: cast_nullable_to_non_nullable
              as int,
      sig: null == sig
          ? _value.sig
          : sig // ignore: cast_nullable_to_non_nullable
              as int,
      net: null == net
          ? _value.net
          : net // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      ids: null == ids
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as String,
      sources: null == sources
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as String,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as String,
      nst: freezed == nst
          ? _value.nst
          : nst // ignore: cast_nullable_to_non_nullable
              as int?,
      dmin: freezed == dmin
          ? _value.dmin
          : dmin // ignore: cast_nullable_to_non_nullable
              as double?,
      rms: freezed == rms
          ? _value.rms
          : rms // ignore: cast_nullable_to_non_nullable
              as double?,
      gap: freezed == gap
          ? _value.gap
          : gap // ignore: cast_nullable_to_non_nullable
              as double?,
      magType: null == magType
          ? _value.magType
          : magType // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertiesImpl implements _Properties {
  const _$PropertiesImpl(
      {required this.mag,
      required this.place,
      required this.time,
      required this.updated,
      required this.tz,
      required this.url,
      required this.detail,
      required this.felt,
      required this.cdi,
      required this.mmi,
      required this.alert,
      required this.status,
      required this.tsunami,
      required this.sig,
      required this.net,
      required this.code,
      required this.ids,
      required this.sources,
      required this.types,
      required this.nst,
      required this.dmin,
      required this.rms,
      required this.gap,
      required this.magType,
      required this.type});

  factory _$PropertiesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertiesImplFromJson(json);

  @override
  final double mag;
  @override
  final String place;
  @override
  final int time;
  @override
  final int updated;
  @override
  final int? tz;
  @override
  final String url;
  @override
  final String detail;
  @override
  final int? felt;
  @override
  final double? cdi;
  @override
  final double? mmi;
  @override
  final String? alert;
  @override
  final String status;
  @override
  final int tsunami;
  @override
  final int sig;
  @override
  final String net;
  @override
  final String code;
  @override
  final String ids;
  @override
  final String sources;
  @override
  final String types;
  @override
  final int? nst;
  @override
  final double? dmin;
  @override
  final double? rms;
  @override
  final double? gap;
  @override
  final String magType;
  @override
  final String type;

  @override
  String toString() {
    return 'Properties(mag: $mag, place: $place, time: $time, updated: $updated, tz: $tz, url: $url, detail: $detail, felt: $felt, cdi: $cdi, mmi: $mmi, alert: $alert, status: $status, tsunami: $tsunami, sig: $sig, net: $net, code: $code, ids: $ids, sources: $sources, types: $types, nst: $nst, dmin: $dmin, rms: $rms, gap: $gap, magType: $magType, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertiesImpl &&
            (identical(other.mag, mag) || other.mag == mag) &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.tz, tz) || other.tz == tz) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.felt, felt) || other.felt == felt) &&
            (identical(other.cdi, cdi) || other.cdi == cdi) &&
            (identical(other.mmi, mmi) || other.mmi == mmi) &&
            (identical(other.alert, alert) || other.alert == alert) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.tsunami, tsunami) || other.tsunami == tsunami) &&
            (identical(other.sig, sig) || other.sig == sig) &&
            (identical(other.net, net) || other.net == net) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.ids, ids) || other.ids == ids) &&
            (identical(other.sources, sources) || other.sources == sources) &&
            (identical(other.types, types) || other.types == types) &&
            (identical(other.nst, nst) || other.nst == nst) &&
            (identical(other.dmin, dmin) || other.dmin == dmin) &&
            (identical(other.rms, rms) || other.rms == rms) &&
            (identical(other.gap, gap) || other.gap == gap) &&
            (identical(other.magType, magType) || other.magType == magType) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        mag,
        place,
        time,
        updated,
        tz,
        url,
        detail,
        felt,
        cdi,
        mmi,
        alert,
        status,
        tsunami,
        sig,
        net,
        code,
        ids,
        sources,
        types,
        nst,
        dmin,
        rms,
        gap,
        magType,
        type
      ]);

  /// Create a copy of Properties
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertiesImplCopyWith<_$PropertiesImpl> get copyWith =>
      __$$PropertiesImplCopyWithImpl<_$PropertiesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertiesImplToJson(
      this,
    );
  }
}

abstract class _Properties implements Properties {
  const factory _Properties(
      {required final double mag,
      required final String place,
      required final int time,
      required final int updated,
      required final int? tz,
      required final String url,
      required final String detail,
      required final int? felt,
      required final double? cdi,
      required final double? mmi,
      required final String? alert,
      required final String status,
      required final int tsunami,
      required final int sig,
      required final String net,
      required final String code,
      required final String ids,
      required final String sources,
      required final String types,
      required final int? nst,
      required final double? dmin,
      required final double? rms,
      required final double? gap,
      required final String magType,
      required final String type}) = _$PropertiesImpl;

  factory _Properties.fromJson(Map<String, dynamic> json) =
      _$PropertiesImpl.fromJson;

  @override
  double get mag;
  @override
  String get place;
  @override
  int get time;
  @override
  int get updated;
  @override
  int? get tz;
  @override
  String get url;
  @override
  String get detail;
  @override
  int? get felt;
  @override
  double? get cdi;
  @override
  double? get mmi;
  @override
  String? get alert;
  @override
  String get status;
  @override
  int get tsunami;
  @override
  int get sig;
  @override
  String get net;
  @override
  String get code;
  @override
  String get ids;
  @override
  String get sources;
  @override
  String get types;
  @override
  int? get nst;
  @override
  double? get dmin;
  @override
  double? get rms;
  @override
  double? get gap;
  @override
  String get magType;
  @override
  String get type;

  /// Create a copy of Properties
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PropertiesImplCopyWith<_$PropertiesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Geometry _$GeometryFromJson(Map<String, dynamic> json) {
  return _Geometry.fromJson(json);
}

/// @nodoc
mixin _$Geometry {
  String get type => throw _privateConstructorUsedError;
  List<double> get coordinates => throw _privateConstructorUsedError;

  /// Serializes this Geometry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Geometry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GeometryCopyWith<Geometry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeometryCopyWith<$Res> {
  factory $GeometryCopyWith(Geometry value, $Res Function(Geometry) then) =
      _$GeometryCopyWithImpl<$Res, Geometry>;
  @useResult
  $Res call({String type, List<double> coordinates});
}

/// @nodoc
class _$GeometryCopyWithImpl<$Res, $Val extends Geometry>
    implements $GeometryCopyWith<$Res> {
  _$GeometryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Geometry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? coordinates = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeometryImplCopyWith<$Res>
    implements $GeometryCopyWith<$Res> {
  factory _$$GeometryImplCopyWith(
          _$GeometryImpl value, $Res Function(_$GeometryImpl) then) =
      __$$GeometryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, List<double> coordinates});
}

/// @nodoc
class __$$GeometryImplCopyWithImpl<$Res>
    extends _$GeometryCopyWithImpl<$Res, _$GeometryImpl>
    implements _$$GeometryImplCopyWith<$Res> {
  __$$GeometryImplCopyWithImpl(
      _$GeometryImpl _value, $Res Function(_$GeometryImpl) _then)
      : super(_value, _then);

  /// Create a copy of Geometry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? coordinates = null,
  }) {
    return _then(_$GeometryImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _value._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeometryImpl implements _Geometry {
  const _$GeometryImpl(
      {required this.type, required final List<double> coordinates})
      : _coordinates = coordinates;

  factory _$GeometryImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeometryImplFromJson(json);

  @override
  final String type;
  final List<double> _coordinates;
  @override
  List<double> get coordinates {
    if (_coordinates is EqualUnmodifiableListView) return _coordinates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coordinates);
  }

  @override
  String toString() {
    return 'Geometry(type: $type, coordinates: $coordinates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeometryImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._coordinates, _coordinates));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(_coordinates));

  /// Create a copy of Geometry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GeometryImplCopyWith<_$GeometryImpl> get copyWith =>
      __$$GeometryImplCopyWithImpl<_$GeometryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeometryImplToJson(
      this,
    );
  }
}

abstract class _Geometry implements Geometry {
  const factory _Geometry(
      {required final String type,
      required final List<double> coordinates}) = _$GeometryImpl;

  factory _Geometry.fromJson(Map<String, dynamic> json) =
      _$GeometryImpl.fromJson;

  @override
  String get type;
  @override
  List<double> get coordinates;

  /// Create a copy of Geometry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GeometryImplCopyWith<_$GeometryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
