import 'package:get/get.dart';
import '../model/popularmodel.dart';


class PopularController extends GetxController {
  final PopularModel _model = PopularModel();
  List<PopularItem> get items => _model.items;

  @override
  void onInit() {
    super.onInit();

    _fetchItems();
  }

  void _fetchItems() {

    final fetchedItems = [
      PopularItem(
        title: 'Item 1',
        imageUrl: 'https://example.com/item1.jpg',
      ),
      PopularItem(
        title: 'Item 2',
        imageUrl: 'https://example.com/item2.jpg',
      ),
      PopularItem(
        title: 'Item 3',
        imageUrl: 'https://example.com/item3.jpg',
      ),
    ];

    _model.items.value = fetchedItems;
  }

  
}
