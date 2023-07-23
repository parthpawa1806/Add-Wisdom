import 'package:file/file.dart';
import 'package:hive/hive.dart';

part 'videos.g.dart';

@HiveType(typeId: 1)
class Videos {
  Videos({required this.Productid,required this.savedFile});
  @HiveField(0)
  String? Productid;

  @HiveField(1)
  File savedFile;
}
