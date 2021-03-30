import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_a2z/constants/constants.dart';
import 'package:toast/toast.dart';

class MyEmailValidation extends StatefulWidget {
  final String title;

  const MyEmailValidation({Key key, this.title}) : super(key: key);

  @override
  _MyEmailValidationState createState() => _MyEmailValidationState();
}

class _MyEmailValidationState extends State<MyEmailValidation> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool isHiddenPassword = true;

  @override
  void initState() {
    super.initState();
    _emailController.addListener(onListen);
  }

  @override
  void dispose() {
    _emailController.removeListener(onListen);
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void onListen() => setState(() {});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Form(
          key: _formKey,
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(Constants.PAGE_DEFAULT_PADDING),
              child: AutofillGroup(
                child: Column(
                  children: [
                    TextFormField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      autofillHints: const [AutofillHints.email],
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.email),
                        suffixIcon: _emailController.text.isEmpty
                            ? const SizedBox()
                            : IconButton(
                                onPressed: () {
                                  _emailController.clear();
                                },
                                icon: const Icon(Icons.close),
                              ),
                        hintText: 'user@email.com',
                        labelText: 'Email',
                        border: const OutlineInputBorder(),
                      ),
                      validator: (email) => email != null && !EmailValidator.validate(email) ? 'Enter a valid email' : null,
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: _passwordController,
                      obscureText: isHiddenPassword,
                      keyboardType: TextInputType.visiblePassword,
                        autofillHints: const [AutofillHints.password],
                      onEditingComplete:() => TextInput.finishAutofillContext(),
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: IconButton(
                          icon: isHiddenPassword
                              ? const Icon(
                                  Icons.visibility_off_rounded,
                                )
                              : const Icon(
                                  Icons.visibility_rounded,
                                ),
                          onPressed: () {
                            setState(() {
                              isHiddenPassword = !isHiddenPassword;
                            });
                          },
                        ),
                        hintText: 'Enter your password',
                        labelText: 'Password',
                        border: const OutlineInputBorder(),
                      ),
                      validator: (password){
                        if(password.isEmpty){
                          return 'Password cannot be empty';
                        } else if(password.length<6){
                          return 'Password must be greater than or equal 6 character';
                        }else{
                          return null;
                        }
                      }
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          TextInput.finishAutofillContext();
                          Toast.show('${_emailController.text} \n ${_passwordController.text}' , context, gravity: Toast.CENTER);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(45),
                      ),
                      child: const Text('Login'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
