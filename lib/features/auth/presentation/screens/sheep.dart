import 'package:flutter/material.dart';
import 'package:vetmobile_app_new/features/auth/presentation/widgets/custom_app_bar.dart';

class Sheep extends StatefulWidget {
  const Sheep({super.key});

  @override
  State<Sheep> createState() => _SheepState();
}

class _SheepState extends State<Sheep> {
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
        title: 'Кой эчкилер',

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