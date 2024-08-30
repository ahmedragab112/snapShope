import 'dart:developer';
import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class PickImage {
  static Future<File?> cameraPick() async {
    var cameraImage = await ImagePicker().pickImage(source: ImageSource.camera);
    if (cameraImage != null) {
      return File(cameraImage.path);
    }
    return null;
  }

  static Future<File?> galleryPick() async {
    PermissionStatus status;

    if (Platform.isAndroid) {
      final androidInfo = await DeviceInfoPlugin().androidInfo;

      if (androidInfo.version.sdkInt <= 32) {
        status = await Permission.storage.request();
      } else {
        status = await Permission.photos.request();
      }
    } else {
      // Request appropriate permission for iOS
      status = await Permission.photos.request();
    }

    if (status.isGranted) {
      var image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image != null) {
        return File(image.path);
      }
    }

    // Handle the case where permission is denied
    if (status.isDenied || status.isPermanentlyDenied) {
      // Optionally, guide the user to settings
      log(
          "Permission denied. Please enable access to the gallery in settings.");
    }

    return null;
  }
}
