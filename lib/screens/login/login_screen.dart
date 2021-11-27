import 'package:flutter/material.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            children: [
              _AppLogoContainer(),
              SizedBox(height: 10.h),
              _Username(),
              SizedBox(height: 10.h),
              _Password(),
              SizedBox(height: 10.h),
              KeepMeLoggedIn(),
              SizedBox(height: 10.h),
              _LoginButton(),
              SizedBox(height: 10.h),
              _SignUpText(),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ),
    );
  }
}

class _AppLogoContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 70.r,
      backgroundColor: Colors.transparent,
      child: Image.asset(
        'assets/images/flutter_a2z.png',
        fit: BoxFit.fill,
      ),
    );
  }
}

class _Username extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.name,
      decoration: const InputDecoration(
        filled: true,
        labelText: 'Username',
        border: UnderlineInputBorder(),
      ),
    );
  }
}

class _Password extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.name,
      decoration: const InputDecoration(
        filled: true,
        labelText: 'Password',
        border: UnderlineInputBorder(),
      ),
    );
  }
}

class KeepMeLoggedIn extends StatefulWidget {
  @override
  State<KeepMeLoggedIn> createState() => _KeepMeLoggedInState();
}

class _KeepMeLoggedInState extends State<KeepMeLoggedIn> {
  bool _rememberMe = true;

  void _pressRememberMe(val) {
    setState(() {
      _rememberMe = val as bool;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: InkWell(
            onTap: () => _pressRememberMe(!_rememberMe),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    height: 24,
                    width: 24,
                    child: Checkbox(
                      value: _rememberMe,
                      //visualDensity: VisualDensity(vertical: -4, horizontal: -4),
                      onChanged: _pressRememberMe,
                    ),
                  ),
                  Text('Remember Me', style: TextStyle(fontSize: 14.sp)),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          flex: 0,
          child: InkWell(
            onTap: () {},
            child: Text(
              'Forgot Password',
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 14.sp, color: Colors.blue),
            ),
          ),
        ),
      ],
    );
  }
}

class _LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushReplacementNamed(context, homeScreenRoute);
      },
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 40.h),
      ),
      child: Text('Login', style: TextStyle(fontSize: 17.sp)),
    );
  }
}

class _SignUpText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.end,
      children: [
        Text(
          "Don't have an account? ",
          style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(signUpScreenRoute);
          },
          child: Text(
            'SignUp',
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600, color: Colors.blue),
          ),
        ),
      ],
    );
  }
}
