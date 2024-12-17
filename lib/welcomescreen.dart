import 'package:flutter/material.dart';
import 'package:newaasignment/createaccount.dart';
import 'package:newaasignment/loginscreen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff102c57),
      body: Center(
       child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
                 'assets/welcome.png', height: 250,),
                 SizedBox(height: 22),
            const Text('Hello, Welcome!',
            style: TextStyle(
              color:Colors.white, 
              fontSize: 24, 
              fontWeight: FontWeight.bold),
            ),SizedBox(height: 10),
            Text(
              'Welcome to CodeChamp. in Top platform for coders', 
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16
                ),
                ),
            SizedBox(height: 40,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Color (0xffDAC0A3)),
               onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context)=>LoginScreen()),
                  );
              }, child: Text('Login'),
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Color (0xffDAC0A3)),
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context)=>CreateAccountScreen()),
                  );
                 
              }, child: Text('Sign Up'),
              ),
              SizedBox(height: 40),
              const Text('Or  via social media' ,style: TextStyle(color: Colors.white, fontSize: 15)),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
              
                children: [
                 
                 Padding(padding: EdgeInsets.all(10.0),
                   child: Image.asset(
                   'assets/facebook.png', height: 25,),
                 ),
                 Padding(padding: EdgeInsets.all(10.0),
                   child: Image.asset(
                   'assets/google.png', height: 25,),
                 ),
                 Padding(padding: EdgeInsets.all(10.0),
                   child: Image.asset(
                   'assets/linkedin.png', height: 25,),
                 ),
                  ],
              )
          ],
        ),
      ),
    );
  }
}