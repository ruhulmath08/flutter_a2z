import 'package:flutter/material.dart';
import 'package:flutter_a2z/common_widgets/common_floating_action_button_for_display_code.dart';
import 'package:flutter_a2z/constants/app_color.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PixelPerfectResponsiveUiScreen extends StatelessWidget {
  final String title;
  final Object model;

  const PixelPerfectResponsiveUiScreen({Key? key, required this.title, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      BoxConstraints(maxWidth: MediaQuery.of(context).size.width, maxHeight: MediaQuery.of(context).size.height),
      designSize: Size(360, 690),
      context: context,
      minTextAdapt: true,
    );
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text(title)),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 52.h),
              Text(
                'Sign Up to Create Account',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  color: darkTextColor,
                ),
              ),
              SizedBox(height: 4.h),
              Wrap(
                children: [
                  Text(
                    'Already have an account? ',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: lightTextColor,
                    ),
                  ),
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: purpleColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24.h),
              commonTextField(hint: 'First Name'),
              SizedBox(height: 16.h),
              commonTextField(hint: 'Email Address'),
              SizedBox(height: 16.h),
              commonTextField(hint: 'Password'),
              SizedBox(height: 16.h),
              commonTextField(hint: 'Confirm Password'),
              SizedBox(height: 16.h),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: purpleColor,
                  padding: EdgeInsets.symmetric(vertical: 14.w),
                  minimumSize: const Size(double.infinity, 0),
                  textStyle: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                child: const Text('Create Account'),
              ),
              SizedBox(height: 16.h),
              Row(
                children: [
                  const Expanded(child: Divider()),
                  SizedBox(width: 16.w),
                  Text(
                    'Or sign up via',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 16.w),
                  const Expanded(child: Divider()),
                ],
              ),
              SizedBox(height: 16.h),
              OutlinedButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  primary: darkTextColor,
                  padding: EdgeInsets.symmetric(vertical: 14.w),
                  side: const BorderSide(color: borderColor),
                  minimumSize: const Size(double.infinity, 0),
                  textStyle: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/google.png'),
                    SizedBox(width: 10.w),
                    const Text('Google'),
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              Wrap(
                children: [
                  Text(
                    'By signing up you agree to our ',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: lightTextColor,
                    ),
                  ),
                  Text(
                    'terms and conditions',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: purpleColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: CommonFloatingActionButtonForDisplayCode(
          heroTag: pixelPerfectResponsiveUiRoute,
          screenTitle: pixelPerfectResponsiveUiTitle,
          filePath: pixelPerfectResponsiveUiFilePath,
          model: model,
        ),
      ),
    );
  }

  TextField commonTextField({required String hint}) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: textFieldColor,
        hintText: hint,
        helperStyle: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 14.h,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(color: Colors.transparent, width: 0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(color: Colors.transparent, width: 0),
        ),
      ),
    );
  }
}
