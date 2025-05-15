import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vetmobile_app_new/core/constant/style.dart';
import 'package:vetmobile_app_new/features/auth/presentation/widgets/back.dart';
import 'package:vetmobile_app_new/features/auth/presentation/widgets/custom_app_bar.dart';
import 'package:vetmobile_app_new/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:vetmobile_app_new/features/auth/presentation/widgets/google_button.dart';
import 'package:vetmobile_app_new/features/auth/presentation/widgets/logo.dart';
import 'package:vetmobile_app_new/features/auth/presentation/widgets/navigated_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _phoneController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(leading: Back(), title: '', actions: [Logo()]),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Align(
                alignment: Alignment.topRight,
                child: Text('Өткөрүп жиберүү', style: AppTextStyle.style4),
              ),
            ),
            SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text('Толук аты жөну', style: AppTextStyle.style3),
              ),
            ),
            CustomTextField(
              prefixIcon: Image.asset('assets/images/person.png'),
              hintText: 'Таштанова Акылай',
            ),
            SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text('Телефон номери', style: AppTextStyle.style3),
              ),
            ),
            CustomTextField(
              prefixIcon: Image.asset('assets/images/phone.png'),
              hintText: '996224051404',
            ),
            SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text('Сыр сөз', style: AppTextStyle.style3),
              ),
            ),
            CustomTextField(
              prefixIcon: Image.asset('assets/images/visible.png'),
              hintText: '************',
            ),
            SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text('Сыр сөздү ырастоо', style: AppTextStyle.style3),
              ),
            ),
            CustomTextField(
              prefixIcon: Image.asset('assets/images/visible.png'),
              hintText: '************',
            ),
            SizedBox(height: 8),
            NavigatedButton(onPressed: () {
               context.push('/menu');
            }, title: 'Катталуу'),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Аккаунтуңуз жокпу?'),
                Text.rich(
                  TextSpan(
                    text: ' Ушул ',
                    children: [
                      TextSpan(
                        text: 'жерден',
                        style: const TextStyle(
                          color: Color.fromRGBO(1, 165, 96, 1),
                        ),
                        recognizer:
                            TapGestureRecognizer()
                              ..onTap = () {
                               
                              },
                      ),
                      const TextSpan(text: ' катталыңыз'),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Expanded(
                  child: Divider(
                    color: Color.fromRGBO(1, 165, 96, 1),
                    indent: 40,
                    endIndent: 10,
                  ),
                ),
                Text('Же', style: AppTextStyle.style6),
                const Expanded(
                  child: Divider(
                    color: Color.fromRGBO(1, 165, 96, 1),
                    indent: 10,
                    endIndent: 40,
                  ),
                ),
              ],
            ),

            GoogleButton(),

            Padding(
              padding: const EdgeInsets.all(2),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/images/copyright.png'),
                  ),
                  Text(
                    'МаралАкгул.Бардык укуктар корголгон',
                    style: AppTextStyle.style6,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
