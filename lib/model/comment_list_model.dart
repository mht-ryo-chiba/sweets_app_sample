import 'package:sweets_app_sample/model/comment_model.dart';

class CommentListModel {
  const CommentListModel({required this.commentList});

  factory CommentListModel.fromJson(Map<String, dynamic> json) {
    final commentDataList = <CommentModel>[];
    if (json['comment_list'] != null) {
      for (final commentData in json['comment_list']) {
        commentDataList
            .add(CommentModel.fromJson(commentData as Map<String, dynamic>));
      }
    }
    return CommentListModel(commentList: commentDataList);
  }
  final List<CommentModel> commentList;
}
