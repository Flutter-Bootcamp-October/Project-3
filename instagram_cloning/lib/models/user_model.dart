class Users {
  final String userName;
  final String password;
  final String name;
  final String profilePic;
  final String pronouns;
  final List post;
  final int followers;
  final int following;
  final String bio;
  final String links;
  final String gender;

  Users({
    required this.userName,
    required this.password,
    required this.name,
    required this.profilePic,
    required this.pronouns,
    required this.post,
    required this.followers,
    required this.following,
    required this.bio,
    required this.links,
    required this.gender,
  });

  factory Users.fromJason(Map jason) {
    return Users(
        userName: jason["userName"],
        password: jason["password"],
        name: jason["name"],
        profilePic: jason["profilePic"],
        pronouns: jason["pronouns"],
        post: jason["post"],
        followers: jason["followers"],
        following: jason["following"],
        bio: jason["bio"],
        links: jason["links"],
        gender: jason["gender"]);
  }
}
