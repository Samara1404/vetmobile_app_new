import 'package:flutter/material.dart';
import 'package:vetmobile_app_new/features/auth/presentation/widgets/custom_app_bar.dart';

class Hens extends StatefulWidget {
  const Hens({super.key});

  @override
  State<Hens> createState() => _HensState();
}

class _HensState extends State<Hens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset('assets/images/back.png'),
        ),
        title: 'Тоок',

        actions: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Image.asset('assets/images/logo.png'),
          ),
        ],
      ),
      body: Center(),
    );
  }
}