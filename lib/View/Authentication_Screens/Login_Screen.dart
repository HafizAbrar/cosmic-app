import 'package:demo_figma_design/Common_Widgets/bg_img_widget.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../consts/list.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Controllers to manage the text being entered in TextFields
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // A GlobalKey for the Form widget to help with validation (optional for this simple example)
  final _formKey = GlobalKey<FormState>();

  void _login() {
    // Basic validation: check if fields are not empty
    // You can also use _formKey.currentState.validate() if you add validators to TextFormFields
    if (_usernameController.text.isNotEmpty && _passwordController.text.isNotEmpty) {
      // In a real app, you would send this data to your backend for authentication
      print('Username: ${_usernameController.text}');
      print('Password: ${_passwordController.text}');

      // Navigate to another screen or show a success message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Login Successful (Username: ${_usernameController.text})')),
      );

      // Example: Navigate to a HomeScreen after successful login
      // Navigator.pushReplacement(
      //   context,
      //   MaterialPageRoute(builder: (context) => HomeScreen()), // Assuming you have a HomeScreen
      // );

    } else {
      // Show an error message if fields are empty
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter username and password')),
      );
    }
  }

  @override
  void dispose() {
    // Clean up the controllers when the widget is removed from the widget tree
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: (context.screenHeight*0.25),
               // color: Colors.blueAccent,
                child: Image.asset('assets/logo.png'),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5), // Shadow color
                      spreadRadius: 3, // How much the shadow spreads
                      blurRadius: 8, // How blurry the shadow is
                      offset: const Offset(0, -4), // Changes position of shadow (x, y)
                    ),
                  ],
                ),
                child: Form(
                  // Using a Form widget for better structure and potential validation
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20,10,20,10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center, // Center the column content vertically
                      crossAxisAlignment: CrossAxisAlignment.stretch, // Stretch children to fill horizontal space
                      children: <Widget>[
                        // App Logo (Optional)
                       /* const Icon(
                          Icons.lock_open, // Example icon
                          size: 80,
                          color: Colors.blueAccent,
                        ),*/
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                              fontWeight: FontWeight.bold
                            ),

                          ),
                        ),
                        const SizedBox(height: 5), // Spacing

                        // Username TextField
                        TextFormField(
                          style: TextStyle(color: Colors.white),
                          controller: _usernameController,
                          decoration: InputDecoration(
                            labelText: 'Username',
                            hintText: 'Enter your username',
                            prefixIcon: Icon(Icons.person), // Icon before the text input
                            border: OutlineInputBorder(
                             borderRadius: BorderRadius.all(Radius.circular(30.0)),
                            ),
                          ),
                          keyboardType: TextInputType.text, // Type of keyboard to show
                          // Optional: Add validation
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your username';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20), // Spacing

                        // Password TextField
                        TextFormField(
                          style: TextStyle(color: Colors.white),
                          controller: _passwordController,
                          decoration: const InputDecoration(
                            labelText: 'Password',
                            hintText: 'Enter your password',
                            prefixIcon: Icon(Icons.lock),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(30.0)),
                            ),
                            // If you want a show/hide password icon, you'd need more state management
                          ),
                          obscureText: true, // Hides the password text
                          keyboardType: TextInputType.visiblePassword,
                          // Optional: Add validation
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }
                            return null;
                          },
                        ),
                        //const SizedBox(height: 10), // Spacing
                        Align(
                          alignment: Alignment.centerLeft,
                          child: TextButton(
                            onPressed: () {
                              // Handle "Forgot Password" action
                              print("Forgot Password pressed");
                            },
                            child: const Text('Forgot Password?',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.green,
                            ),),
                          ),
                        ),
                        const SizedBox(height: 10), // Spacing

                        // Login Button
                        ElevatedButton(
                          onPressed: _login, // Call the _login function when pressed
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent, // Button background color
                            padding: const EdgeInsets.symmetric(vertical: 20.0),
                            textStyle: const TextStyle(fontSize: 24),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                          child: const Text(
                            'Sign in',
                            style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold  ), // Text color for the button
                          ),
                        ),
                        const SizedBox(height: 20), // Spacing

                        // Optional: Forgot Password or Sign Up links
                        Align(
                          alignment: Alignment.center,
                            child: Text('----------------- or Sign in using -----------------',
                            style: TextStyle(
                              color: Colors.grey,
                            )
                            ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          List.generate(3, (index) => Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: CircleAvatar(
                              backgroundColor: Colors.grey,
                              radius: 20,
                              child: Image.asset(socialIconList[index],
                                width:30
                              ),

                            ),
                          )),

                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Do you have an account? ',style: TextStyle(color: Colors.grey),),
                            SizedBox(width: 5,),
                            TextButton(
                              onPressed: () {
                                // Handle "Forgot Password" action
                                print("Registered Successfully!");
                              },
                              child: const Text('Sign Up',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.green,
                                ),),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}