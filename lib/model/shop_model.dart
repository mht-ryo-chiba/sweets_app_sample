class ShopModel {
  const ShopModel({
    required this.shopName,
    required this.shopAddress,
    required this.imageSrc,
  });

  factory ShopModel.fromJson(Map<String, dynamic> json) {
    return ShopModel(
      shopName: json['shop_name'] as String,
      shopAddress: json['shop_address'] as String,
      imageSrc: json['image_src'] as String,
    );
  }

  final String shopName;
  final String shopAddress;
  final String imageSrc;
}
