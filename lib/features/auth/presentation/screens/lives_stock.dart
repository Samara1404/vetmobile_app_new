import 'package:flutter/material.dart';
import 'package:vetmobile_app_new/features/auth/presentation/widgets/custom_app_bar.dart';

class LivesStock extends StatefulWidget {
  const LivesStock({super.key});

  @override
  State<LivesStock> createState() => _LivesStockState();
}

class _LivesStockState extends State<LivesStock> {
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
        title: 'Бодо мал ',

        actions: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Image.asset('assets/images/logo.png'),
          ),
        ],
      ),
     
    );
  }
}