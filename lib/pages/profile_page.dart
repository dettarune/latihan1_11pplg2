import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("assets/profile.jpeg"),
              ),
            ),
            const SizedBox(height: 20),

            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 4,
              child: ListTile(
                leading: Icon(Icons.person, color: Colors.blue),
                title: Text("Nama"),
                subtitle: Text("Muhammad Amir Fattah"),
              ),
            ),
            const SizedBox(height: 10),

            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 4,
              child: ListTile(
                leading: Icon(Icons.school, color: Colors.green),
                title: Text("Kelas"),
                subtitle: Text("XI PPLG 2"),
              ),
            ),
            const SizedBox(height: 10),

            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 4,
              child: ListTile(
                leading: Icon(Icons.home, color: Colors.orange),
                title: Text("Alamat"),
                subtitle: Text("Jl. Jend. Soedirman No.24, Kota Yogyakarta"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
