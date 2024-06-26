import 'package:json_annotation/json_annotation.dart';

part 'movie_model.g.dart';

@JsonSerializable()
class MovieModel {
  int? id = 0;
  bool? adult = false;
  @JsonKey(name: 'backdrop_path')
  String? backdropPath = '';
  @JsonKey(name: 'original_language')
  String? originalLanguage = '';
  @JsonKey(name: 'original_title')
  String? originalTitle = '';
  String? overview = '';
  double? popularity = 0.0;
  @JsonKey(name: 'poster_path')
  String? posterPath = '';
  @JsonKey(name: 'release_date')
  String? releaseDate = '';
  String? title = '';
  bool? video = false;
  @JsonKey(name: 'vote_average')
  double? voteAverage = 0.0;
  @JsonKey(name: 'vote_count')
  int? voteCount = 0;

  MovieModel(
      {this.id,
      this.adult,
      this.backdropPath,
      this.originalLanguage,
      this.originalTitle,
      this.overview,
      this.posterPath,
      this.releaseDate,
      this.title,
      this.video,
      this.voteAverage,
      this.voteCount});

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);

  Map<String, dynamic> toJson() => _$MovieModelToJson(this);
}
