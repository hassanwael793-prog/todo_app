import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileIcon extends StatelessWidget {
  final File? selectedImage;
  final VoidCallback? onTap;

  const ProfileIcon({
    super.key,
    this.selectedImage,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 92.r,
          height: 92.r,
          decoration: const BoxDecoration(
            color: Color(0xffe8ecf5),
            shape: BoxShape.circle,
          ),
          child: ClipOval(
            child: selectedImage != null
                ? Image.file(
              selectedImage!,
              width: 92.r,
              height: 92.r,
              fit: BoxFit.cover,
            )
                : Icon(
              Icons.person,
              size: 46.r,
              color: const Color(0xff515b92),
            ),
          ),
        ),
      ),
    );
  }
}