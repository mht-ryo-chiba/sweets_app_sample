import 'package:flutter/material.dart';
import 'package:sweets_app_sample/ui/atoms/app_size_list.dart';
import 'package:sweets_app_sample/ui/atoms/app_text_styles.dart';
import 'package:sweets_app_sample/ui/molecules/circle_icon_image.dart';

class CommentDetailWidget extends StatelessWidget {
  const CommentDetailWidget({
    Key? key,
    required this.userName,
    required this.createString,
    required this.comment,
    required this.src,
    required this.tapFunction,
  }) : super(key: key);

  final String userName;
  final String createString;
  final String comment;
  final String src;
  final VoidCallback tapFunction;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleIconImage(
          image: Image.network(
            src,
            fit: BoxFit.cover,
          ),
        ),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: AppSizeList.mediumSize,
                  right: AppSizeList.mediumSize,
                ),
                child: Text(
                  userName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.titleText,
                ),
              ),
              Text(
                createString,
                style: AppTextStyles.timeText,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: AppSizeList.smallSize,
                  right: AppSizeList.mediumSize,
                ),
                child: Text(
                  comment,
                  style: AppTextStyles.bodyText,
                ),
              ),
              InkWell(
                onTap: tapFunction,
                child: const Padding(
                  padding: EdgeInsets.only(
                    top: AppSizeList.smallSize,
                    bottom: AppSizeList.mediumSize,
                  ),
                  child: Text(
                    'Reply',
                    style: AppTextStyles.textButton,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
