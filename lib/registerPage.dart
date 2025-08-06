// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'widget/text_field.dart';
//
// class RegisterPage extends StatefulWidget {
//   const RegisterPage({super.key});
//
//   @override
//   State<RegisterPage> createState() => _RegisterPageState();
// }
//
// class _RegisterPageState extends State<RegisterPage> {
//   final txtName = TextEditingController();
//   final txtEmail = TextEditingController();
//   final txtPassword = TextEditingController();
//   final txtDOB = TextEditingController();
//   String gender = "Laki-laki";
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Register")),
//       body: Padding(
//         padding: EdgeInsets.all(24),
//         child: ListView(
//           children: [
//             InputField(label: "Nama", controller: txtName),
//
//             SizedBox(height: 12),
//
//             InputField(label: "Email / Username", controller: txtEmail),
//
//             SizedBox(height: 12),
//
//             InputField(
//               label: "Password",
//               controller: txtPassword,
//               isPassword: true,
//             ),
//
//             SizedBox(height: 12),
//
//             DropdownButtonFormField<String>(
//               value: gender,
//               items: ["Laki-laki", "Perempuan"]
//                   .map((value) => DropdownMenuItem(
//                 value: value,
//                 child: Text(value),
//               ))
//                   .toList(),
//               onChanged: (value) {
//                 if (value != null) {
//                   setState(() => gender = value);
//                 }
//               },
//               decoration: InputDecoration(
//                 labelText: "Jenis Kelamin",
//                 border: OutlineInputBorder(),
//               ),
//             ),
//
//             SizedBox(height: 12),
//
//             TextField(
//               label: "Tanggal Lahir",
//               controller: txtDOB,
//               readOnly: true,
//               onTap: () async {
//                 DateTime? picked = await showDatePicker(
//                   context: context,
//                   initialDate: DateTime(2000),
//                   firstDate: DateTime(1900),
//                   lastDate: DateTime.now(),
//                 );
//                 if (picked != null) {
//                   txtDOB.text = DateFormat('yyyy-MM-dd').format(picked);
//                 }
//               },
//             ),
//
//             SizedBox(height: 20),
//
//             ElevatedButton(
//               onPressed: () {
//                 final nama = txtName.text;
//                 final email = txtEmail.text;
//                 final pass = txtPassword.text;
//                 final dob = txtDOB.text;
//
//                 print("Data Register:");
//                 print("Nama: $nama");
//                 print("Email: $email");
//                 print("Password: $pass");
//                 print("Gender: $gender");
//                 print("Tanggal Lahir: $dob");
//
//                 Navigator.pop(context);
//               },
//               child: Text("Daftar"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
