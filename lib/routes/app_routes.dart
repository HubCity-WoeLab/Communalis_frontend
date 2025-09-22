import 'package:flutter/cupertino.dart';
import 'package:mobile_app_communalis/screens/auth/login_screen.dart';
import 'package:mobile_app_communalis/screens/auth/splash_screen.dart';
import 'package:mobile_app_communalis/screens/auth/otp_screen.dart';
import 'package:mobile_app_communalis/screens/notifications/notifications_screen.dart';
import 'package:mobile_app_communalis/screens/students/students_list.dart';
import 'package:mobile_app_communalis/screens/auth/register_parent_screen.dart';
import 'package:mobile_app_communalis/screens/auth/register_formateur_screen.dart';
import 'package:mobile_app_communalis/screens/auth/role_selection_screen.dart';
import '../screens/messages/chat_screen.dart';


class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    '/login': (context) => const ConnexionPage(),
    '/accueil': (context) => const SplashScreen(),
    '/codeOTP': (context) => const OtpValidationScreen(),
    '/notification': (context) =>  NotificationsScreen(),
    '/listeEleves': (context) =>  ListeElevesScreen(),
    '/inscription-parent': (context) => const RegisterScreenParent(),
    '/inscription-formateur': (context) => const RegisterScreenFormateur(),
    '/messagerie': (context) =>  ChatScreen(),
    '/role': (context) => RoleSelectionScreen(),
  };
}
