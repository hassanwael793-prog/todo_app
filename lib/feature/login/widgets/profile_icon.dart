import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:todo_app/core/widget/main_button.dart';

class ProfileIcon extends StatefulWidget {
  const ProfileIcon({super.key});

  @override
  State<ProfileIcon> createState() => _ProfileIconState();
}

class _ProfileIconState extends State<ProfileIcon> {
  final picker = ImagePicker();
  File? selectedImage;

  pickImageFromCamera() async {
    final XFile? photo = await picker.pickImage(source: ImageSource.camera);
    if (photo != null) {
      setState(() {
        selectedImage = File(photo.path);
      });
    }
  }

  pickImageFromGallery() async {
    final XFile? photo = await picker.pickImage(source: ImageSource.gallery);
    if (photo != null) {
      setState(() {
        selectedImage = File(photo.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => Padding(
            padding: EdgeInsets.all(20.0.r),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                MainButton(
                  title: "camera".tr(),
                  onTap: () {
                    pickImageFromCamera();
                    Navigator.pop(context);
                  },
                ),
                20.verticalSpace,
                MainButton(
                  title: "gallery".tr(),
                  onTap: () {
                    pickImageFromGallery();
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        );
      },
      child: CircleAvatar(
        radius: 60.r,
        backgroundColor: Colors.grey.shade200,
        backgroundImage: selectedImage != null ? FileImage(selectedImage!) : null,
        child: selectedImage == null
            ? Icon(Icons.person, size: 60.r, color: Colors.grey)
            : null,
      ),
    );
  }
}