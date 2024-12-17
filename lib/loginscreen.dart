import 'package:flutter/material.dart';
import 'package:newaasignment/homescreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff102c57),
      appBar: AppBar(backgroundColor: const Color(0xff102c57),
      title: const Text ('Login')
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Welcome Back!', style: TextStyle(fontSize: 24, color: Colors.white)),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                hintText: 'Username', 
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              children: [
                Row(
                  children: [
                    Checkbox(value: false, onChanged: (value){}),
                    Text('Remember me', style: TextStyle(color: Colors.white)),
                  ],
                ),
                TextButton(
                  onPressed: (){}, child: Text('Forget Password?', style: TextStyle(color: Colors.white)),
                  ),
              ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Color (0xffDAC0A3)),
                onPressed: (){
                  Navigator.push(
                  context, 
                  MaterialPageRoute(
                builder: (context)=>Homescreen()
                  ));
                },
                child: Text('Login'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Go back to Welcome', style: TextStyle(color: Colors.white)),
                ),
          ],
            ),
      ),
        
      );
        
  }
}