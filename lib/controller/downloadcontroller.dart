import 'package:get/get.dart';

import '../model/product.dart';

class GridViewController extends GetxController {
  final GridViewModel _model = GridViewModel();
  List<GridViewItem> get items => _model.items;

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
      GridViewItem(
        title: 'Item 1',
        imageUrl: 'https://example.com/item1.jpg',
      ),
      GridViewItem(
        title: 'Item 2',
        imageUrl: 'https://example.com/item2.jpg',
      ),
      GridViewItem(
        title: 'Item 3',
        imageUrl: 'https://example.com/item3.jpg',
      ),
    ];

    _model.items.value = fetchedItems;
  }

  // Add methods for updating the model as needed
}
