import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sweets_app_sample/model/shop_model.dart';
import 'package:sweets_app_sample/ui/atoms/app_size_list.dart';
import 'package:sweets_app_sample/ui/atoms/app_text_styles.dart';
import 'package:sweets_app_sample/ui/organisms/comment_detail_widget.dart';
import 'package:sweets_app_sample/ui/organisms/shop_detail_widget.dart';
import 'package:sweets_app_sample/viewmodel/shop_detail_view_mode.dart';

class ShopDetail extends StatelessWidget {
  const ShopDetail({Key? key, required this.shopDetail}) : super(key: key);
  final ShopModel shopDetail;

  @override
  Widget build(BuildContext context) {
    // initialize getX Controller
    final viewModel =
        Get.put<ShopDetailViewModel>(ShopDetailViewModel.instance);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(shopDetail.shopName),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ShopDetailWidget(
              shopName: shopDetail.shopName,
              shopOpenTime: shopDetail.shopOpenTime,
              shopPhoneNo: shopDetail.shopPhoneNo,
              shopAddress: shopDetail.shopAddress,
              src: shopDetail.imageSrc,
            ),
            const Divider(height: 1),
            const Padding(
              padding: EdgeInsets.only(
                top: AppSizeList.mediumSize,
                right: AppSizeList.mediumSize,
                left: AppSizeList.mediumSize,
              ),
              child: Text(
                'コメント',
                textAlign: TextAlign.left,
                style: AppTextStyles.titleText,
              ),
            ),
            GetBuilder<ShopDetailViewModel>(
              init: viewModel,
              builder: (_) {
                if (viewModel.commentDataList.commentList.length
                    .isGreaterThan(0)) {
                  return ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: viewModel.commentDataList.commentList.length,
                    separatorBuilder: (context, index) {
                      return const Divider(height: 1);
                    },
                    itemBuilder: (BuildContext context, int index) {
                      return CommentDetailWidget(
                        userName: viewModel
                            .commentDataList.commentList[index].userName,
                        createString: viewModel
                            .commentDataList.commentList[index].createString,
                        comment: viewModel
                            .commentDataList.commentList[index].comment,
                        src: viewModel
                            .commentDataList.commentList[index].imageSrc,
                        tapFunction: () {},
                      );
                    },
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
