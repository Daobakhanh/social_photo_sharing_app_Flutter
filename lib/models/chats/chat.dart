import 'package:json_annotation/json_annotation.dart';
import 'package:social_network_newsfeed/common/data_type/gender.dart';
import 'package:social_network_newsfeed/common/data_type/user_status.dart';
import 'package:social_network_newsfeed/models/other/picture.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'chat.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable()
class Chat {
  Chat(this.name, this.email, this.gender, this.dob, this.phone,
      this.registered, this.status, this.picture);

  final Gender gender;
  final String name;
  final String email;
  final DateTime dob;
  final DateTime registered;
  final String phone;
  final UserStatus status;
  final Picture picture;

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  // Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class Chats {
  Chats(this.results);
  final List<Chat> results;
  factory Chats.fromJson(Map<String, dynamic> json) => _$ChatsFromJson(json);
}
