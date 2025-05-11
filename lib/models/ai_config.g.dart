// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AIConfig _$AIConfigFromJson(Map<String, dynamic> json) => AIConfig(
  platform: $enumDecode(_$AIPlatformEnumMap, json['platform']),
  apiKey: json['apiKey'] as String,
  isConfigured: json['isConfigured'] as bool? ?? true,
);

Map<String, dynamic> _$AIConfigToJson(AIConfig instance) => <String, dynamic>{
  'platform': _$AIPlatformEnumMap[instance.platform]!,
  'apiKey': instance.apiKey,
  'isConfigured': instance.isConfigured,
};

const _$AIPlatformEnumMap = {
  AIPlatform.anthropic: 'anthropic',
  AIPlatform.openAI: 'openAI',
};
