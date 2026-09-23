import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Language extends StatelessWidget {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    final currentLocale = context.locale;

    return PopupMenuButton<Locale>(
      color: Colors.white,
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14.r),
      ),
      icon: Container(
        padding: EdgeInsets.all(8.r),
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.04),
              blurRadius: 8.r,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Icon(
          Icons.language,
          color: const Color(0xff515b92),
          size: 22.r,
        ),
      ),
      onSelected: (Locale locale) {
        if (currentLocale != locale) {
          context.setLocale(locale);
        }
      },
      itemBuilder: (context) => [
        PopupMenuItem(
          value: const Locale('ar'),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'العربية',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: currentLocale.languageCode == 'ar'
                      ? FontWeight.bold
                      : FontWeight.normal,
                  color: currentLocale.languageCode == 'ar'
                      ? const Color(0xff515b92)
                      : Colors.black87,
                ),
              ),
              if (currentLocale.languageCode == 'ar')
                Icon(Icons.check, size: 18.r, color: const Color(0xff515b92)),
            ],
          ),
        ),
        PopupMenuItem(
          value: const Locale('en'),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'English',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: currentLocale.languageCode == 'en'
                      ? FontWeight.bold
                      : FontWeight.normal,
                  color: currentLocale.languageCode == 'en'
                      ? const Color(0xff515b92)
                      : Colors.black87,
                ),
              ),
              if (currentLocale.languageCode == 'en')
                Icon(Icons.check, size: 18.r, color: const Color(0xff515b92)),
            ],
          ),
        ),
      ],
    );
  }
}