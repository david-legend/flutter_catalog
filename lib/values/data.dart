part of values;

class CategoryItemData {
  const CategoryItemData({this.category, this.icon, this.backgroundColor});

  final String category;
  final String icon;
  final Color backgroundColor;
}

class Data {
  static const List<CategoryItemData> categories = [
    CategoryItemData(
      category: StringConst.ART,
      icon: ImagePath.PAINT_LOGO,
      backgroundColor: AppColors.pink,
    ),
    CategoryItemData(
      category: StringConst.PHOTOGRAPHY,
      icon: ImagePath.TRIPOD_LOGO,
      backgroundColor: AppColors.lightGreen,
    ),
    CategoryItemData(
      category: StringConst.PROGRAMMING,
      icon: ImagePath.WEB_LOGO,
      backgroundColor: AppColors.lightOrange,
    ),
    CategoryItemData(
      category: StringConst.SCIENCE,
      icon: ImagePath.LAB_LOGO,
      backgroundColor: AppColors.lightGreen,
    ),
    CategoryItemData(
      category: StringConst.DESIGN,
      icon: ImagePath.COMPUTER_LOGO,
      backgroundColor: AppColors.pink,
    ),
  ];
}
