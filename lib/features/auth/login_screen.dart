import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wellness/core/route_config/route_names.dart';

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
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(height: 120.h),
                Center(
                  child: Text(
                    'Welcome back!',
                    style: TextStyle(
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 60.h),
                SizedBox(
                  width: 380.w,
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
                    decoration: InputDecoration(
                      hintText: 'Enter your email.',
                      prefixIcon: Icon(Icons.email, size: 24.sp),
                      contentPadding: EdgeInsets.symmetric(vertical: 17.h)
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  width: 380.w,
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
                      prefixIcon: Icon(Icons.lock, size: 24.sp),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _passwordVisibility ? Icons.visibility : Icons.visibility_off,
                          size: 24.sp,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            _passwordVisibility = !_passwordVisibility;
                          });
                        },
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 17.h)
                    ),
                  ),
                ),
                SizedBox(height: 5.h),
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
                        Text(
                          'Remember me',
                          style: TextStyle(fontSize: 14.sp),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        //logic to handle forgot password
                      },
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.white, fontSize: 14.sp),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30.h),
                SizedBox(
                  width: 380.w,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.r)
                    ),
                    child: TextButton(
                      onPressed: () async {
                        FocusScope.of(context).unfocus(); //dismissing keyboard first
                        
                        await Future.delayed(const Duration(milliseconds: 200)); //waiting for keyboard to fully dismiss
                        
                        if (_formKey.currentState!.validate()) {
                          if (!mounted) return; //checking if widget is still mounted
                          if (!context.mounted) return; //checking if context is still valid; IMPORTANT
                          Navigator.of(context).pushNamed(RoutesName.dashboardScreen);
                        }
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17.sp,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 22.h),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 17.w, //spacing before line
                        endIndent: 10.w, //spacing after line
                      ),
                    ),
                    Text(
                      'Or',
                      style: TextStyle(fontSize: 14.sp),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 10.w,
                        endIndent: 17.w,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 22.h),
                SizedBox(
                  width: 380.w,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.r)
                    ),
                    child: TextButton(
                      onPressed: () {
                        //logic for handling google login logic
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.g_translate, color: Colors.black, size: 24.sp),
                          SizedBox(width: 5.w),
                          Text(
                            'Google',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(fontSize: 14.sp),
                    ),
                    SizedBox(width: 5.w),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(
                          context,
                          AuthRouteName.signupScreen,
                        );
                      },
                      child: Text(
                        'Create an account',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 14.sp,
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