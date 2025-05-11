// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppState _$AppStateFromJson(Map<String, dynamic> json) => AppState(
  isMicrophoneEnabled: json['isMicrophoneEnabled'] as bool? ?? false,
  isTtsEnabled: json['isTtsEnabled'] as bool? ?? true,
  isBackgroundListening: json['isBackgroundListening'] as bool? ?? true,
);

Map<String, dynamic> _$AppStateToJson(AppState instance) => <String, dynamic>{
  'isMicrophoneEnabled': instance.isMicrophoneEnabled,
  'isTtsEnabled': instance.isTtsEnabled,
  'isBackgroundListening': instance.isBackgroundListening,
};
