import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vetmobile_app_new/core/constant/style.dart';
import 'package:vetmobile_app_new/features/auth/presentation/widgets/back.dart'
    show Back;
import 'package:vetmobile_app_new/features/auth/presentation/widgets/custom_app_bar.dart';
import 'package:vetmobile_app_new/features/auth/presentation/widgets/logo.dart';
import 'package:vetmobile_app_new/features/auth/presentation/widgets/navigated_button.dart';
import 'package:vetmobile_app_new/features/auth/presentation/widgets/text_field_edit.dart';
import 'package:vetmobile_app_new/features/auth/presentation/widgets/text_field_name.dart';

class UserAccountEdit extends StatefulWidget {
  const UserAccountEdit({super.key});

  @override
  State<UserAccountEdit> createState() => _UserAccountEditState();
}

class _UserAccountEditState extends State<UserAccountEdit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        leading: Back(),
        title: 'Профилди ондоо',
        actions: [Logo()],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Center(
              child: CircleAvatar(
                radius: 80,
                backgroundColor: Colors.white,
                child: Image.asset('assets/images/useraccount.png'),
              ),
            ),
            SizedBox(height: 20),
            Text('Алымканов Марсбек Турсуналиевич', style: AppTextStyle.style8),
            SizedBox(height: 18),
            Padding(
              padding: const EdgeInsets.only(left: 26),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text('Толук аты', style: AppTextStyle.style3),
              ),
            ),
            TextFieldName(hintText: 'Алымканов Марсбек '),
            SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.only(left: 26),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text('Тулган  датасы', style: AppTextStyle.style3),
              ),
            ),
            TextFieldEdit(
              suffixIcon: Image.asset('assets/images/notes.png'),
              hintText: '4 май, 1976',
            ),
            SizedBox(height: 70),
            NavigatedButton(onPressed: () {
              context.push('/menu');
            }, title: 'Сактоо'),
          ],
        ),
      ),
    );
  }
}
