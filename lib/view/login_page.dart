import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:interview_task_bengaluru/constants/spaces.dart';
import 'package:interview_task_bengaluru/controller/providers/providers.dart';
import 'package:interview_task_bengaluru/widgets/signin_btn_widget.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: ref.watch(loadingProvider)
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //authentication image//
                Stack(children: [
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.6,
                      child: Image.asset(
                        "assets/images/authentication.jpeg",
                        fit: BoxFit.cover,
                      )),
                ]),

                Spaces.sizedboxh40(context),
                const Text(
                  "Dive in without delay",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const Text(
                  "Lorem ipsum dolor sit amet consectetur.\n Neque et nulla et.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                  ),
                ),
                Spaces.sizedboxh40(context),
                const ElevatedButtonW(),
              ],
            ),
    );
  }
}
