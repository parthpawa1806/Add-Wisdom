import 'package:get/get.dart';

import '../model/recommendedcontroller.dart';


class reccomendedController extends GetxController {
  final reccomendedModel _model = reccomendedModel();
  List<reccomendedItem> get items => _model.items;

  @override
  void onInit() {
    super.onInit();
    // Fetch and update items from an API or other data source
    _fetchItems();
  }

  void _fetchItems() {
    // Simulating fetching items from an API
    // Replace this with your actual API call
    final fetchedItems = [
      reccomendedItem(
        title: 'Item 1',
        imageUrl: 'https://example.com/item1.jpg',
      ),
      reccomendedItem(
        title: 'Item 2',
        imageUrl: 'https://example.com/item2.jpg',
      ),
      reccomendedItem(
        title: 'Item 3',
        imageUrl: 'https://example.com/item3.jpg',
      ),
    ];

    _model.items.value = fetchedItems;
  }

  // Add methods for updating the model as needed
}
