import 'package:go_router/go_router.dart';
import 'package:vetmobile_app_new/features/auth/presentation/screens/change_password_screen.dart';
import 'package:vetmobile_app_new/features/auth/presentation/screens/forgot_password.dart';
import 'package:vetmobile_app_new/features/auth/presentation/screens/forgot_password_screen.dart';
import 'package:vetmobile_app_new/features/auth/presentation/screens/login_screen.dart';
import 'package:vetmobile_app_new/features/auth/presentation/screens/menu_screen.dart';
import 'package:vetmobile_app_new/features/auth/presentation/screens/register_screen.dart';
import 'package:vetmobile_app_new/features/auth/presentation/screens/user_account.dart';
import 'package:vetmobile_app_new/features/auth/presentation/screens/user_account_edit.dart';
import '../../features/auth/presentation/screens/flash_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => FlashScreen()),
    GoRoute(path: '/login', builder: (context, state) => LoginScreen()),
  
   GoRoute
   (path: '/forgot-password', builder: (context, state) => ForgotPasswordScreen()),
    GoRoute
   (path: '/forgot-pass', builder: (context, state) => ForgotPassword()),
    GoRoute
   (path: '/change-password', builder: (context, state) =>ChangePasswordScreen ()),
     GoRoute
   (path: '/register', builder: (context, state) =>RegisterScreen ()),
    GoRoute
   (path: '/user', builder: (context, state) =>UserAccount ()),
     GoRoute
   (path: '/menu', builder: (context, state) =>MenuScreen()),
      GoRoute
   (path: '/user-account', builder: (context, state) =>UserAccountEdit()),
  ],
);