import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gps_app/Resources/StringConstants.dart';

class AppCard extends StatelessWidget {
  final double height;
  final double width;
  final Widget child;

  AppCard({@required this.height, @required this.width,@required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xfff1f1f1),
      child: Container(
        width: ScreenUtil().setWidth(width.w),
        height: ScreenUtil().setWidth(height.h),
        child: child,
      ),
    );
  }
}
