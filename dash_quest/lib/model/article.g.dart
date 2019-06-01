// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Article _$ArticleFromJson(Map<String, dynamic> json) {
  return Article()
    ..id = json['id'] as String
    ..title = json['title'] as String
    ..abstract = json['abstract'] as String
    ..originalUrl = json['originalUrl'] as String
    ..type = _$enumDecodeNullable(_$ArticleTypeEnumMap, json['type'])
    ..tags = (json['tags'] as List)?.map((e) => e as String)?.toList()
    ..rate = json['rate'] as int;
}

Map<String, dynamic> _$ArticleToJson(Article instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'abstract': instance.abstract,
      'originalUrl': instance.originalUrl,
      'type': _$ArticleTypeEnumMap[instance.type],
      'tags': instance.tags,
      'rate': instance.rate
    };

T _$enumDecode<T>(Map<T, dynamic> enumValues, dynamic source) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }
  return enumValues.entries
      .singleWhere((e) => e.value == source,
          orElse: () => throw ArgumentError(
              '`$source` is not one of the supported values: '
              '${enumValues.values.join(', ')}'))
      .key;
}

T _$enumDecodeNullable<T>(Map<T, dynamic> enumValues, dynamic source) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source);
}

const _$ArticleTypeEnumMap = <ArticleType, dynamic>{
  ArticleType.VIDEO: 'VIDEO',
  ArticleType.URL: 'URL',
  ArticleType.MARKDOWN: 'MARKDOWN',
  ArticleType.TEXT: 'TEXT',
  ArticleType.DOCUMENTATION: 'DOCUMENTATION'
};

ArticlesData _$ArticlesDataFromJson(Map<String, dynamic> json) {
  return ArticlesData()
    ..articles = (json['articles'] as List)
        ?.map((e) =>
            e == null ? null : Article.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$ArticlesDataToJson(ArticlesData instance) =>
    <String, dynamic>{'articles': instance.articles};
