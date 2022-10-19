import 'package:freezed_annotation/freezed_annotation.dart';
part 'home.freezed.dart';
part 'home.g.dart';

@freezed
class Home with _$Home {
  const factory Home({
    @JsonKey(name: "title") required String? title,
    @JsonKey(name: "publishedAt") required String? date,
    @JsonKey(name: "channelTitle") required String? channelName,
    @JsonKey(name: "duration") required String? duration,
    @JsonKey(name: "viewCount") required String? views,
    @JsonKey(name: "thumbnails") required String? thumbnail,
  }) = _Home;

  factory Home.fromJson(Map<String, dynamic> json) => _$HomeFromJson(json);
}
