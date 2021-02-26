import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_a2z/common_widgets/common_widgets.dart';
import 'package:local_auth/local_auth.dart';

class BiometricAuth extends StatefulWidget {
  final String title;

  const BiometricAuth({Key key, this.title}) : super(key: key);

  @override
  _BiometricAuthState createState() => _BiometricAuthState();
}

class _BiometricAuthState extends State<BiometricAuth> {
  final LocalAuthentication _localAuth = LocalAuthentication();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              iconSize: 60,
              onPressed: () async {
                try {
                  final bool weCanCheckBiometrics = await _localAuth.canCheckBiometrics;
                  if (weCanCheckBiometrics) {
                    final bool authenticate = await _localAuth.authenticateWithBiometrics(
                      localizedReason: 'Authenticate to login without password',
                    );
                    print(authenticate);
                  }else{
                    CommonWidgets.showToast(context, 'Your device is not supported this feature');
                  }
                } on PlatformException catch (e) {
                  print(e);
                }
              },
              icon: const Icon(
                Icons.fingerprint_outlined,
                color: Colors.blue,
              ),
            ),
            const Text(
              'Touch to Login',
              style: TextStyle(fontSize: 35),
            )
          ],
        ),
      ),
    );
  }
}
