import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/getx/login_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _obscurePassword = true; // For password visibility toggle
  Login_Controller _login_controller=Get.put(Login_Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0), // Adjust the height as needed
        child: Container(
          decoration: BoxDecoration(
            color: Colors.indigoAccent,
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30.0), // Adjust the radius as needed
            ),
          ),
          child: AppBar(
            title: const Text(
              "Login API GETx",
              style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),
            ),
            backgroundColor: Colors.transparent, // Make AppBar background transparent
            elevation: 0, // Remove shadow
            centerTitle: true,
            toolbarHeight: 80, // Set toolbar height if needed
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16,right: 16, top: 150),
        child: SingleChildScrollView(
          child: Center(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,

                children: [
                  // Email Field
                  TextFormField(
                   controller: _login_controller.emailController.value,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      filled: true,
                      fillColor: Colors.blueGrey.shade100,
                      prefixIcon: Icon(Icons.email, color: Colors.blue),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Email cannot be empty";
                      }
                      if (!RegExp(r"^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+\.[a-z]").hasMatch(value)) {
                        return "Please enter a valid email";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height:30),

                  // Password Field
                  TextFormField(
                   controller:_login_controller.passwordController.value,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      filled: true,
                      fillColor: Colors.blueGrey.shade100,
                      prefixIcon: Icon(Icons.lock, color: Colors.blue),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscurePassword ? Icons.visibility : Icons.visibility_off,
                          color: Colors.blue,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Password cannot be empty";
                      }
                      if (value.length < 6) {
                        return "Password must be at least 6 characters";
                      }
                      return null;
                    },
                    obscureText: _obscurePassword,
                  ),
                  SizedBox(height:200),

                  // Login Button
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState?.validate() ?? false) {
                       _login_controller.loginApi();

                      }
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blue, // Text color
                      minimumSize: Size(double.infinity, 50), // Button width and height
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12), // Border radius
                      ),
                    ),
                    child: const Text("Login"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
