import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:vetmobile_app_new/features/auth/presentation/widgets/custom_app_bar.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: IconButton(
            onPressed: () {},
            icon: Image.asset('assets/images/back.png'),
          ),
        ),
        title: 'Биз жөнүндө',
        actions: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: IconButton(onPressed: () {
              context.push('/grass-category');
            }, icon: Image.asset('assets/images/logo.png')),
          ),
        ],
      ),
      body: Center(child: Image.asset('assets/images/body.png')),
    );
  }
}