import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/feature/home/widegts/statistic_item.dart';

import '../../login/gen/locale_keys.g.dart';

class TaskStatistics extends StatelessWidget {
  const TaskStatistics({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 20.h),

      decoration: BoxDecoration(
        color: const Color(0xff515b92),
        borderRadius: BorderRadius.circular(16.r),
      ),

      child: Row(
        children: [
          Expanded(
            child: StatisticItem(number: '12', title: LocaleKeys.tasks.tr()),
          ),

          Expanded(
            child: StatisticItem(number: '5', title: LocaleKeys.done.tr()),
          ),

          Expanded(
            child: StatisticItem(number: '7', title: LocaleKeys.pending.tr()),
          ),
        ],
      ),
    );
  }
}