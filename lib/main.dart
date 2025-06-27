import 'dart:math';
import 'package:flutter/material.dart';
import 'package:particles_flutter/particles_engine.dart';
import 'package:particles_flutter/component/particle/particle.dart';

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
}

class ParticleDemo extends StatelessWidget {
  const ParticleDemo({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Particles(
            awayRadius: 100,
            particles: _randomParticles(80),
            height: size.height,
            width: size.width,
            onTapAnimation: true,
            awayAnimationDuration: const Duration(milliseconds: 200),
            awayAnimationCurve: Curves.easeOut,
            enableHover: true,
            hoverRadius: 80,
            connectDots: true,
          ),
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

  List<Particle> _randomParticles(int count) {
    final rng = Random();
    return List.generate(count, (_) {
      return Particle(
        size: rng.nextDouble() * 6 + 2,
        color: Colors.white.withOpacity(rng.nextDouble()),
        velocity: Offset(
          (rng.nextDouble() - 0.5) * 150,
          (rng.nextDouble() - 0.5) * 150,
        ),
      );
    });
  }
}