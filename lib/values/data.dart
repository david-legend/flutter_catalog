part of values;

class Data {
  static List<ProjectCardItem> projects = [
    ProjectCardItem(
      title: DropStringConst.APP_NAME,
      imagePath: DropImagePath.DROP_COVER,
      isOnGithub: true,
      isOnPlayStore: true,
      isOnTheWeb: false,
      gitHubLink: DropStringConst.GITHUB_LINK,
      playStoreLink: DropStringConst.PLAYSTORE_LINK,
      webLink: "",
    ),
    ProjectCardItem(
      title: RoamStringConst.APP_NAME,
      imagePath: RoamImagePath.ROAM_COVER,
      isOnGithub: true,
      isOnPlayStore: true,
      isOnTheWeb: false,
      gitHubLink: RoamStringConst.GITHUB_LINK,
      playStoreLink: RoamStringConst.PLAY_STORE_LINK,
      webLink: "",
    ),
    ProjectCardItem(
      title: StringConst.FLUTTER_CATALOG,
      imagePath: ImagePath.FLUTTER_CATALOG_COVER,
      isOnGithub: true,
      isOnPlayStore: true,
      isOnTheWeb: false,
      gitHubLink: StringConst.FLUTTER_CATALOG_GITHUB_LINK,
      playStoreLink: StringConst.FLUTTER_CATALOG_PLAY_STORE_LINK,
      webLink: "",
    ),
    ProjectCardItem(
      title: StringConst.LOGIN_CATALOG,
      imagePath: ImagePath.LOGIN_CATALOG_COVER,
      isOnGithub: true,
      isOnPlayStore: true,
      isOnTheWeb: false,
      gitHubLink: StringConst.LOGIN_CATALOG_GITHUB_LINK,
      playStoreLink: StringConst.LOGIN_CATALOG_PLAY_STORE_LINK,
      webLink: "",
    ),
    ProjectCardItem(
      title: StringConst.FOODYBITE,
      imagePath: ImagePath.FOODYBITE_COVER,
      isOnGithub: true,
      isOnPlayStore: true,
      isOnTheWeb: false,
      gitHubLink: StringConst.FOODYBITE_GITHUB_LINK,
      playStoreLink: StringConst.FOODYBITE_PLAYSTORE_LINK,
      webLink: "",
    ),
    ProjectCardItem(
      title: StringConst.AERIUM,
      imagePath: ImagePath.AERIUM_COVER,
      isOnGithub: true,
      isOnPlayStore: false,
      isOnTheWeb: true,
      gitHubLink: StringConst.AERIUM_GITHUB_LINK,
      playStoreLink: "",
      webLink: StringConst.AERIUM_WEB_LINK,
    ),
    ProjectCardItem(
      title: StringConst.ONBOARDING_APP,
      imagePath: ImagePath.ONBOARDING_APP_COVER,
      isOnGithub: true,
      isOnPlayStore: false,
      isOnTheWeb: false,
      gitHubLink: StringConst.ONBOARDING_APP_GITHUB_LINK,
      playStoreLink: "",
      webLink: "",
    ),
    ProjectCardItem(
      title: StringConst.OTP_TEXT_FIELD,
      imagePath: ImagePath.OTP_TEXTFIELD_COVER,
      isOnGithub: true,
      isOnPlayStore: false,
      isOnTheWeb: true,
      gitHubLink: StringConst.OTP_TEXT_FIELD_GITHUB_LINK,
      playStoreLink: "",
      webLink: StringConst.OTP_TEXT_FIELD_WEB_LINK,
    ),
  ];
}

class DropData {
  static List<PillItem> pillItems = [
    PillItem(
        title: DropStringConst.FOOTWEAR,
        color: DropAppColors.accentPurpleColor),
    PillItem(
        title: DropStringConst.SPORTS, color: DropAppColors.accentYellowColor),
    PillItem(
        title: DropStringConst.BEAUTY,
        color: DropAppColors.accentDarkGreenColor),
    PillItem(
        title: DropStringConst.FASHION, color: DropAppColors.accentOrangeColor),
    PillItem(title: DropStringConst.ART, color: DropAppColors.accentPinkColor),
    PillItem(
        title: DropStringConst.JEWELRY, color: DropAppColors.accentPurpleColor),
    PillItem(
        title: DropStringConst.PRADA, color: DropAppColors.accentYellowColor),
    PillItem(
        title: DropStringConst.SUPREME,
        color: DropAppColors.accentDarkGreenColor),
    PillItem(
        title: DropStringConst.NIKE, color: DropAppColors.accentOrangeColor),
    PillItem(title: DropStringConst.VANS, color: DropAppColors.accentPinkColor),
    PillItem(
        title: DropStringConst.GUCCI, color: DropAppColors.accentPurpleColor),
    PillItem(
        title: DropStringConst.YEEZY, color: DropAppColors.accentYellowColor),
    PillItem(
        title: DropStringConst.ADIDAS,
        color: DropAppColors.accentDarkGreenColor),
    PillItem(
        title: DropStringConst.BALENCIAGA,
        color: DropAppColors.accentOrangeColor),
    PillItem(
        title: DropStringConst.HOT_DROP, color: DropAppColors.accentPinkColor),
    PillItem(
        title: DropStringConst.TOYS, color: DropAppColors.accentPurpleColor),
    PillItem(
        title: DropStringConst.OFF_WHITE,
        color: DropAppColors.accentYellowColor),
  ];
  static List<DropMenuItem> menuItems = [
    DropMenuItem(
      title: DropStringConst.HOME,
      textColor: DropAppColors.accentPurpleColor,
      route: HomeScreenRoute(),
    ),
    DropMenuItem(
      title: DropStringConst.CATEGORIES,
      textColor: DropAppColors.accentOrangeColor,
      route: CategoriesScreenRoute(),
    ),
    DropMenuItem(
      title: DropStringConst.NEW_IN,
      textColor: DropAppColors.accentPinkColor,
    ),
    DropMenuItem(
      title: DropStringConst.SALE,
      textColor: DropAppColors.accentYellowColor,
    ),
    DropMenuItem(
      title: DropStringConst.PROFILE,
      textColor: DropAppColors.accentDarkGreenColor,
      route: ProfileScreenRoute(),
    ),
  ];

  static List<String> userData = [
    DropStringConst.ORDERS_AND_RETURNS,
    DropStringConst.PERSONAL_DATA_PASSWORD,
    DropStringConst.FAQ,
  ];

  static List<SocialItem> socialItems = [
    SocialItem(
      iconData: FeatherIcons.phone,
      backgroundColor: DropAppColors.accentPurpleColor,
    ),
    SocialItem(
      iconData: FeatherIcons.mail,
      backgroundColor: DropAppColors.accentOrangeColor,
    ),
    SocialItem(
      iconData: FeatherIcons.instagram,
      backgroundColor: DropAppColors.accentDarkGreenColor,
    ),
    SocialItem(
      iconData: FeatherIcons.facebook,
      backgroundColor: DropAppColors.accentYellowColor,
    ),
  ];

  static List<CategoryItem> newArrivalItems = [
    CategoryItem(
      title: DropStringConst.TROUSERS,
      imagePath: DropImagePath.GUCCI_TROUSER,
      subtitle: "56",
      subtitleColor: DropAppColors.accentOrangeColor,
    ),
    CategoryItem(
      title: DropStringConst.SHIRTS,
      imagePath: DropImagePath.GUCCI_JACKET,
      subtitle: "26",
      subtitleColor: DropAppColors.accentYellowColor,
    ),
    CategoryItem(
      title: DropStringConst.JEWELRY,
      imagePath: DropImagePath.NECKLACE_1,
      subtitle: "17",
      subtitleColor: DropAppColors.accentDarkGreenColor,
    ),
  ];

  static List<CategoryItem> categoryItems = [
    CategoryItem(
      title: DropStringConst.SNEAKERS,
      imagePath: DropImagePath.AIR_VAPOR_MAX_SLIDE_4,
      subtitle: "56",
      subtitleColor: DropAppColors.accentPurpleColor,
    ),
    CategoryItem(
      title: DropStringConst.SHIRTS,
      imagePath: DropImagePath.GUCCI_JACKET,
      subtitle: "26",
      subtitleColor: DropAppColors.accentYellowColor,
    ),
    CategoryItem(
      title: DropStringConst.JEWELRY,
      imagePath: DropImagePath.NECKLACE_1,
      subtitle: "17",
      subtitleColor: DropAppColors.accentDarkGreenColor,
    ),
  ];

  static List<ProductDealItem> productDealItems = [
    ProductDealItem(
      title: DropStringConst.NIKE_BLUE,
      subtitle: DropStringConst.AIR_BLUE,
      imagePath: DropImagePath.NIKE_BLUE_SHOE,
      price: "\$250",
    ),
    ProductDealItem(
      title: DropStringConst.AIR_VAPOR_MAX,
      subtitle: DropStringConst.AIR_VAPOR_MAX_TAG,
      imagePath: DropImagePath.AIR_MAX_2090_SLIDE_2,
      price: "\$199",
    ),
    ProductDealItem(
      title: DropStringConst.AIR_MAX,
      subtitle: DropStringConst.AIR_MAX_TAG,
      imagePath: DropImagePath.AIR_MAX_90_SLIDE_2,
      price: "\$99",
    ),
  ];

  static List<ProductDealItem> productLatestItems = [
    ProductDealItem(
      title: DropStringConst.NIKE_GREEN,
      subtitle: DropStringConst.AIR_GREEN,
      imagePath: DropImagePath.NIKE_GREEN_SHOE,
      price: "\$299",
    ),
    ProductDealItem(
      title: DropStringConst.AIR_VAPOR_MAX,
      subtitle: DropStringConst.AIR_VAPOR_MAX_TAG,
      imagePath: DropImagePath.AIR_MAX_2090_SLIDE_2,
      price: "\$199",
    ),
    ProductDealItem(
      title: DropStringConst.AIR_MAX,
      subtitle: DropStringConst.AIR_MAX_TAG,
      imagePath: DropImagePath.AIR_MAX_90_SLIDE_2,
      price: "\$99",
    ),
  ];

  static List<ProductDealItem> trendingItems = [
    ProductDealItem(
      title: DropStringConst.YSL_JACKET,
      subtitle: DropStringConst.YSL_JACKET_TAG,
      imagePath: DropImagePath.SUEDE_YSL_JACKET,
      price: "\$450",
    ),
    ProductDealItem(
      title: DropStringConst.NECKLACE_2,
      subtitle: DropStringConst.NECKLACE_2_TAG,
      imagePath: DropImagePath.NECKLACE_4,
      price: "\$199",
    ),
    ProductDealItem(
      title: DropStringConst.AIR_MAX,
      subtitle: DropStringConst.AIR_MAX_TAG,
      imagePath: DropImagePath.AIR_MAX_90_SLIDE_2,
      price: "\$99",
    ),
  ];

  static List<ProductDealItem> exploreItems = [
    ProductDealItem(
      title: DropStringConst.NECKLACE_1,
      subtitle: DropStringConst.MERMAID_NECKLACE,
      imagePath: DropImagePath.NECKLACE_2,
      price: "\$70",
    ),
    ProductDealItem(
      title: DropStringConst.GUCCI_JEANS_SHIRT,
      subtitle: DropStringConst.SWAG,
      imagePath: DropImagePath.JEAN_SHIRT,
      price: "\$1250",
    ),
    ProductDealItem(
      title: DropStringConst.NIKE_TC,
      subtitle: DropStringConst.NIKE_TC_TAG,
      imagePath: DropImagePath.NIKE_TC_7900,
      price: "\$230",
    ),
  ];
  static List<ProductItem> sneakers = [
    ProductItem(
      title: DropStringConst.AIR_MAX,
      imagePath: DropImagePath.AIR_MAX_90,
      price: "\$125",
      tag: DropStringConst.AIR_MAX_TAG,
      images: airMax90Images,
      sizes: shoeSizes,
    ),
    ProductItem(
      title: DropStringConst.AIR_VAPOR_MAX,
      imagePath: DropImagePath.AIR_VAPOR_MAX,
      price: "\$200",
      tag: DropStringConst.AIR_VAPOR_MAX_TAG,
      images: airVaporMax2090Images,
      sizes: shoeSizes,
    ),
    ProductItem(
      title: DropStringConst.NIKE_TC,
      imagePath: DropImagePath.NIKE_TC_7900,
      price: "\$399",
      tag: DropStringConst.NIKE_TC_TAG,
      images: nikeTc7900Images,
      sizes: shoeSizes,
    ),
  ];

  static List<ProductItem> shirts = [
    ProductItem(
      title: DropStringConst.GUCCI_SHIRT,
      imagePath: DropImagePath.GUCCI_SHIRT,
      price: "\$1025",
      tag: DropStringConst.GUCCI_SHIRT,
      images: gucciShirtImages,
      sizes: shirtSizes,
    ),
    ProductItem(
      title: DropStringConst.BOMBER_JACKET,
      imagePath: DropImagePath.BOMBER_JACKET_1,
      price: "\$400",
      tag: DropStringConst.BOMBER_JACKET_TAG,
      images: bomberJacket,
      sizes: shirtSizes,
    ),
    ProductItem(
      title: DropStringConst.SUEDE_DENIM,
      imagePath: DropImagePath.SUEDE_DENIM_1,
      price: "\$399",
      tag: DropStringConst.SUEDE_DENIM_TAG,
      images: suedeDenim,
      sizes: shirtSizes,
    ),
  ];

  static List<ProductItem> jewelry = [
    ProductItem(
      title: DropStringConst.NECKLACE_1,
      imagePath: DropImagePath.NECKLACE_1,
      price: "\$125",
      tag: DropStringConst.NECKLACE_1_TAG,
      images: silverNecklace,
      sizes: necklaceSizes,
    ),
    ProductItem(
      title: DropStringConst.NECKLACE_2,
      imagePath: DropImagePath.NECKLACE_3,
      price: "\$125",
      tag: DropStringConst.NECKLACE_2_TAG,
      images: loveNecklace,
      sizes: necklaceSizes,
    ),
    ProductItem(
      title: DropStringConst.NECKLACE_3,
      imagePath: DropImagePath.NECKLACE_5,
      price: "\$125",
      tag: DropStringConst.NECKLACE_3_TAG,
      images: bananaNecklace,
      sizes: necklaceSizes,
    ),
  ];

  static Map<String, List<ProductItem>> productCategories = {
    DropStringConst.SNEAKERS: sneakers,
    DropStringConst.SHIRTS: shirts,
    DropStringConst.JEWELRY: jewelry,
  };

  static List<SelectorModel> necklaceSizes = [
    SelectorModel(
      title: "6",
      isSelected: false,
      backgroundColor: DropAppColors.accentOrangeColor,
    ),
    SelectorModel(
      title: "8",
      isSelected: false,
      backgroundColor: DropAppColors.accentPurpleColor,
    ),
    SelectorModel(
      title: "9",
      isSelected: false,
      backgroundColor: DropAppColors.accentYellowColor,
    ),
    SelectorModel(
      title: "10",
      isSelected: false,
      backgroundColor: DropAppColors.accentPinkColor,
    ),
  ];
  static List<SelectorModel> shirtSizes = [
    SelectorModel(
      title: "M",
      isSelected: false,
      backgroundColor: DropAppColors.accentPurpleColor,
    ),
    SelectorModel(
      title: "L",
      isSelected: false,
      backgroundColor: DropAppColors.accentPinkColor,
    ),
    SelectorModel(
      title: "X",
      isSelected: false,
      backgroundColor: DropAppColors.accentPurpleColor,
    ),
    SelectorModel(
      title: "XL",
      isSelected: false,
      backgroundColor: DropAppColors.accentYellowColor,
    ),
    SelectorModel(
      title: "XX",
      isSelected: false,
      backgroundColor: DropAppColors.accentDarkGreenColor,
    ),
  ];

  static List<SelectorModel> shoeSizes = [
    SelectorModel(
      title: "38",
      isSelected: false,
      backgroundColor: DropAppColors.accentPurpleColor,
    ),
    SelectorModel(
      title: "39",
      isSelected: false,
      backgroundColor: DropAppColors.accentYellowColor,
    ),
    SelectorModel(
      title: "40",
      isSelected: false,
      backgroundColor: DropAppColors.accentDarkGreenColor,
    ),
    SelectorModel(
      title: "41",
      isSelected: false,
      backgroundColor: DropAppColors.accentOrangeColor,
    ),
    SelectorModel(
      title: "42",
      isSelected: false,
      backgroundColor: DropAppColors.accentPinkColor,
    ),
    SelectorModel(
      title: "43",
      isSelected: false,
      backgroundColor: DropAppColors.accentPurpleColor,
    ),
    SelectorModel(
      title: "44",
      isSelected: false,
      backgroundColor: DropAppColors.accentYellowColor,
    ),
    SelectorModel(
      title: "45",
      isSelected: false,
      backgroundColor: DropAppColors.accentOrangeColor,
    ),
  ];

  static List<String> airMax90Images = [
    DropImagePath.AIR_MAX_90,
    DropImagePath.AIR_MAX_90_SLIDE_1,
    DropImagePath.AIR_MAX_90_SLIDE_2,
    DropImagePath.AIR_MAX_90_SLIDE_3,
  ];
  static List<String> airVaporMax2090Images = [
    DropImagePath.AIR_VAPOR_MAX,
    DropImagePath.AIR_VAPOR_MAX_SLIDE_1,
    DropImagePath.AIR_VAPOR_MAX_SLIDE_2,
    DropImagePath.AIR_VAPOR_MAX_SLIDE_3,
    DropImagePath.AIR_VAPOR_MAX_SLIDE_4,
  ];
  static List<String> nikeTc7900Images = [
    DropImagePath.NIKE_TC_7900,
    DropImagePath.NIKE_TC_7900_SLIDE_1,
    DropImagePath.NIKE_TC_7900_SLIDE_2,
    DropImagePath.NIKE_TC_7900_SLIDE_3,
  ];

  static List<String> gucciShirtImages = [
    DropImagePath.GUCCI_SHIRT,
    DropImagePath.GUCCI_JACKET,
    DropImagePath.GUCCI_TROUSER,
  ];
  static List<String> suedeDenim = [
    DropImagePath.SUEDE_DENIM_1,
    DropImagePath.SUEDE_DENIM_2,
    DropImagePath.SUEDE_YSL_JACKET,
  ];

  static List<String> bomberJacket = [
    DropImagePath.BOMBER_JACKET_1,
    DropImagePath.BOMBER_JACKET_2,
    DropImagePath.BOMBER_JACKET_3,
  ];

  static List<String> silverNecklace = [
    DropImagePath.NECKLACE_1,
    DropImagePath.NECKLACE_2,
  ];

  static List<String> loveNecklace = [
    DropImagePath.NECKLACE_3,
    DropImagePath.NECKLACE_4,
  ];

  static List<String> bananaNecklace = [
    DropImagePath.NECKLACE_5,
  ];

  static List<Color> colors = [
    DropAppColors.accentPurpleColor,
    DropAppColors.accentPinkColor,
    DropAppColors.accentYellowColor,
    DropAppColors.accentDarkGreenColor,
    DropAppColors.accentOrangeColor,
    DropAppColors.primaryColor,
    DropAppColors.secondaryColor2,
    DropAppColors.secondaryColor,
  ];

  static List<BrandItem> brands = [
    BrandItem(
      brand: DropStringConst.NIKE,
      imagePath: DropImagePath.NIKE_SWOOSH,
      color: DropAppColors.accentPurpleColor,
    ),
    BrandItem(
      brand: DropStringConst.ADIDAS,
      imagePath: DropImagePath.ADIDAS,
      color: DropAppColors.accentPinkColor,
    ),
    BrandItem(
      brand: DropStringConst.JORDAN,
      imagePath: DropImagePath.JORDAN,
      color: DropAppColors.accentYellowColor,
    ),
    BrandItem(
      brand: DropStringConst.NEW_BALANCE,
      imagePath: DropImagePath.NEW_BALANCE,
      color: DropAppColors.accentDarkGreenColor,
    ),
    BrandItem(
      brand: DropStringConst.PUMA,
      imagePath: DropImagePath.PUMA,
      color: DropAppColors.accentOrangeColor,
    ),
    BrandItem(
      brand: DropStringConst.REEBOK,
      imagePath: DropImagePath.REEBOK,
      color: DropAppColors.accentPurpleColor,
    ),
    BrandItem(
      brand: DropStringConst.TIMBERLAND,
      imagePath: DropImagePath.TIMBERLAND,
      color: DropAppColors.accentDarkGreenColor,
    ),
    BrandItem(
      brand: DropStringConst.KSWISS,
      imagePath: DropImagePath.KSWISS,
      color: DropAppColors.accentOrangeColor,
    ),
  ];

  static List<CheckOutItem> checkOutItems = [
    CheckOutItem(
      title: DropStringConst.AIR_VAPOR_MAX,
      imagePath: DropImagePath.AIR_VAPOR_MAX,
      price: "200",
      quantity: "1",
    ),
    CheckOutItem(
      title: DropStringConst.GUCCI_SHIRT,
      imagePath: DropImagePath.GUCCI_SHIRT,
      price: "1025",
      quantity: "1",
    ),
    CheckOutItem(
      title: DropStringConst.NECKLACE_3,
      imagePath: DropImagePath.NECKLACE_5,
      price: "125",
      quantity: "2",
    ),
  ];
}

class RoamData {
  static List<DiscoverCardItem> discoverCardItems = [
    DiscoverCardItem(
      title: RoamStringConst.ANIMALS,
      icon: RoamImagePath.ELEPHANT,
      backgroundColor: RoamAppColors.lightGreen70,
      color: RoamAppColors.darkGreen,
    ),
    DiscoverCardItem(
      title: RoamStringConst.ADVENTURE,
      icon: RoamImagePath.CAR,
      backgroundColor: RoamAppColors.purple10,
      color: RoamAppColors.purple,
    ),
    DiscoverCardItem(
      title: RoamStringConst.MEALS,
      icon: RoamImagePath.MEAL,
      backgroundColor: RoamAppColors.yellow10,
      color: RoamAppColors.deepYellow,
    ),
    DiscoverCardItem(
      title: RoamStringConst.NATURE,
      icon: RoamImagePath.NATURE_ICON,
      backgroundColor: RoamAppColors.lightGreen70,
      color: RoamAppColors.darkGreen,
    ),
    DiscoverCardItem(
      title: RoamStringConst.BEACHES,
      icon: RoamImagePath.BEACHES,
      backgroundColor: RoamAppColors.purple10,
      color: RoamAppColors.purple,
    ),
  ];

  static List<TrendingCardItem> trendingItems = [
    TrendingCardItem(
      title: RoamStringConst.LIMA_CITY,
      subtitle: RoamStringConst.PERU,
      rating: 4.4,
      imagePath: RoamImagePath.LIMA_1,
    ),
    TrendingCardItem(
      title: RoamStringConst.BALI,
      subtitle: RoamStringConst.INDONESIA,
      rating: 4.5,
      imagePath: RoamImagePath.REGIS_BALI,
    ),
    TrendingCardItem(
      title: RoamStringConst.RHODES,
      subtitle: RoamStringConst.GREECE,
      rating: 4.4,
      imagePath: RoamImagePath.RHODES_GREECE,
    ),
    TrendingCardItem(
      title: RoamStringConst.HALONG_BAY,
      subtitle: RoamStringConst.VIETNAM,
      rating: 4.3,
      imagePath: RoamImagePath.HALONG_BAY,
    ),
    TrendingCardItem(
      title: RoamStringConst.VATICAN_CITY,
      subtitle: RoamStringConst.ITALY,
      rating: 4.5,
      imagePath: RoamImagePath.VATICAN_CITY,
    ),
  ];

  static List<PlaceCardItem> placeCardItems = [
    PlaceCardItem(
      title: RoamStringConst.HOI_ANN,
      subtitle: RoamStringConst.VIETNAM,
      content: RoamStringConst.CONTENT_RATING_1,
      rating: 4.4,
      imagePath: RoamImagePath.HOI_ANN,
    ),
    PlaceCardItem(
      title: RoamStringConst.BARRANCO,
      subtitle: RoamStringConst.PERU,
      content: RoamStringConst.CONTENT_RATING_2,
      rating: 4.5,
      imagePath: RoamImagePath.BARRANCO,
    ),
    PlaceCardItem(
      title: RoamStringConst.VARANASI,
      subtitle: RoamStringConst.INDIA,
      content: RoamStringConst.CONTENT_RATING_3,
      rating: 4.4,
      imagePath: RoamImagePath.VARANASI,
    ),
    PlaceCardItem(
      title: RoamStringConst.MYKONO,
      subtitle: RoamStringConst.GREECE,
      content: RoamStringConst.CONTENT_RATING_4,
      rating: 4.3,
      imagePath: RoamImagePath.MYKONO,
    ),
    PlaceCardItem(
      title: RoamStringConst.VENICE,
      subtitle: RoamStringConst.ITALY,
      content: RoamStringConst.CONTENT_RATING_5,
      rating: 4.5,
      imagePath: RoamImagePath.VENICE,
    ),
  ];

  static const List<String> profileStackedImage = [
    RoamImagePath.LESLIE,
    RoamImagePath.DARELL,
    RoamImagePath.HAWKINS,
    RoamImagePath.JANE,
  ];

  static List<OldTripItem> oldTripItems = [
    OldTripItem(
      title: RoamStringConst.PERU_BEACH,
      subtitle: RoamStringConst.DURATION_1,
      imagePath: RoamImagePath.BEACHES_2,
      collaborators: 3,
    ),
    OldTripItem(
      title: RoamStringConst.VIETNAM_19,
      subtitle: RoamStringConst.DURATION_2,
      imagePath: RoamImagePath.VIETNAM_2,
      collaborators: 2,
    ),
    OldTripItem(
      title: RoamStringConst.BALI,
      subtitle: RoamStringConst.DURATION_1,
      imagePath: RoamImagePath.MORE_2,
      collaborators: 1,
    ),
    OldTripItem(
      title: RoamStringConst.PARIS_FUN,
      subtitle: RoamStringConst.DURATION_2,
      imagePath: RoamImagePath.EIFFEL_TOWER,
      collaborators: 6,
    ),
  ];

  static List<SavedPlaceItem> savedPlacesItems = [
    SavedPlaceItem(
      title: RoamStringConst.GREAT_WALL,
      subtitle: RoamStringConst.LOREM_IPSUM_1,
      imagePath: RoamImagePath.GREAT_WALL,
      likes: 737,
    ),
    SavedPlaceItem(
      title: RoamStringConst.EIFFEL_TOWER,
      subtitle: RoamStringConst.LOREM_IPSUM_1,
      imagePath: RoamImagePath.EIFFEL_TOWER,
      likes: 472,
    ),
    SavedPlaceItem(
      title: RoamStringConst.STONE_HENGE,
      subtitle: RoamStringConst.LOREM_IPSUM_1,
      imagePath: RoamImagePath.STONE_HENGE,
      likes: 129,
    ),
    SavedPlaceItem(
      title: RoamStringConst.NIAGARA_FALLS,
      subtitle: RoamStringConst.LOREM_IPSUM_1,
      imagePath: RoamImagePath.NIAGARA_FALLS,
      likes: 886,
    ),
    SavedPlaceItem(
      title: RoamStringConst.BLACK_LAGOON,
      subtitle: RoamStringConst.LOREM_IPSUM_1,
      imagePath: RoamImagePath.BLACK_LAGOON,
      likes: 190,
    ),
  ];

  static List<TagItem> tagItems1 = [
    TagItem(
      tag: RoamStringConst.PHOTOGRAPHY_TAG,
      textColor: RoamAppColors.secondaryColor,
      backgroundColor: RoamAppColors.lightGreen50,
    ),
    TagItem(
      tag: RoamStringConst.NATURE_TAG,
      textColor: RoamAppColors.pink,
      backgroundColor: RoamAppColors.pink10,
    ),
    TagItem(
      tag: RoamStringConst.LUXURY_TAG,
      textColor: RoamAppColors.yellow,
      backgroundColor: RoamAppColors.yellow10,
    ),
  ];

  static List<TagItem> tagItems2 = [
    TagItem(
      tag: RoamStringConst.PHOTOGRAPHY_TAG,
      textColor: RoamAppColors.secondaryColor,
      backgroundColor: RoamAppColors.lightGreen50,
    ),
    TagItem(
      tag: RoamStringConst.NATURE_TAG,
      textColor: RoamAppColors.pink,
      backgroundColor: RoamAppColors.pink10,
    ),
  ];

  static const List<String> moreImages = [
    RoamImagePath.MORE_1,
    RoamImagePath.MORE_2,
    RoamImagePath.MORE_3,
    RoamImagePath.MORE_4,
    RoamImagePath.MORE_5,
    RoamImagePath.MORE_6,
  ];

  static const List<String> defaultTags = [
    RoamStringConst.PHOTOGRAPHY_TAG,
    RoamStringConst.NATURE_TAG,
    RoamStringConst.LUXURY_TAG,
  ];

  static const List<Color> defaultTagColors = [
    RoamAppColors.lightGreen50,
    RoamAppColors.pink10,
    RoamAppColors.yellow10,
  ];

  static List<ExploreCardItem> exploreCardItems = [
    ExploreCardItem(
      title: RoamStringConst.BREAKFAST_PLACES,
      content: RoamStringConst.CONTENT_RATING_1,
      imagePath: RoamImagePath.BREAKFAST,
      tags: tagItems1,
      rating: 4.0,
    ),
    ExploreCardItem(
      title: RoamStringConst.BEACHES,
      content: RoamStringConst.CONTENT_RATING_3,
      imagePath: RoamImagePath.BEACHES_BALI,
      tags: tagItems2,
      rating: 5.0,
    ),
    ExploreCardItem(
      title: RoamStringConst.RESORTS,
      content: RoamStringConst.CONTENT_RATING_4,
      imagePath: RoamImagePath.RESORTS,
      tags: tagItems1,
      rating: 3.5,
    ),
  ];

  static List<AttractionCardItem> attractionCardItems = [
    AttractionCardItem(
      title: RoamStringConst.TANOH,
      content: RoamStringConst.TANOH_TEXT,
      imagePath: RoamImagePath.TANAH_LOT,
      rating: 4.6,
    ),
    AttractionCardItem(
      title: RoamStringConst.SACRED_MONKEY,
      content: RoamStringConst.SACRED_MONKEY_TEXT,
      imagePath: RoamImagePath.SACRED_MONKEY,
      rating: 4.4,
    ),
    AttractionCardItem(
      title: RoamStringConst.GILI_ISLAND,
      content: RoamStringConst.GILI_ISLAND_TEXT,
      imagePath: RoamImagePath.GILI_ISLAND,
      rating: 4.3,
    ),
  ];

  static List<AlbumCoverItem> albumItems = [
    AlbumCoverItem(
      title: RoamStringConst.THAILAND,
      imagePath: RoamImagePath.THAILAND,
      width: 0.4,
      spacing: 8,
    ),
    AlbumCoverItem(
      title: RoamStringConst.INDONESIA,
      imagePath: RoamImagePath.INDONESIA,
      width: 0.6,
      spacing: 8,
    ),
    AlbumCoverItem(
      title: RoamStringConst.PERU,
      imagePath: RoamImagePath.PERU_2,
    ),
    AlbumCoverItem(
      title: RoamStringConst.ITALY,
      imagePath: RoamImagePath.ITALY,
      width: 0.3,
      spacing: 8,
    ),
    AlbumCoverItem(
      title: RoamStringConst.VIETNAM,
      imagePath: RoamImagePath.VIETNAM_2,
      width: 0.7,
      spacing: 8,
    ),
  ];

  static List<JourneyCardItem> journeyItems = [
    JourneyCardItem(
      title: RoamStringConst.TANOH,
      subtitle: RoamStringConst.SUBTITLE_1,
      imagePath: RoamImagePath.TANAH_LOT,
      images: RoamData.profileStackedImage,
      rating: 3.8,
      collaborators: 90,
    ),
    JourneyCardItem(
      title: RoamStringConst.LIMA,
      subtitle: RoamStringConst.SUBTITLE_2,
      imagePath: RoamImagePath.LIMA_1,
      images: RoamData.profileStackedImage,
      rating: 3.4,
      collaborators: 83,
    ),
    JourneyCardItem(
      title: RoamStringConst.KANCHANABURI,
      subtitle: RoamStringConst.SUBTITLE_3,
      imagePath: RoamImagePath.KANCHANABURI,
      images: RoamData.profileStackedImage,
      rating: 4.4,
      collaborators: 72,
    ),
  ];

  static const String HOWARD = "Esther Howard";
  static const String FISHER = "Cody Fisher";
  static const String COURTNEY = "Courtney Henry";
  static const String ANNETTE = "Annette Black";
  static const String ELEANOR = "Eleanor Pena";
  static const String JEROME = "Jerome Bell";

  static List<CollaboratorItem> collaboratorItems = [
    CollaboratorItem(
      title: RoamStringConst.HOWARD,
      imagePath: RoamImagePath.HOWARD,
    ),
    CollaboratorItem(
      title: RoamStringConst.FISHER,
      imagePath: RoamImagePath.FISHER,
    ),
    CollaboratorItem(
      title: RoamStringConst.COURTNEY,
      imagePath: RoamImagePath.COURTNEY,
    ),
    CollaboratorItem(
      title: RoamStringConst.ANNETTE,
      imagePath: RoamImagePath.ANNETTE,
    ),
    CollaboratorItem(
      title: RoamStringConst.ELEANOR,
      imagePath: RoamImagePath.ELEANOR,
    ),
    CollaboratorItem(
      title: RoamStringConst.JEROME,
      imagePath: RoamImagePath.JEROME,
    ),
  ];
}
