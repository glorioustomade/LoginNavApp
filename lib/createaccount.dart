import 'package:flutter/material.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff102c57),
      appBar: AppBar(title: Text('Create Account')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Create Account Now!', style: TextStyle(fontSize: 24, color: Colors.white)),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                hintText: 'Full Name', 
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25)
                ),
              
              ),
        
            ),
            SizedBox(height: 20),
            TextField(
             decoration: InputDecoration(
                hintText: 'Email', 
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25)
                ),
              
              ),
        
            ),
            SizedBox(height: 20),
            TextField(
             decoration: InputDecoration(
                hintText: 'Password', 
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25)
                ),
              
              ),
        
            ),
            SizedBox(height: 20),
            TextField(
             decoration: InputDecoration(
                hintText: 'Phone No', 
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25)
                ),
              
              ),
        
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Color (0xffDAC0A3)),
              onPressed: () {
                // Handle sign up
              },
              child: Text('Sign Up'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Go back to welcome screen
              },
              child: Text('Go back to Welcome', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}