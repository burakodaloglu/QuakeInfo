// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'earthquake.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EarthquakeResponseImpl _$$EarthquakeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$EarthquakeResponseImpl(
      type: json['type'] as String,
      metadata: Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
      features: (json['features'] as List<dynamic>)
          .map((e) => Feature.fromJson(e as Map<String, dynamic>))
          .toList(),
      bbox: (json['bbox'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$EarthquakeResponseImplToJson(
        _$EarthquakeResponseImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'metadata': instance.metadata,
      'features': instance.features,
      'bbox': instance.bbox,
    };

_$MetadataImpl _$$MetadataImplFromJson(Map<String, dynamic> json) =>
    _$MetadataImpl(
      generated: (json['generated'] as num).toInt(),
      url: json['url'] as String,
      title: json['title'] as String,
      api: json['api'] as String,
      count: (json['count'] as num).toInt(),
      status: (json['status'] as num).toInt(),
    );

Map<String, dynamic> _$$MetadataImplToJson(_$MetadataImpl instance) =>
    <String, dynamic>{
      'generated': instance.generated,
      'url': instance.url,
      'title': instance.title,
      'api': instance.api,
      'count': instance.count,
      'status': instance.status,
    };

_$FeatureImpl _$$FeatureImplFromJson(Map<String, dynamic> json) =>
    _$FeatureImpl(
      type: json['type'] as String,
      properties:
          Properties.fromJson(json['properties'] as Map<String, dynamic>),
      geometry: Geometry.fromJson(json['geometry'] as Map<String, dynamic>),
      id: json['id'] as String,
    );

Map<String, dynamic> _$$FeatureImplToJson(_$FeatureImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'properties': instance.properties,
      'geometry': instance.geometry,
      'id': instance.id,
    };

_$PropertiesImpl _$$PropertiesImplFromJson(Map<String, dynamic> json) =>
    _$PropertiesImpl(
      mag: (json['mag'] as num).toDouble(),
      place: json['place'] as String,
      time: (json['time'] as num).toInt(),
      updated: (json['updated'] as num).toInt(),
      tz: (json['tz'] as num?)?.toInt(),
      url: json['url'] as String,
      detail: json['detail'] as String,
      felt: (json['felt'] as num?)?.toInt(),
      cdi: (json['cdi'] as num?)?.toDouble(),
      mmi: (json['mmi'] as num?)?.toDouble(),
      alert: json['alert'] as String?,
      status: json['status'] as String,
      tsunami: (json['tsunami'] as num).toInt(),
      sig: (json['sig'] as num).toInt(),
      net: json['net'] as String,
      code: json['code'] as String,
      ids: json['ids'] as String,
      sources: json['sources'] as String,
      types: json['types'] as String,
      nst: (json['nst'] as num?)?.toInt(),
      dmin: (json['dmin'] as num?)?.toDouble(),
      rms: (json['rms'] as num?)?.toDouble(),
      gap: (json['gap'] as num?)?.toDouble(),
      magType: json['magType'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$PropertiesImplToJson(_$PropertiesImpl instance) =>
    <String, dynamic>{
      'mag': instance.mag,
      'place': instance.place,
      'time': instance.time,
      'updated': instance.updated,
      'tz': instance.tz,
      'url': instance.url,
      'detail': instance.detail,
      'felt': instance.felt,
      'cdi': instance.cdi,
      'mmi': instance.mmi,
      'alert': instance.alert,
      'status': instance.status,
      'tsunami': instance.tsunami,
      'sig': instance.sig,
      'net': instance.net,
      'code': instance.code,
      'ids': instance.ids,
      'sources': instance.sources,
      'types': instance.types,
      'nst': instance.nst,
      'dmin': instance.dmin,
      'rms': instance.rms,
      'gap': instance.gap,
      'magType': instance.magType,
      'type': instance.type,
    };

_$GeometryImpl _$$GeometryImplFromJson(Map<String, dynamic> json) =>
    _$GeometryImpl(
      type: json['type'] as String,
      coordinates: (json['coordinates'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$GeometryImplToJson(_$GeometryImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
    };
