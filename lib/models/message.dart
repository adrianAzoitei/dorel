import 'package:json_annotation/json_annotation.dart';

part 'message.g.dart';

@JsonSerializable()
class Message {
  final bool isUser;
  final String content;
  final DateTime timestamp;

  Message({required this.isUser, required this.content, DateTime? timestamp})
    : timestamp = timestamp ?? DateTime.now();

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
  Map<String, dynamic> toJson() => _$MessageToJson(this);
}
