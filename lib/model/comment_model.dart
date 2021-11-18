class CommentModel {
  const CommentModel({
    required this.id,
    required this.userName,
    required this.createString,
    required this.comment,
    required this.imageSrc,
  });

  factory CommentModel.fromJson(Map<String, dynamic> json) {
    return CommentModel(
      id: json['id'] as int,
      userName: json['user_name'] as String,
      createString: json['create_string'] as String,
      comment: json['comment'] as String,
      imageSrc: json['image_src'] as String,
    );
  }

  final int id;
  final String userName;
  final String createString;
  final String comment;
  final String imageSrc;
}
