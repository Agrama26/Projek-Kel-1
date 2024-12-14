import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_healthy_kel1/screens/home_screen.dart';

// Import library Flutter, pengaturan sistem, font Google, dan file layar `home_screen`.

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  // Widget `SplashScreen` digunakan untuk menampilkan layar pembuka (splash screen).

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    // Mengatur gaya overlay UI sistem menjadi terang (ikon status bar).

    Future.delayed(const Duration(seconds: 5)).then((value) {
      // Fungsi untuk menunda selama 5 detik sebelum berpindah ke layar `HomeScreen`.
      // ignore: use_build_context_synchronously
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ),
          (route) => false);
      // Berpindah ke layar `HomeScreen` dan menghapus semua layar sebelumnya dari tumpukan.
    });

    return Scaffold(
      // Struktur utama layar splash screen.
      body: Stack(children: [
        // Menggunakan `Stack` untuk menumpuk widget (gambar latar belakang dan konten).
        Image.asset('assets/images/background.png'),
        // Menampilkan gambar latar belakang dari file aset.

        Center(
          child: SafeArea(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // Mengatur semua widget di kolom berada di tengah secara horizontal.
            children: [
              const SizedBox(
                height: 60,
              ),
              // Menambahkan ruang kosong vertikal sebesar 60 piksel.

              Image.asset(
                'assets/images/logo.png',
                height: 30,
              ),
              // Menampilkan gambar logo dengan tinggi 30 piksel.

              const SizedBox(
                height: 73,
              ),
              // Menambahkan ruang kosong vertikal sebesar 73 piksel.

              RichText(
                  // Mengatur teks dengan gaya khusus menggunakan `RichText`.
                  textAlign: TextAlign.center,
                  // Menyusun teks agar rata tengah.
                  text: TextSpan(
                      // Menentukan gaya teks dasar dan konten teks.
                      text: "Helping you\nto keep ",
                      style: GoogleFonts.manrope(
                          // Menggunakan font dari Google Fonts.
                          fontSize: 24,
                          color: const Color(0xFFDEE1FE),
                          letterSpacing: 3.5 / 100,
                          height: 152 / 100),
                      children: const [
                        // Menambahkan bagian teks dengan gaya berbeda.
                        TextSpan(
                            text: "your bestie",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800)),
                        // Teks "your bestie" dengan warna putih dan tebal.
                        TextSpan(text: "\nstay healthy!")
                        // Teks "stay healthy!" ditambahkan di bawahnya.
                      ]))
            ],
          )),
        )
      ]),
    );
  }
}
