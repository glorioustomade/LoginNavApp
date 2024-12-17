import 'package:flutter/material.dart';
import 'package:newaasignment/createaccount.dart';
import 'package:newaasignment/loginscreen.dart';
import 'package:newaasignment/welcomescreen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        ),
        body: SafeArea(
          child: Padding(
            padding:  const EdgeInsets.symmetric(horizontal: 20),

            child: Column(
              children: [
                TextButton(
                  onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                    builder: (_)=> const WelcomeScreen()),
                    );
                  
                }, child: const Text('Welcome Screen')),

                TextButton(
                  onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                    builder: (_)=> const LoginScreen()),
                    );
                  
                }, child: const Text('Login Screen')),

                                TextButton(
                  onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                    builder: (_)=> const CreateAccountScreen()),
                    );
                  
                }, child: const Text('Create Account Screen')),
              ],
            ),
            ),
        ),
    );
  }
}