class ShopModel {
  const ShopModel({
    required this.id,
    required this.shopName,
    required this.shopOpenTime,
    required this.shopPhoneNo,
    required this.shopAddress,
    required this.imageSrc,
  });

  factory ShopModel.fromJson(Map<String, dynamic> json) {
    return ShopModel(
      id: json['id'] as int,
      shopName: json['shop_name'] as String,
      shopOpenTime: json['shop_open_time'] as String,
      shopPhoneNo: json['shop_phone_no'] as String,
      shopAddress: json['shop_address'] as String,
      imageSrc: json['image_src'] as String,
    );
  }

  final int id;
  final String shopName;
  final String shopOpenTime;
  final String shopPhoneNo;
  final String shopAddress;
  final String imageSrc;
}
