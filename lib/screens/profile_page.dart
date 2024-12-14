import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
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
          title: Text('Edit Profil'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'Nama'),
                onChanged: (value) => tempName = value,
                controller: TextEditingController(text: userName),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Email'),
                onChanged: (value) => tempEmail = value,
                controller: TextEditingController(text: userEmail),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Batal'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  userName = tempName;
                  userEmail = tempEmail;
                });
                Navigator.of(context).pop();
              },
              child: Text('Simpan'),
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
        title: Text('Profil'),
        backgroundColor: Colors.purple,
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: _editProfile,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/profile_picture.png'), // Ganti dengan path gambar profil
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: Text(
                userName,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 8),
            Center(
              child: Text(
                userEmail,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),
            Divider(height: 32, thickness: 1),
            ListTile(
              leading: Icon(Icons.pets, color: Colors.purple),
              title: Text('Hewan Peliharaan Saya'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Tambahkan navigasi ke halaman daftar hewan peliharaan
              },
            ),
            ListTile(
              leading: Icon(Icons.history, color: Colors.purple),
              title: Text('Riwayat Kesehatan'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Tambahkan navigasi ke halaman riwayat kesehatan
              },
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.purple),
              title: Text('Pengaturan Akun'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Tambahkan navigasi ke halaman pengaturan akun
              },
            ),
            Spacer(),
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
                child: Text('Keluar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfilePage(),
  ));
}
