import 'dart:io';

import 'package:file_picker/file_picker.dart';

class FileSelector {
  factory FileSelector() => _instance;

  FileSelector._();

  static final _instance = FileSelector._();

  Future<File?> showSelectFileDialog({List<String>? extensions}) async {
    if (extensions == null || extensions.isEmpty) {
      extensions = ['pdf'];
    }
    final PlatformFile? pickedFile = (await FilePicker.platform.pickFiles(
      allowMultiple: false,
      type: FileType.custom,
      allowedExtensions: extensions,
    ))
        ?.files
        .first;
    if (pickedFile != null) {
      return File(pickedFile.path!);
    }
    return null;
  }
}
