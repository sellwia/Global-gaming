import 'package:flutter/material.dart';
import 'package:project_global_gaming/login.dart';
import 'package:project_global_gaming/register.dart';
import 'package:project_global_gaming/menu_utama.dart';

class SplashScreen3 extends StatelessWidget {
  const SplashScreen3({super.key});

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
                width: 200,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 100),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  '../assets/images/sp3.png',
                  width: 90,
                  height: 90,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 40),

              // Title
              const Text(
                'Tunggu Apa Lagi?',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),

              // Subtitle
              const Text(
                'Segera Jelajahi dunia gaming tanpa batas',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white70,
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),

              Container(
                margin: EdgeInsets.only(left: 40, right: 40),
                child: SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      //route : material page route
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                      // panggil slide selanjutnya
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 250, 253, 250),
                    ),
                    child: Text(
                      "Mulai Sekarang",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),

              Container(
                margin: EdgeInsets.only(left: 40, right: 40),
                child: SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      //route : material page route
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterPage()),
                      );
                      // panggil slide selanjutnya
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 250, 253, 250),
                    ),
                    child: Text(
                      "Join Member",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),

              Container(
                margin: EdgeInsets.only(left: 40, right: 40),
                child: SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      //route : material page route
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MenuSewaPS()),
                      );
                      // panggil slide selanjutnya
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 250, 253, 250),
                    ),
                    child: Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              Container(
                margin: EdgeInsets.only(left: 40, right: 40),
                child: SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      //route : material page route
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MenuSewaPS()),
                      );
                      // panggil slide selanjutnya
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 250, 253, 250),
                    ),
                    child: Text(
                      "Profil Team",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}
