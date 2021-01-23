import 'package:flutter/material.dart';
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
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0, right: 10.0, bottom: 10.0, left: 10.0),
          child: ListView(
            children: <Widget>[
              const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/flutter_a2z.png'),
                  backgroundColor: Colors.white,
                  minRadius: 60,
                  maxRadius: 80,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                autofocus: false,
                decoration: InputDecoration(
                  hintText: 'Username',
                  labelText: 'Username',
                  prefixIcon: const Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                autofocus: false,
                obscureText: _obscureText,
                decoration: InputDecoration(
                    hintText: 'Password',
                    labelText: 'Password',
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
                    )),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ButtonTheme(
                height: 50.0,
                child: RaisedButton(
                  color: Colors.blue,
                  elevation: 5,
                  onPressed: () {
                    Navigator.pushNamed(context, HOME_SCREEN_ROUTE);
                  },
                  child: const Text('Login', style: TextStyle(fontSize: 20, color: Colors.white)),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              _createAccountLabel(),
              const SizedBox(
                height: 20.0,
              ),
              _divider(),
              const SizedBox(
                height: 20.0,
              ),
              _facebookButton(),
              const SizedBox(
                height: 20.0,
              ),
              _googleButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _divider() {
    return Row(
      children: <Widget>[
        const Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Divider(
              thickness: 2,
            ),
          ),
        ),
        const Text(
          'Social Login',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.grey),
        ),
        const Expanded(
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
            flex: 1,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xff1959a9),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5), topLeft: Radius.circular(5)),
              ),
              alignment: Alignment.center,
              child: const Text('f', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w400)),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(5), topRight: Radius.circular(5)),
              ),
              alignment: Alignment.center,
              child: const Text('Log in with Facebook', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _googleButton() {
    return Container(
      height: 50,
      //margin: EdgeInsets.symmetric(vertical: 20),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xff34a853),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5), topLeft: Radius.circular(5)),
              ),
              alignment: Alignment.center,
              child: const Text('G', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w400)),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(5), topRight: Radius.circular(5)),
              ),
              alignment: Alignment.center,
              child: const Text('Log in with Google', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _createAccountLabel() {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SIGN_UP_SCREEN_ROUTE);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          const Text(
            'Don\'t have an account ?',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            width: 10,
          ),
          const Text(
            'Sign Up',
            style: TextStyle(color: Colors.blue, fontSize: 15, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
