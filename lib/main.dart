import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'modules/onboarding/bindings/onboarding_binding.dart';
import 'modules/onboarding/view/onboarding_view.dart';
import 'modules/login_view.dart'; // Import halaman LoginView

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Gojek Clone',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'SFProText', // Ganti dengan font Anda jika diatur di pubspec.yaml
      ),
      initialRoute: '/onboarding',
      getPages: [
        GetPage(
          name: '/onboarding',
          page: () => OnboardingView(),
          binding: OnboardingBinding(),
        ),
        GetPage(
          name: '/login', // Route untuk halaman login
          page: () => LoginView(), // Halaman login
        ),
      ],
    );
  }
}