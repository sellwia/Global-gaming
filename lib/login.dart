import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.deepPurple.shade900,
              Colors.deepPurple.shade600,
              Colors.purple.shade500,
            ],
          ),
        ),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // Logo/Icon
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Icon(
                  Icons.person_2_sharp,
                  size: 100,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),

              // Title
              const Text(
                'LOGIN',
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),

              // Subtitle
              const Text(
                'Silahkan Login Untuk Melanjutkan',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white70,
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),

              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                labelText: 'Email',
                hintText : 'Masukkan Email Anda',
                labelStyle: const TextStyle(color: Colors.white70),
                hintStyle: const TextStyle(color: Colors.white38),
                filled: true,
                fillColor: Colors.white.withOpacity(0.15),

                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
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