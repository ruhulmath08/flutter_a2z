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
      appBar: AppBar(title: Text("${widget.title}")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20.0,
            right: 10.0,
            bottom: 10.0,
            left: 10.0,
          ),
          child: ListView(
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage:
                  NetworkImage("https://i.imgur.com/XyT4vI9.png"),
                  backgroundColor: Colors.red,
                  minRadius: 90,
                  maxRadius: 100,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                autofocus: false,
                decoration: InputDecoration(
                  hintText: "Username",
                  labelText: "Username",
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                autofocus: false,
                obscureText: _obscureText,
                decoration: InputDecoration(
                    hintText: 'Password',
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                        print(_obscureText);
                      },
                      child: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off,
                        semanticLabel: "uuuuu",
                      ),
                    )),
              ),
              SizedBox(
                height: 20.0,
              ),
              ButtonTheme(
                height: 50.0,
                child: RaisedButton(
                  color: Colors.blue,
                  elevation: 10,
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, HOME_SCREEN_ROUTE);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
