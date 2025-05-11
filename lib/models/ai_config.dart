import 'package:json_annotation/json_annotation.dart';

part 'ai_config.g.dart';

enum AIPlatform { anthropic, openAI }

@JsonSerializable()
class AIConfig {
  final AIPlatform platform;
  final String apiKey;
  final bool isConfigured;

  AIConfig({
    required this.platform,
    required this.apiKey,
    this.isConfigured = true,
  });

  factory AIConfig.initial() => AIConfig(
        platform: AIPlatform.anthropic,
        apiKey: '',
        isConfigured: false,
      );

  factory AIConfig.fromJson(Map<String, dynamic> json) => _$AIConfigFromJson(json);
  Map<String, dynamic> toJson() => _$AIConfigToJson(this);

  AIConfig copyWith({
    AIPlatform? platform,
    String? apiKey,
    bool? isConfigured,
  }) {
    return AIConfig(
      platform: platform ?? this.platform,
      apiKey: apiKey ?? this.apiKey,
      isConfigured: isConfigured ?? this.isConfigured,
    );
  }
}
