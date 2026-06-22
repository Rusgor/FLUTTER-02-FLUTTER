import 'package:flutter/material.dart';

class ExplicitAnimationScreen extends StatefulWidget {
  const ExplicitAnimationScreen({super.key});

  @override
  State<ExplicitAnimationScreen> createState() =>
      _ExplicitAnimationScreenState();
}

class _ExplicitAnimationScreenState extends State<ExplicitAnimationScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  late final Animation<double> _verticalAnimation;
  late final Animation<double> _rotationAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 6),
    )..repeat();

    _verticalAnimation = TweenSequence<double>([
      // BIG JUMP UP
      TweenSequenceItem(
        tween: Tween<double>(
          begin: 0,
          end: -628,
        ).chain(CurveTween(curve: Curves.decelerate)),
        weight: 12,
      ),

      // HANG
      TweenSequenceItem(tween: ConstantTween<double>(-628), weight: 12),

      // FALL DOWN
      TweenSequenceItem(
        tween: Tween<double>(
          begin: -628,
          end: 0,
        ).chain(CurveTween(curve: Curves.easeInCubic)),
        weight: 12,
      ),

      // SMALL BOUNCE 1
      TweenSequenceItem(
        tween: Tween<double>(
          begin: 0,
          end: -150,
        ).chain(CurveTween(curve: Curves.decelerate)),
        weight: 8,
      ),

      TweenSequenceItem(
        tween: Tween<double>(
          begin: -150,
          end: 0,
        ).chain(CurveTween(curve: Curves.easeInCubic)),
        weight: 8,
      ),

      // SMALL BOUNCE 2
      TweenSequenceItem(
        tween: Tween<double>(
          begin: 0,
          end: -55,
        ).chain(CurveTween(curve: Curves.decelerate)),
        weight: 6,
      ),

      TweenSequenceItem(
        tween: Tween<double>(
          begin: -55,
          end: 0,
        ).chain(CurveTween(curve: Curves.easeInCubic)),
        weight: 6,
      ),

      // STOP ON GROUND
      TweenSequenceItem(tween: ConstantTween<double>(0), weight: 18),
    ]).animate(_controller);

    _rotationAnimation = TweenSequence<double>([
      // Невелика пауза перед стартом
      TweenSequenceItem(tween: ConstantTween<double>(0), weight: 6),

      // Повільний початок обертання
      TweenSequenceItem(
        tween: Tween<double>(
          begin: 0,
          end: 0.75,
        ).chain(CurveTween(curve: Curves.easeInOut)),
        weight: 28,
      ),

      // Докручування майже біля вершини
      TweenSequenceItem(
        tween: Tween<double>(
          begin: 0.75,
          end: 1.0,
        ).chain(CurveTween(curve: Curves.easeOut)),
        weight: 18,
      ),

      // Повне зависання
      TweenSequenceItem(tween: ConstantTween<double>(1), weight: 18),

      // Падіння
      TweenSequenceItem(tween: ConstantTween<double>(1), weight: 30),
    ]).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF8DB9E8),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2196F3),
        centerTitle: true,
        title: const Text(
          'Animated Ball',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
      body: Stack(
        alignment: const Alignment(0, 0.77),

        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 90,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF81C784), Color(0xFF2E7D32)],
                ),
              ),
            ),
          ),
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Transform.translate(
                offset: Offset(0, _verticalAnimation.value),
                child: RotationTransition(
                  turns: _rotationAnimation,
                  child: child,
                ),
              );
            },
            child: Transform.translate(
              offset: const Offset(0, 2),
              child: const Text('⚽', style: TextStyle(fontSize: 78)),
            ),
          ),
        ],
      ),
    );
  }
}
