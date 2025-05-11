import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import '../models/app_state.dart';

part 'app_state.g.dart';

@riverpod
class AppStateNotifier extends _$AppStateNotifier {
  static const String _prefsKey = 'app_state';

  @override
  Future<AppState> build() async {
    return _loadFromPrefs();
  }

  Future<AppState> _loadFromPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    final stateJson = prefs.getString(_prefsKey);

    if (stateJson == null) {
      return AppState();
    }

    try {
      final Map<String, dynamic> json = jsonDecode(stateJson);
      return AppState.fromJson(json);
    } catch (e) {
      return AppState();
    }
  }

  Future<void> _saveToPrefs(AppState newState) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_prefsKey, jsonEncode(newState.toJson()));
  }

  Future<void> setMicrophoneEnabled(bool enabled) async {
    final currentState = state.valueOrNull ?? AppState();
    final newState = currentState.copyWith(isMicrophoneEnabled: enabled);

    await _saveToPrefs(newState);
    state = AsyncValue.data(newState);
  }

  Future<void> setTtsEnabled(bool enabled) async {
    final currentState = state.valueOrNull ?? AppState();
    final newState = currentState.copyWith(isTtsEnabled: enabled);

    await _saveToPrefs(newState);
    state = AsyncValue.data(newState);
  }

  Future<void> setBackgroundListening(bool enabled) async {
    final currentState = state.valueOrNull ?? AppState();
    final newState = currentState.copyWith(isBackgroundListening: enabled);

    await _saveToPrefs(newState);
    state = AsyncValue.data(newState);
  }
}
