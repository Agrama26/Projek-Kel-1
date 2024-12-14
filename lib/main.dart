import 'package:flutter/material.dart';
import 'package:pet_healthy_kel1/screens/splash_screen.dart';

// Import library Flutter untuk komponen Material Design dan layar splash screen dari file lain.

void main() {
  runApp(const MyApp());
}

// Fungsi utama aplikasi yang dijalankan pertama kali saat aplikasi dimulai.
// `runApp` digunakan untuk menjalankan widget `MyApp` sebagai root aplikasi.

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Widget `MyApp` adalah root dari aplikasi ini.
  // Digunakan untuk mengatur tema dan layar awal aplikasi.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo', // Judul aplikasi.
      theme: ThemeData(
        // Mengatur tema aplikasi menggunakan Material 3 dan skema warna berdasarkan warna dasar.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true, // Mengaktifkan gaya Material 3.
      ),
      debugShowCheckedModeBanner: false,
      // Menyembunyikan banner debug di pojok kanan atas aplikasi.

      home: const SplashScreen(),
      // Menentukan widget awal (layar pertama) yang akan ditampilkan saat aplikasi dibuka.
    );
  }
}