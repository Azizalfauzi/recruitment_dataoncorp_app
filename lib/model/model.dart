part 'user_model.dart';

class User {
  final int id;
  final String profileName;
  final String userName;
  final String url;

  final String bio;

  User(
    this.id,
    this.profileName,
    this.userName,
    this.url,
    this.bio,
  );
}

List<User> mockUser = [
  User(
    1,
    "Aziz Alfauzi",
    "Zuhaha",
    "url",
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
  ),
  User(
    2,
    "Hadi",
    "hadihadi",
    "url",
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
  ),
  User(
    3,
    "Hasna",
    "hasnasaja",
    "url",
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
  ),
  User(
    4,
    "Wandi",
    "WandiBro",
    "url",
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
  ),
  User(
    5,
    "Ahmad",
    "AhmadSaja",
    "url",
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
  ),
];
