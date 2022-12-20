import 'package:final_homework/models/index.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../actions/index.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  void _onResponse(dynamic action) {
   if(action is CreateUserError){
     final Object error = action.error;
     if(error is FirebaseAuthException){
       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(error.message??'Email already taken')));
     }
   }
   else{
     if(action is LoginError){
       final Object error = action.error;
       if(error is FirebaseAuthException){
         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(error.message??'User does not exist')));
       }
     }
   }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TextFormField(
                  controller: _email,
                  decoration: const InputDecoration(labelText: 'email'),
                  validator: (String? value) {
                    if (value == null || !value.contains('@')) {
                      return 'This is not a valid email';
                    }
                    return null;
                  },
                ),
                TextFormField(
                    controller: _password,
                    obscureText: true,
                    decoration: const InputDecoration(labelText: 'password'),
                    validator: (String? value) {
                      if (value == null || value.length < 6) {
                        return 'This is not a valid password';
                      }
                      return null;
                    }),
                const Spacer(),
                Builder(builder: (BuildContext context) {
                  return Row(
                    children: <Widget>[
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            if (!Form.of(context)!.validate()) {
                              return;
                            }
                            final Login action = Login(
                              email: _email.text,
                              password: _password.text,
                              response: _onResponse,
                            );
                            StoreProvider.of<AppState>(context).dispatch(action);
                          },
                          child: const Text('Login'),
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            if (!Form.of(context)!.validate()) {
                              return;
                            }
                            final CreateUser action = CreateUser(
                              email: _email.text,
                              password: _password.text,
                              response: _onResponse,
                            );
                            StoreProvider.of<AppState>(context).dispatch(action);
                          },
                          child: const Text('Sign Up'),
                        ),
                      ),
                    ],
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
