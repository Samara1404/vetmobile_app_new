import 'package:flutter/material.dart';
import 'package:vetmobile_app_new/features/auth/presentation/widgets/custom_app_bar.dart';

class Desease extends StatefulWidget {
  const Desease({super.key});

  @override
  State<Desease> createState() => _DeseaseState();
}

class _DeseaseState extends State<Desease> {
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
        title: 'Ооруу',

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