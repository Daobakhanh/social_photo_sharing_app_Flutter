import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:social_network_newsfeed/modules/posts/models/picture.dart';

part 'post.g.dart';

@JsonSerializable()
class Post {
  /// The generated code assumes these values exist in JSON.
  @JsonKey(name: 'id', includeIfNull: false)
  final String? id;

  @JsonKey(name: 'status', includeIfNull: false)
  final int? status;

  @JsonKey(name: 'title', includeIfNull: false)
  final String? title;

  @JsonKey(name: 'description', includeIfNull: false)
  final String? description;

  @JsonKey(name: 'images', includeIfNull: false)
  final List<Picture>? images;

  Post(this.id, this.description, this.images, this.status, this.title);

  /// The generated code below handles if the corresponding JSON value doesn't
  /// exist or is empty.

  /// Connect the generated [_$PostFromJson] function to the `fromJson`
  /// factory.
  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$PostToJson(this);
}
