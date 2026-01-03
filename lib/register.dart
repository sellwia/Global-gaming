import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
          child: Container(
            width: 380,
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.08),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Icon
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Icon(
                    Icons.person_add_alt_1,
                    size: 90,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),

                // Title
                const Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 12),
                // Subtitle
                const Text(
                  'Silahkan Daftar Akun Baru',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                 // ID Member
                _inputField(
                  label: 'ID Member',
                  hint: 'Masukkan ID Member',
                  icon: Icons.person,
                ),
                const SizedBox(height: 10),
                // Email
                _inputField(
                  label: 'Email',
                  hint: 'Masukkan Email',
                  icon: Icons.email_outlined,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 10),
                // Password
                _inputField(
                  label: 'Password',
                  hint: 'Masukkan Password',
                  icon: Icons.lock_outline,
                  obscureText: true,
                ),
                const SizedBox(height: 10),
                // Button Register
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[700],
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'Register',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 16),

                // Back to Login
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Sudah punya akun? Login',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
