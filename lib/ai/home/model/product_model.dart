class ProductItem {
  final String logo;
  final String name;
  final String desc;
  final num price;
  final bool? hasBuy;
  final bool? hasDownload;
  final String? version;

  ProductItem(
      {required this.logo,
      required this.name,
      required this.desc,
      required this.price,
       this.hasBuy,
       this.hasDownload,
       this.version});
}
