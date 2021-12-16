import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:resenha/app/modules/events/infra/datasource/galery_photo_datasource.dart';

class GaleryPhotoDatasourceImpl extends GaleryPhotoDatasource {
  final ImagePicker picker;

  GaleryPhotoDatasourceImpl(this.picker);

  @override
  Future<File?> album() async {
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) return File(image.path);
  }
}
