import 'package:get/get.dart';

import '../model/productdetailmodel.dart';


class ProductDetailController extends GetxController {
  final ProductDetailModel _model = ProductDetailModel();
  List<ProductDetailItem> get items => _model.items;

  @override
  void onInit() {
    super.onInit();

    _fetchItems();
  }

  void _fetchItems() {

    final fetchedItems = [
      ProductDetailItem(
      title: 'Item 1',
      imageUrl: 'lib/assets/images/books.jpg',
      description: 'This is Item 1 description.',
      category: 'Audios',
      review: '4.5/5',
      author: 'John Doe',
    ),
    ProductDetailItem(
      title: 'Item 2',
      imageUrl: 'lib/assets/images/videos.png',
      description: 'This is Item 2 description.',
      category: 'Videos',
      review: '3.8/5',
      author: 'Jane Smith',
    ),
    ProductDetailItem(
      title: 'Item 3',
      imageUrl: 'lib/assets/images/audio.png',
      description: 'This is Item 3 description.',
      category: 'Books',
      review: '4.2/5',
      author: 'Mike Johnson',
    ),
    ];

    _model.items.value = fetchedItems;
  }

  
}
