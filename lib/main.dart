import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Particles Demo',
      theme: ThemeData.dark(),
      home: const ParticleDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
  class ParticleDemo extends StatelessWidget {
  const ParticleDemo({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
       
          Center(
            child: Text(
              'Welcome to My App!',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white.withOpacity(0.9),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
}