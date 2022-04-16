import 'package:mocktail/mocktail.dart';
import 'package:smart_tracker/core/provider/theme_provider.dart';
import 'package:smart_tracker/core/services/storage/storage_service.dart';

class MockStorageService extends Mock implements StorageService {}

class MockThemeProvider extends Mock implements ThemeProvider {}
