import 'package:flutter/material.dart';
import '../home/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final email = TextEditingController();
  final senha = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Entrar"),
        backgroundColor: const Color(0xffFF6B00),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(

          children: [

            TextField(
              controller: email,
              decoration: const InputDecoration(
                labelText: "E-mail",
              ),
            ),

            const SizedBox(height: 20),

            TextField(
              controller: senha,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Senha",
              ),
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,

              child: ElevatedButton(

                onPressed: (){

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_)=>const HomeScreen(),
                    ),
                  );

                },

                child: const Text("Entrar"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}