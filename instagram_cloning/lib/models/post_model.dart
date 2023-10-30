class Post {
  final String profilePic;
  final String userName;
  final String post;
  final int numberOfLikes;
  final String commentUser;
  final int numberOfComments;
  final String postDate;

  Post({
    required this.profilePic,
    required this.userName,
    required this.post,
    required this.numberOfLikes,
    required this.commentUser,
    required this.numberOfComments,
    required this.postDate,
  });

  factory Post.fromJason(Map jason) {
    return Post(
      profilePic: jason["profilePic"],
      userName: jason["userName"],
      post: jason["post"],
      numberOfLikes: jason["numberOfLikes"],
      commentUser: jason["commentUser"],
      numberOfComments: jason["numberOfComments"],
      postDate: jason["postDate"],
    );
  }
}
