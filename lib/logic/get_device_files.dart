import 'package:file_picker/file_picker.dart';

class GetDeviceFiles {
  static Future<PlatformFile?> pickFile(
      {FileType fileType = FileType.any}) async {
    try {
      final pickedFiles = await FilePicker.platform.pickFiles(
        type: fileType,
        withData: true,
        withReadStream: true,
        allowMultiple: false,
      );

      if (pickedFiles != null && pickedFiles.isSinglePick) {
        final file = pickedFiles.files.first;
        return file;
      }

      return null;
    } catch (e) {
      print(e);
      return null;
    }
  }
}
