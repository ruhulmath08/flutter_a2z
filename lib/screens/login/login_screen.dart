import 'package:flutter/material.dart';
import 'package:flutter_a2z/common_widgets/common_widgets.dart';
import 'package:flutter_a2z/constants/constants.dart';
import 'package:flutter_a2z/routing/routing_constants.dart';

class LoginScreen extends StatefulWidget {
  final String title;

  const LoginScreen({Key key, this.title}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText;

  @override
  void initState() {
    _obscureText = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: ListView(
          padding: const EdgeInsets.all(Constants.PAGE_DEFAULT_PADDING),
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/flutter_a2z.png'),
                backgroundColor: Colors.white,
                minRadius: 60,
                maxRadius: 80,
              ),
            ),
            CommonWidgets.addVerticalSpace(20.0),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Username',
                hintStyle: themeData.textTheme.bodyText1,
                labelText: 'Username',
                labelStyle: themeData.textTheme.bodyText1,
                prefixIcon: const Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
            CommonWidgets.addVerticalSpace(20.0),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              obscureText: _obscureText,
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: themeData.textTheme.bodyText1,
                labelText: 'Password',
                labelStyle: themeData.textTheme.bodyText1,
                prefixIcon: const Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                suffixIcon: InkWell(
                  onTap: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  child: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                  ),
                ),
              ),
            ),
            CommonWidgets.addVerticalSpace(20.0),
            ButtonTheme(
              height: 50.0,
              child: RaisedButton(
                color: Colors.blue,
                elevation: 5,
                onPressed: () {
                  Navigator.pushNamed(context, HOME_SCREEN_ROUTE);
                },
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            CommonWidgets.addVerticalSpace(20.0),
            _createAccountLabel(),
            CommonWidgets.addVerticalSpace(20.0),
            _divider(),
            const SizedBox(
              height: 20.0,
            ),
            _facebookButton(),
            CommonWidgets.addVerticalSpace(20.0),
            _googleButton(),
          ],
        ),
      ),
    );
  }

  Widget _divider() {
    final ThemeData themeData = Theme.of(context);
    return Row(
      children: const [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(right: 5),
            child: Divider(
              thickness: 2,
            ),
          ),
        ),
        Text(
          'Social Login',
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 5),
            child: Divider(
              thickness: 2,
            ),
          ),
        ),
      ],
    );
  }

  Widget _facebookButton() {
    return Container(
      height: 50,
      //margin: EdgeInsets.symmetric(vertical: 20),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xff1959a9),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  topLeft: Radius.circular(5),
                ),
              ),
              alignment: Alignment.center,
              child: const Text(
                'f',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(5),
                  topRight: Radius.circular(5),
                ),
              ),
              alignment: Alignment.center,
              child: const Text('Log in with Facebook', style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _googleButton() {
    final ThemeData themeData = Theme.of(context);
    return Container(
      height: 50,
      //margin: EdgeInsets.symmetric(vertical: 20),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xff34a853),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5), topLeft: Radius.circular(5)),
              ),
              alignment: Alignment.center,
              child: const Text(
                'G',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(5),
                  topRight: Radius.circular(5),
                ),
              ),
              alignment: Alignment.center,
              child: const Text(
                'Log in with Google',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _createAccountLabel() {
    final ThemeData themeData = Theme.of(context);
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SIGN_UP_SCREEN_ROUTE);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text(
            'Don\'t have an account?',
            style: themeData.textTheme.bodyText1,
          ),
          CommonWidgets.addHorizontalSpace(10.0),
          const Text(
            'Sign Up',
            style: TextStyle(color: Colors.blue, fontSize: 15, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
