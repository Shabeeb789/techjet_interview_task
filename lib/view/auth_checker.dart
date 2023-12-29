import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:interview_task_bengaluru/controller/services/firebase_auth_service.dart';
import 'package:interview_task_bengaluru/view/home_page.dart';
import 'package:interview_task_bengaluru/view/login_page.dart';

class AuthChecker extends ConsumerWidget {
  const AuthChecker({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(authstateProvider).when(
          data: (data) {
            log("Auth checker $data");
            if (data == null) {
              return const LoginScreen();
            } else {
              Authservices.user = data;
              return const HomeScreen();
            }
          },
          error: (error, stackTrace) => Text(error.toString()),
          loading: () {
            return const Center(child: CircularProgressIndicator());
          },
        );
  }
}
