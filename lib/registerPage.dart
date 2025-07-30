import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'widget/inputField.dart'; // Pastikan file ini ada

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final txtName = TextEditingController();
  final txtEmail = TextEditingController();
  final txtPassword = TextEditingController();
  final txtDOB = TextEditingController();
  String gender = "Laki-laki";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Register")),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: ListView(
          children: [
            // Input nama
            InputField(label: "Nama", controller: txtName),

            SizedBox(height: 12),

            // Input email/username
            InputField(label: "Email / Username", controller: txtEmail),

            SizedBox(height: 12),

            // Input password
            InputField(
              label: "Password",
              controller: txtPassword,
              isPassword: true,
            ),

            SizedBox(height: 12),

            // Dropdown jenis kelamin
            DropdownButtonFormField<String>(
              value: gender,
              items: ["Laki-laki", "Perempuan"]
                  .map((value) => DropdownMenuItem(
                value: value,
                child: Text(value),
              ))
                  .toList(),
              onChanged: (value) {
                if (value != null) {
                  setState(() => gender = value);
                }
              },
              decoration: InputDecoration(
                labelText: "Jenis Kelamin",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 12),

            // Input tanggal lahir
            InputField(
              label: "Tanggal Lahir",
              controller: txtDOB,
              readOnly: true,
              onTap: () async {
                DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: DateTime(2000),
                  firstDate: DateTime(1900),
                  lastDate: DateTime.now(),
                );
                if (picked != null) {
                  txtDOB.text = DateFormat('yyyy-MM-dd').format(picked);
                }
              },
            ),

            SizedBox(height: 20),

            // Tombol daftar
            ElevatedButton(
              onPressed: () {
                // Bisa ditambah validasi atau simpan data di sini
                final nama = txtName.text;
                final email = txtEmail.text;
                final pass = txtPassword.text;
                final dob = txtDOB.text;

                print("Data Register:");
                print("Nama: $nama");
                print("Email: $email");
                print("Password: $pass");
                print("Gender: $gender");
                print("Tanggal Lahir: $dob");

                // Misal pindah ke halaman login lagi setelah daftar
                Navigator.pop(context);
              },
              child: Text("Daftar"),
            ),
          ],
        ),
      ),
    );
  }
}
