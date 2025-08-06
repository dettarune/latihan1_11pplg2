// import 'package:flutter/material.dart';
// import 'package:latihan1_11pplg2/registerPage.dart';
//
// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});
//
//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }
//
// class _LoginPageState extends State<LoginPage> {
//   String statusLogin = "login status";
//   final TextEditingController txtUsername = TextEditingController();
//   final TextEditingController txtPassword = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("LOGIN PAGE")),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(24),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text(
//               "Hello, Welcome To Our Application",
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontFamily: 'Times New Roman',
//                 color: Colors.purple,
//                 fontSize: 18,
//               ),
//             ),
//             const SizedBox(height: 8),
//             const Text("Please fill in your username and password below"),
//
//             const SizedBox(height: 16),
//
//             Center(
//               child: Container(
//                 margin: const EdgeInsets.symmetric(vertical: 10),
//                 child: Image.asset(
//                   'assets/logo.png',
//                   width: 150,
//                   height: 150,
//                 ),
//               ),
//             ),
//
//             const SizedBox(height: 12),
//
//             TextField(
//               controller: txtUsername,
//               decoration: const InputDecoration(
//                 labelText: "Username",
//                 border: OutlineInputBorder(),
//               ),
//             ),
//
//             const SizedBox(height: 12),
//
//             TextField(
//               controller: txtPassword,
//               obscureText: true,
//               decoration: const InputDecoration(
//                 labelText: "Password",
//                 border: OutlineInputBorder(),
//               ),
//             ),
//
//             const SizedBox(height: 16),
//
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: () {
//                   final user = txtUsername.text;
//                   final pass = txtPassword.text;
//
//                   setState(() {
//                     if (user == "admin" && pass == "admin") {
//                       statusLogin = "Login sukses";
//                     } else {
//                       statusLogin = "Login gagal";
//                     }
//                   });
//
//                   print("Status: $statusLogin");
//                 },
//                 child: const Text("Login"),
//               ),
//             ),
//
//             const SizedBox(height: 8),
//             Text(statusLogin),
//
//             const SizedBox(height: 16),
//
//             Center(
//               child: TextButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (_) => const RegisterPage(),
//                     ),
//                   );
//                 },
//                 child: const Text("Don't have an account? Register here!"),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
