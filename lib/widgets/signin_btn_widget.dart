import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:interview_task_bengaluru/controller/services/firebase_auth_service.dart';
import 'package:interview_task_bengaluru/controller/providers/providers.dart';

class ElevatedButtonW extends ConsumerWidget {
  const ElevatedButtonW({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 6),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: const BorderSide(color: Colors.black)),
        ),
        onPressed: () async {
          ref.read(loadingProvider.notifier).state = true;
          try {
            await ref.read(authProvider).signInWithGoogle().then((value) {
              if (value.user != null) {
                Authservices.user = value.user!;
              }
            });
          } on FirebaseAuthException catch (e) {
            log("An error while log in ${e.message}");
          }
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/images/google_icon.png",
                height: 18,
                width: 18,
              ),
            ),
            const Text(
              "Sign in",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black),
            ),
          ],
        ));
  }
}
