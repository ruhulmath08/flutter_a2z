import 'package:flutter/material.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            children: [
              _AppLogoContainer(),
              const SizedBox(height: 10),
              _Username(),
              const SizedBox(height: 10),
              _Password(),
              const SizedBox(height: 10),
              KeepMeLoggedIn(),
              const SizedBox(height: 10),
              _LoginButton(),
              const SizedBox(height: 10),
              _SignUpText(),
              const SizedBox(height: 10),
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
      radius: 70,
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
              padding: const EdgeInsets.symmetric(vertical: 10),
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
                  const Text('Remember Me', style: TextStyle(fontSize: 14)),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          flex: 0,
          child: InkWell(
            onTap: () {},
            child: const Text(
              'Forgot Password',
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 14, color: Colors.blue),
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
        minimumSize: const Size(double.infinity, 45),
      ),
      child: const Text('Login', style: TextStyle(fontSize: 17)),
    );
  }
}

class _SignUpText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.end,
      children: [
        const Text(
          "Don't have an account? ",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(signUpScreenRoute);
          },
          child: const Text(
            'SignUp',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.blue),
          ),
        ),
      ],
    );
  }
}
