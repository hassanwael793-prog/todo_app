import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:todo_app/core/utils/app_const.dart';
import 'package:todo_app/feature/login/data/user_model.dart';
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
  final TextEditingController _nameController = TextEditingController();

  String? savedImagePath; // متغير لحفظ مسار الصورة الجاي من البروفايل

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  saveUserData(UserModel user) {
    Hive.box<UserModel>(AppConst.userBox).put(AppConst.currentUser,user).then((value) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomeScreen()));
    }).catchError((error) {
      debugPrint(error.toString());
    });
  }

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
                    const Align(
                      alignment: AlignmentDirectional.topEnd,
                      child: Language(),
                    ),
                    80.verticalSpace,

                    // استقبال مسار الصورة هنا ووضعه في المتغير
                    Center(
                      child: ProfileIcon(
                        onImagePicked: (path) {
                          savedImagePath = path;
                        },
                      ),
                    ),

                    20.verticalSpace,
                    Center(
                      child: Text(
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
                    Text(
                      LocaleKeys.full_name.tr(),
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    8.verticalSpace,
                    CustomTextField(
                      controller: _nameController,
                    ),
                    24.verticalSpace,
                    Buttom(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          saveUserData(
                            UserModel(
                              name: _nameController.text,
                              image: savedImagePath ??
                                  '', // إرسال مسار الصورة والاسم للهايف
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
