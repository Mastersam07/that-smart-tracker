import 'package:get_it/get_it.dart';
import '../core/services/storage/hive_storage_service.dart';
import '../core/services/storage/storage_service.dart';

final getIt = GetIt.I;

void setUpServiceLocator() {
  getIt.registerSingleton<StorageService>(HiveStorageService());
}
