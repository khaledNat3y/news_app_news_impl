import 'package:json_annotation/json_annotation.dart';

part 'news_top_head_lines_model.g.dart';

@JsonSerializable(explicitToJson: true)
class NewsTopHeadLinesModel {
  final String? status;
  final int? totalResults;
  final List<Article>? articles;

  NewsTopHeadLinesModel({
    this.status,
    this.totalResults,
    this.articles,
  });

  factory NewsTopHeadLinesModel.fromJson(Map<String, dynamic> json) =>
      _$NewsTopHeadLinesModelFromJson(json);

  Map<String, dynamic> toJson() => _$NewsTopHeadLinesModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Article {
  final Source? source;
  final String? author;
  final String? title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final DateTime? publishedAt;
  final String? content;

  Article({
    this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleToJson(this);
}

@JsonSerializable()
class Source {
  final String? id;
  final String? name;

  Source({this.id, this.name});

  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);

  Map<String, dynamic> toJson() => _$SourceToJson(this);
}