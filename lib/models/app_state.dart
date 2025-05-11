import 'package:json_annotation/json_annotation.dart';
part 'app_state.g.dart';

@JsonSerializable()
class AppState {
  final bool isMicrophoneEnabled;
  final bool isTtsEnabled;
  final bool isBackgroundListening;

  AppState({
    this.isMicrophoneEnabled = false,
    this.isTtsEnabled = true,
    this.isBackgroundListening = true,
  });

  factory AppState.fromJson(Map<String, dynamic> json) =>
      _$AppStateFromJson(json);
  Map<String, dynamic> toJson() => _$AppStateToJson(this);

  AppState copyWith({
    bool? isMicrophoneEnabled,
    bool? isTtsEnabled,
    bool? isBackgroundListening,
  }) {
    return AppState(
      isMicrophoneEnabled: isMicrophoneEnabled ?? this.isMicrophoneEnabled,
      isTtsEnabled: isTtsEnabled ?? this.isTtsEnabled,
      isBackgroundListening:
          isBackgroundListening ?? this.isBackgroundListening,
    );
  }
}
