import 'package:autentocacao/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class HomeScreen extends StatelessWidget {
  final AuthService authService;

  const HomeScreen({super.key, required this.authService});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          IconButton(
            onPressed: () {
              authService.logout(context);
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: FadeIn(
        duration: const Duration(seconds: 1),
        child: const Center(
          child: Text(
            "Bem-vindo à tela principal!",
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}