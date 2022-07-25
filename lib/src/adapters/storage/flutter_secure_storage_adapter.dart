import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'storage_client.dart';

class FlutterSecureStorageAdapter implements StorageClient {
  final storage = FlutterSecureStorage();

  @override
  Future<String?> read({required String key}) async {
    return storage.read(key: key);
  }

  @override
  Future<void> write({required String key, required String value}) async {
    await storage.write(key: key, value: value);
  }
}
