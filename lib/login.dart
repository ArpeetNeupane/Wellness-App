import 'package:flutter/material.dart';
import 'signup.dart';
import 'dashboard.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _passwordVisibility = false;
  bool _rememberMe = false;

  //avoiding memory leaks and optimizing app (when rebuilding)
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView( //to prevent overflow when keyboard pops up during typing
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(height: 120),
                Center(
                  child: const Text(
                    'Welcome back!',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.white
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 60),
                SizedBox(
                  width: 380,
                  child: TextFormField(
                    controller: _emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email is required.';
                      }
                      if (!RegExp(r'^[\w-.]+@([\w-]+\.)+[\w]{2,4}').hasMatch(value)) { //basic email regex
                        return 'Enter a valid email';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      hintText: 'Enter your email.',
                      prefixIcon: Icon(Icons.email),
                      contentPadding: EdgeInsets.symmetric(vertical: 17)
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: 380,
                  child: TextFormField(
                    controller: _passwordController,
                    obscureText: !_passwordVisibility,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password is required.';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: 'Enter your password.',
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _passwordVisibility ? Icons.visibility:Icons.visibility_off,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            _passwordVisibility = !_passwordVisibility;
                          });
                        },
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 17)
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          checkColor: Colors.black, //color of checkmark  
                          fillColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
                            if (states.contains(WidgetState.selected)) {
                              return Colors.white; //bg when checked
                            }
                            return Colors.black; //bg when unchecked
                          }),
                          value: _rememberMe,
                          onChanged: (value) {
                            setState(() {
                              _rememberMe = value!;
                            });
                          },
                        ),
                        const Text('Remember me'),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        //logic to handle forgot password
                      },
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: 380,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: TextButton(
                      onPressed: () async {
                        final navigator = Navigator.of(context);
                        FocusScope.of(context).unfocus(); //dismissing keyboard first
                        
                        await Future.delayed(const Duration(milliseconds: 100)); //waiting for keyboard to fully dismiss
                        
                        if (!mounted) return;
                        if (_formKey.currentState!.validate()) {
                          navigator.push(
                            MaterialPageRoute(
                              builder: (context) => const DashboardScreen(),
                            ),
                          );
                        }
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 22),
                Row(
                  children: [
                    const Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 17, //spacing before line
                        endIndent: 10, //spacing after line
                      ),
                    ),
                    const Text('Or'),
                    const Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 10,
                        endIndent: 17,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 22),
                SizedBox(
                  width: 380,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: TextButton(
                      onPressed: () {
                        //logic for handling google login logic
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.g_translate, color: Colors.black),
                          SizedBox(width: 5),
                          Text(
                            'Google',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?"),
                    SizedBox(width: 5),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        'Create an account',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}