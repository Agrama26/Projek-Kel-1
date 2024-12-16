import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String userName = 'Nama Pengguna';
  String userEmail = 'email@healtypet.com';

  void _editProfile() {
    showDialog(
      context: context,
      builder: (context) {
        String tempName = userName;
        String tempEmail = userEmail;
        return AlertDialog(
          title: const Text('Edit Profil'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: const InputDecoration(labelText: 'Nama'),
                onChanged: (value) => tempName = value,
                controller: TextEditingController(text: userName),
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Email'),
                onChanged: (value) => tempEmail = value,
                controller: TextEditingController(text: userEmail),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Batal'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  userName = tempName;
                  userEmail = tempEmail;
                });
                Navigator.of(context).pop();
              },
              child: const Text('Simpan'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
        backgroundColor: Colors.purple,
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: _editProfile,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                    'assets/profile_picture.png'), // Ganti dengan path gambar profil
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: Text(
                userName,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Center(
              child: Text(
                userEmail,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),
            const Divider(height: 32, thickness: 1),
            ListTile(
              leading: const Icon(Icons.pets, color: Colors.purple),
              title: const Text('Hewan Peliharaan Saya'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Tambahkan navigasi ke halaman daftar hewan peliharaan
              },
            ),
            ListTile(
              leading: const Icon(Icons.history, color: Colors.purple),
              title: const Text('Riwayat Kesehatan'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Tambahkan navigasi ke halaman riwayat kesehatan
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings, color: Colors.purple),
              title: const Text('Pengaturan Akun'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Tambahkan navigasi ke halaman pengaturan akun
              },
            ),
            const Spacer(),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  // Tambahkan logika untuk logout
                },
                child: const Text('Keluar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfilePage(),
  ));
}
