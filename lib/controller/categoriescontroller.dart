import 'package:get/get.dart';
import 'package:mediaplayer/model/categoriesmodel.dart';

class CategoreisController extends GetxController {
  final categoryModel _model = categoryModel();

  List<categoryItem> get items => _model.items;

  @override
  void onInit() {
    super.onInit();
    _fetchItems();
  }

  void _fetchItems() {
    //apicalls
    final fetchedItems = [
      categoryItem(
        title: 'Books',
        imageUrl: 'lib/assets/images/books.jpg',
      ),
      categoryItem(
        title: 'Videos',
        imageUrl: 'lib/assets/images/videos.png',
      ),
      categoryItem(
        title: 'Audios',
        imageUrl: 'lib/assets/images/audio.png',
      ),
    ];

    _model.items.value = fetchedItems;
  }

}
