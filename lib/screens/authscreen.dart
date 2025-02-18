import 'package:flutter/material.dart';

import 'homescreen.dart';

class AuthScreen extends StatefulWidget {
  static const routeName = '/authscreen';

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool isLogin = true;
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();

  void switchAuthMode() {
    setState(() {
      isLogin = !isLogin;
    });
  }

  String? _validateEmail(String? value) {
    if (value == null || !value.contains("@")) {
      return "Enter a valid email";
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.length < 6) {
      return "Password too short";
    }
    if (!RegExp(r'[A-Z]').hasMatch(value)) {
      return "Password must contain an uppercase letter";
    }
    if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value)) {
      return "Password must contain a special character";
    }
    return null;
  }

  String? _validateConfirmPassword(String? value) {
    if (value != _passwordController.text) {
      return "Passwords do not match";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFE3F2FD), // Light blue background
      body: Center(
        child: Container(
          height: height * 0.6,
          width: width * 0.8,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                spreadRadius: 1,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.1),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      isLogin ? "Login" : "Sign Up",
                      style: TextStyle(
                          fontSize: height * 0.04, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: height * 0.03),
                    if (!isLogin)
                      TextFormField(
                        decoration:
                            const InputDecoration(labelText: "Full Name"),
                        validator: (value) =>
                            value!.isEmpty ? "Enter your name" : null,
                      ),
                    TextFormField(
                      decoration: const InputDecoration(labelText: "Email"),
                      keyboardType: TextInputType.emailAddress,
                      validator: _validateEmail,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(labelText: "Password"),
                      obscureText: true,
                      controller: _passwordController,
                      validator: _validatePassword,
                    ),
                    if (!isLogin)
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: "Confirm Password",
                        ),
                        obscureText: true,
                        validator: _validateConfirmPassword,
                      ),
                    SizedBox(height: height * 0.07),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // Perform login or signup action
                          Navigator.pushReplacementNamed(
                              context, HomeScreen.routeName);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 0.2, vertical: height * 0.015),
                        backgroundColor: Colors.blueAccent.shade200,
                      ),
                      child: Text(
                        isLogin ? "Login" : "Sign Up",
                        style: TextStyle(
                            fontSize: height * 0.02, color: Colors.white),
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                    TextButton(
                      onPressed: switchAuthMode,
                      child: Text(
                        isLogin
                            ? "Don't have an account? Sign Up"
                            : "Already have an account? Login",
                        style: TextStyle(
                            fontSize: height * 0.015, color: Colors.blueAccent),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
