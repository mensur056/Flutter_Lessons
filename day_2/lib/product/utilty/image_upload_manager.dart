import 'package:image_picker/image_picker.dart';

abstract class MyImageUpload {
  final ImagePicker picker = ImagePicker();
  Future<XFile?> fetch();
}

class LibraryImageUpload extends MyImageUpload {
  @override
  Future<XFile?> fetch() async {
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    return image;
  }
}

class CameraImageUpload extends MyImageUpload {
  @override
  Future<XFile?> fetch() async {
    final XFile? image = await picker.pickImage(source: ImageSource.camera);
    return image;
  }
}
