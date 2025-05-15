import 'package:flutter/material.dart';
import 'package:vetmobile_app_new/features/auth/presentation/widgets/custom_app_bar.dart';

class Horses extends StatefulWidget {
  const Horses({super.key});

  @override
  State<Horses> createState() => _HorsesState();
}

class _HorsesState extends State<Horses> {
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
        title: 'Жылкы',

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