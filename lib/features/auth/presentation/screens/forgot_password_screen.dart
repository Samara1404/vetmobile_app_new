import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:vetmobile_app_new/core/constant/style.dart';
import 'package:vetmobile_app_new/features/auth/presentation/widgets/back.dart';
import 'package:vetmobile_app_new/features/auth/presentation/widgets/custom_app_bar.dart';
import 'package:vetmobile_app_new/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:vetmobile_app_new/features/auth/presentation/widgets/logo.dart';
import 'package:vetmobile_app_new/features/auth/presentation/widgets/navigated_button.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(leading: Back(), title: '', actions: [Logo()]),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 150, right: 15),

              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Сураныч катталган почтаңызды же\nтелефон номуруңузду жазыңыз.',
                      style: AppTextStyle.style5,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            CustomTextField(
              prefixIcon: Image.asset('assets/images/mail.png'),
              hintText: 'stambekova1404@gmail.com',
            ),
            SizedBox(height: 10),
            NavigatedButton(onPressed: () {
               context.push('/forgot-pass');
            }, title: 'Кийинки'),
          ],
        ),
      ),
    );
  }
}
