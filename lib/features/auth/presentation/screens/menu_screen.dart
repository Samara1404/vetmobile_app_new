import 'package:flutter/material.dart';
import 'package:vetmobile_app_new/features/auth/presentation/screens/about_screen.dart';
import 'package:vetmobile_app_new/features/auth/presentation/screens/desease.dart';
import 'package:vetmobile_app_new/features/auth/presentation/screens/fertilization.dart';
import 'package:vetmobile_app_new/features/auth/presentation/screens/grass_screen.dart';
import 'package:vetmobile_app_new/features/auth/presentation/screens/hens.dart';
import 'package:vetmobile_app_new/features/auth/presentation/screens/horses.dart';
import 'package:vetmobile_app_new/features/auth/presentation/screens/lives_stock.dart';

import 'package:vetmobile_app_new/features/auth/presentation/screens/sheep.dart';
import 'package:vetmobile_app_new/features/auth/presentation/widgets/back.dart';
import 'package:vetmobile_app_new/features/auth/presentation/widgets/custom_app_bar.dart';
import 'package:vetmobile_app_new/features/auth/presentation/widgets/logo.dart';

class MenuScreen extends StatefulWidget {
  MenuScreen({super.key});
  final List<Map<String, dynamic>> menuItems = [
    {'image': 'assets/images/aboutus.png', 'screen': AboutScreen()},
    {'image': 'assets/images/grass.png', 'screen': GrassScreen()},
    {'image': 'assets/images/fertilization.png', 'screen': Fertilization()},
    {'image': 'assets/images/desease.png', 'screen': Desease()},
    {'image': 'assets/images/livestock.png', 'screen': LivesStock()},
    {'image': 'assets/images/sheep.png', 'screen': Sheep()},
    {'image': 'assets/images/horses.png', 'screen': Horses()},
    {'image': 'assets/images/hens.png', 'screen': Hens()},
  ];

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(leading: Back(), title: 'Меню', actions: [Logo()]),
      body: Column(
        children: [
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 1,
            ),
            itemCount: widget.menuItems.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => widget.menuItems[index]['screen'],
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset(
                    widget.menuItems[index]['image'],
                    fit: BoxFit.contain,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
