import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/feature/login/widgets/buttom.dart';
import 'package:todo_app/feature/login/widgets/custom_text_field.dart';
import 'package:todo_app/feature/login/widgets/language.dart';
import 'package:todo_app/feature/login/widgets/profile_icon.dart';

import '../home/home.dart';
import 'gen/locale_keys.g.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: const Color(0xFFF5F7FB),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 24.w),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // زر تبديل اللغة في الأعلى
                    const Align(
                      alignment: AlignmentDirectional.topEnd,
                      child: Language(),
                    ),

                    80.verticalSpace,

                    // أيقونة البروفايل
                    const Center(child: ProfileIcon()),

                    20.verticalSpace,

                    // العنوان الرئيسي (تأكد من اختيار كي العنوان الصحيح من locale_keys)
                    Center(
                      child: Text(
                        // استبدل continue_buttom بكي العنوان الرئيسي مثل create_profile
                        LocaleKeys.continue_buttom.tr(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ),

                    6.verticalSpace,

                    // النص الوصفي
                    Center(
                      child: Text(
                        LocaleKeys.add_name_picture.tr(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff9d9d9f),
                        ),
                      ),
                    ),

                    32.verticalSpace,

                    // عنوان حقل الاسم
                    Text(
                      LocaleKeys.full_name.tr(),
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),

                    8.verticalSpace,

                    // حقل الإدخال
                    const CustomTextField(),

                    24.verticalSpace,

                    // زر المتابعة
                    Buttom(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}