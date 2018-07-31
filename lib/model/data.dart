import 'product.dart';
import 'product_item.dart';

List<Product> getProducts() {
  return <Product>[
    Product(
      title: 'White Blouse',
      items: getProductItems(Category.blouse)
    ),
    Product(
        title: 'Knit Wear',
        items: getProductItems(Category.knit)
    ),
    Product(
        title: 'Favorite hashtag',
        items: getProductItems(Category.hashtag)
    ),
    Product(
        title: 'F/W Blazer',
        items: getProductItems(Category.jacket)
    ),
    Product(
        title: 'Burgundy skirt',
        items: getProductItems(Category.skirt)
    ),
    Product(
        title: 'Others',
        items: getProductItems(Category.other)
    ),
  ];
}

List<ProductItem> getProductItems(Category category) {
  const allProductItems = <ProductItem>[
    ProductItem(
      category: Category.blouse,
      id: 0,
      imageName: '1',
      title: 'Short Sleeve Silky Blouse',
      subTitle: '숏 슬리브 실키 블라우스',
      description: '포인트 디테일 하이넥 긴소매 튜닉. 양 옆면에 트임이 있는 언밸런스한 디자인의 밑단.',
      price: 59000,
      gender: '여자',
      size: 'FREE',
      modelSize: '173cm / 76kg',
      hashtag: 'blouse'
    ),
    ProductItem(
        category: Category.blouse,
        id: 1,
        imageName: '2',
        title: 'Cutting Detail Blouse_2Color',
        subTitle: '걸리시 잔 플리츠 내추럴 플로럴 패턴',
        description: '세미 시스루 소재의 라펠 칼라 반소매 셔츠. 배색된 버튼으로 앞면에서 여밈.',
        price: 39000,
        gender: '여자',
        size: 'FREE',
        modelSize: '173cm / 76kg',
        hashtag: 'blouse'
    ),
    ProductItem(
        category: Category.blouse,
        id: 2,
        imageName: '3',
        title: 'Monts704 Collar Check',
        subTitle: '러블리한 무드의 깅엄체크 블라우스',
        description: '앞면 셔링 마감 포인트 디테일 라운드넥 와이드핏 블라우스. 긴소매 디자인.',
        price: 59000,
        gender: '여자',
        size: 'FREE',
        modelSize: '173cm / 76kg',
        hashtag: 'blouse'
    ),
    ProductItem(
        category: Category.blouse,
        id: 3,
        imageName: '4',
        title: 'Unisex Amu Minimal',
        subTitle: '가볍고 실용적인 오버사이즈 로브',
        description: '플리츠 커프스 마감 긴소매 브이넥 플루이드 블라우스. 플리츠 디테일 더블 레이어드 마감 언밸런스한 밑단. 앞면 버튼 여밈.',
        price: 29000,
        gender: '여자',
        size: 'FREE',
        modelSize: '173cm / 76kg',
        hashtag: 'blouse'
    ),
    ProductItem(
        category: Category.blouse,
        id: 4,
        imageName: '5',
        title: 'Half Neck Summer Knit T',
        subTitle: '베이직한 핏의 신축성 좋은 니트',
        description: '브이넥 긴소매 루즈핏 니트 스웨터. 배색된 리브드 디테일의 네크라인과 소매끝.',
        price: 59000,
        gender: '여자',
        size: 'FREE',
        modelSize: '173cm / 76kg',
        hashtag: 'blouse'
    ),
    ProductItem(
        category: Category.knit,
        id: 5,
        imageName: '2',
        title: 'Gentle Links Cardigan',
        subTitle: '7게이지로 편직하여 가벼운 착용감',
        description: '허리 부분이 엘라스틱 밴드로 마감된 니트 소재 플루이드 스커트. A라인 디자인.',
        price: 59000,
        gender: '여자',
        size: 'FREE',
        modelSize: '173cm / 76kg',
        hashtag: 'knit'
    ),
    ProductItem(
        category: Category.knit,
        id: 6,
        imageName: '3',
        title: 'Sequin ruffle skirt',
        subTitle: '프릴이 레이어드 된 하이웨이스트 미디 스커트',
        description: '엘라스틱 밴드로 마감된 허리 부분에 리본이 달린 스커트. 앞면 골든 버튼으로 여밈. 셔링 처리된 허리 밴드 디테일.',
        price: 39000,
        gender: '여자',
        size: 'FREE',
        modelSize: '173cm / 76kg',
        hashtag: 'knit'
    ),
    ProductItem(
        category: Category.knit,
        id: 7,
        imageName: '4',
        title: 'Frilly lace skirt',
        subTitle: '하이웨이스트 언발란스 스커트',
        description: '앞면 지퍼와 버튼으로 여미는 트위드 미디 스커트. 양 옆면 포켓과 앞면에 트임 디테일.',
        price: 59000,
        gender: '여자',
        size: 'FREE',
        modelSize: '173cm / 76kg',
        hashtag: 'knit'
    ),
    ProductItem(
        category: Category.knit,
        id: 8,
        imageName: '5',
        title: 'Color block ribbed skirt',
        subTitle: '리브드 마감 니트 소재 롱 스커트',
        description: 'A라인 플루이드 미디 스커트. 앞면 라인 버튼 디테일. 앞면 중앙 밑단 트임 디테일. 옆면 심라인 콘실 지퍼 여밈.',
        price: 29000,
        gender: '여자',
        size: 'FREE',
        modelSize: '173cm / 76kg',
        hashtag: 'knit'
    ),
    ProductItem(
        category: Category.knit,
        id: 9,
        imageName: '1',
        title: 'Sheer linen skirt',
        subTitle: '앞면에 셔링 디테일이 매치된 파레오 스타일 스커트',
        description: '셔링 디테일 하이웨이스트 스커트. 와이드 A라인 디자인. 옆면 심라인 콘실 지퍼 여밈.',
        price: 59000,
        gender: '여자',
        size: 'FREE',
        modelSize: '173cm / 76kg',
        hashtag: 'knit'
    ),
    ProductItem(
        category: Category.jacket,
        id: 10,
        imageName: '3',
        title: 'Half Neck Summer Knit T',
        subTitle: '베이직한 핏의 신축성 좋은 니트',
        description: '브이넥 긴소매 루즈핏 니트 스웨터. 배색된 리브드 디테일의 네크라인과 소매끝.',
        price: 59000,
        gender: '여자',
        size: 'FREE',
        modelSize: '173cm / 76kg',
        hashtag: 'jacket'
    ),
    ProductItem(
        category: Category.jacket,
        id: 11,
        imageName: '4',
        title: 'Unisex Amu Minimal',
        subTitle: '가볍고 실용적인 오버사이즈 로브',
        description: '플리츠 커프스 마감 긴소매 브이넥 플루이드 블라우스. 플리츠 디테일 더블 레이어드 마감 언밸런스한 밑단. 앞면 버튼 여밈.',
        price: 29000,
        gender: '여자',
        size: 'FREE',
        modelSize: '173cm / 76kg',
        hashtag: 'jacket'
    ),
    ProductItem(
        category: Category.jacket,
        id: 12,
        imageName: '5',
        title: 'Monts704 Collar Check',
        subTitle: '러블리한 무드의 깅엄체크 블라우스',
        description: '앞면 셔링 마감 포인트 디테일 라운드넥 와이드핏 블라우스. 긴소매 디자인.',
        price: 59000,
        gender: '여자',
        size: 'FREE',
        modelSize: '173cm / 76kg',
        hashtag: 'jacket'
    ),
    ProductItem(
        category: Category.jacket,
        id: 13,
        imageName: '1',
        title: 'Cutting Detail Blouse_2Color',
        subTitle: '걸리시 잔 플리츠 내추럴 플로럴 패턴',
        description: '세미 시스루 소재의 라펠 칼라 반소매 셔츠. 배색된 버튼으로 앞면에서 여밈.',
        price: 39000,
        gender: '여자',
        size: 'FREE',
        modelSize: '173cm / 76kg',
        hashtag: 'jacket'
    ),
    ProductItem(
        category: Category.jacket,
        id: 14,
        imageName: '2',
        title: 'Short Sleeve Silky Blouse',
        subTitle: '숏 슬리브 실키 블라우스',
        description: '포인트 디테일 하이넥 긴소매 튜닉. 양 옆면에 트임이 있는 언밸런스한 디자인의 밑단.',
        price: 59000,
        gender: '여자',
        size: 'FREE',
        modelSize: '173cm / 76kg',
        hashtag: 'jacket'
    ),
    ProductItem(
        category: Category.skirt,
        id: 15,
        imageName: '4',
        title: 'Sheer linen skirt',
        subTitle: '앞면에 셔링 디테일이 매치된 파레오 스타일 스커트',
        description: '셔링 디테일 하이웨이스트 스커트. 와이드 A라인 디자인. 옆면 심라인 콘실 지퍼 여밈.',
        price: 59000,
        gender: '여자',
        size: 'FREE',
        modelSize: '173cm / 76kg',
        hashtag: 'skirt'
    ),
    ProductItem(
        category: Category.skirt,
        id: 16,
        imageName: '5',
        title: 'Color block ribbed skirt',
        subTitle: '리브드 마감 니트 소재 롱 스커트',
        description: 'A라인 플루이드 미디 스커트. 앞면 라인 버튼 디테일. 앞면 중앙 밑단 트임 디테일. 옆면 심라인 콘실 지퍼 여밈.',
        price: 29000,
        gender: '여자',
        size: 'FREE',
        modelSize: '173cm / 76kg',
        hashtag: 'skirt'
    ),
    ProductItem(
        category: Category.skirt,
        id: 17,
        imageName: '1',
        title: 'Frilly lace skirt',
        subTitle: '하이웨이스트 언발란스 스커트',
        description: '앞면 지퍼와 버튼으로 여미는 트위드 미디 스커트. 양 옆면 포켓과 앞면에 트임 디테일.',
        price: 59000,
        gender: '여자',
        size: 'FREE',
        modelSize: '173cm / 76kg',
        hashtag: 'skirt'
    ),
    ProductItem(
        category: Category.skirt,
        id: 18,
        imageName: '2',
        title: 'Sequin ruffle skirt',
        subTitle: '프릴이 레이어드 된 하이웨이스트 미디 스커트',
        description: '엘라스틱 밴드로 마감된 허리 부분에 리본이 달린 스커트. 앞면 골든 버튼으로 여밈. 셔링 처리된 허리 밴드 디테일.',
        price: 39000,
        gender: '여자',
        size: 'FREE',
        modelSize: '173cm / 76kg',
        hashtag: 'skirt'
    ),
    ProductItem(
        category: Category.skirt,
        id: 19,
        imageName: '3',
        title: 'Gentle Links Cardigan',
        subTitle: '7게이지로 편직하여 가벼운 착용감',
        description: '허리 부분이 엘라스틱 밴드로 마감된 니트 소재 플루이드 스커트. A라인 디자인.',
        price: 59000,
        gender: '여자',
        size: 'FREE',
        modelSize: '173cm / 76kg',
        hashtag: 'skirt'
    ),
    ProductItem(
        category: Category.other,
        id: 20,
        imageName: '5',
        title: 'Monts704 Collar Check',
        subTitle: '러블리한 무드의 깅엄체크 블라우스',
        description: '앞면 셔링 마감 포인트 디테일 라운드넥 와이드핏 블라우스. 긴소매 디자인.',
        price: 59000,
        gender: '여자',
        size: 'FREE',
        modelSize: '173cm / 76kg',
        hashtag: 'other'
    ),
    ProductItem(
        category: Category.other,
        id: 21,
        imageName: '1',
        title: 'Unisex Amu Minimal',
        subTitle: '가볍고 실용적인 오버사이즈 로브',
        description: '플리츠 커프스 마감 긴소매 브이넥 플루이드 블라우스. 플리츠 디테일 더블 레이어드 마감 언밸런스한 밑단. 앞면 버튼 여밈.',
        price: 29000,
        gender: '여자',
        size: 'FREE',
        modelSize: '173cm / 76kg',
        hashtag: 'other'
    ),
    ProductItem(
        category: Category.other,
        id: 22,
        imageName: '2',
        title: 'Half Neck Summer Knit T',
        subTitle: '베이직한 핏의 신축성 좋은 니트',
        description: '브이넥 긴소매 루즈핏 니트 스웨터. 배색된 리브드 디테일의 네크라인과 소매끝.',
        price: 59000,
        gender: '여자',
        size: 'FREE',
        modelSize: '173cm / 76kg',
        hashtag: 'other'
    ),
    ProductItem(
        category: Category.other,
        id: 23,
        imageName: '3',
        title: 'Color block ribbed skirt',
        subTitle: '리브드 마감 니트 소재 롱 스커트',
        description: 'A라인 플루이드 미디 스커트. 앞면 라인 버튼 디테일. 앞면 중앙 밑단 트임 디테일. 옆면 심라인 콘실 지퍼 여밈.',
        price: 29000,
        gender: '여자',
        size: 'FREE',
        modelSize: '173cm / 76kg',
        hashtag: 'other'
    ),
    ProductItem(
        category: Category.other,
        id: 24,
        imageName: '4',
        title: 'Sheer linen skirt',
        subTitle: '앞면에 셔링 디테일이 매치된 파레오 스타일 스커트',
        description: '셔링 디테일 하이웨이스트 스커트. 와이드 A라인 디자인. 옆면 심라인 콘실 지퍼 여밈.',
        price: 59000,
        gender: '여자',
        size: 'FREE',
        modelSize: '173cm / 76kg',
        hashtag: 'other'
    ),
    ProductItem(
        category: Category.hashtag,
        id: 25,
        imageName: '',
        title: 'Blouse',
        subTitle: '',
        description: '',
        price: 0,
        gender: '',
        size: '',
        modelSize: '',
        hashtag: 'blouse'
    ),
    ProductItem(
        category: Category.hashtag,
        id: 26,
        imageName: '',
        title: 'Jacket',
        subTitle: '',
        description: '',
        price: 0,
        gender: '',
        size: '',
        modelSize: '',
        hashtag: 'jacket'
    ),
    ProductItem(
        category: Category.hashtag,
        id: 27,
        imageName: '',
        title: 'Knit',
        subTitle: '',
        description: '',
        price: 0,
        gender: '',
        size: '',
        modelSize: '',
        hashtag: 'knit'
    ),
    ProductItem(
        category: Category.hashtag,
        id: 28,
        imageName: '',
        title: 'Skirt',
        subTitle: '',
        description: '',
        price: 0,
        gender: '',
        size: '',
        modelSize: '',
        hashtag: 'skirt'
    ),
    ProductItem(
        category: Category.hashtag,
        id: 29,
        imageName: '',
        title: 'Shoes',
        subTitle: '',
        description: '',
        price: 0,
        gender: '',
        size: '',
        modelSize: '',
        hashtag: 'shoes'
    ),
  ];

  if (category == Category.all) {
    return allProductItems;
  } else {
    return allProductItems.where((ProductItem p) {
      return p.category == category;
    }).toList();
  }
}