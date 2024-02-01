import 'dart:async';

import 'package:flutter/material.dart';

class OneScreen extends StatefulWidget {
  const OneScreen({super.key});

  static const String screenName = 'one-screen';

  @override
  State<OneScreen> createState() => _OneScreenState();
}

class _OneScreenState extends State<OneScreen> {
  bool canPop = false;

  Timer? timer;
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: canPop,
      onPopInvoked: (didPop) {
        if (!didPop) {
          timer = Timer(const Duration(seconds: 1), () {
            setState(() {
              canPop = false;
            });
          });

          setState(() {
            canPop = true;
          });

          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              duration: Duration(seconds: 1),
              content: Text('Double tap back button to exit the app.'),
            ),
          );
        }
        if (timer != null && timer!.isActive) {}
      },
      child: const Scaffold(
        body: Center(),
      ),
    );
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }
}
