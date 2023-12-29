import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:interview_task_bengaluru/constants/responsive.dart';
import 'package:interview_task_bengaluru/controller/services/firebase_auth_service.dart';

import '../controller/providers/providers.dart';

class Profile extends ConsumerWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: ResponsiveSize.height(40, context),
          ),
          //image//
          CircleAvatar(
            radius: 90,
            backgroundImage: NetworkImage(Authservices.user.photoURL!),
          ),

          //datas in drawer//
          ListTile(
            title: Text(
              "name",
              style: TextStyle(
                  color: const Color(0xff0a141c),
                  fontFamily: "Righteous",
                  fontSize: ResponsiveSize.width(14, context)),
            ),
            subtitle: Text(
              Authservices.user.displayName!,
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Righteous",
                  fontSize: ResponsiveSize.width(20, context)),
            ),
          ),
          const Divider(),

          //email text//
          ListTile(
            title: Text(
              "Email",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Righteous",
                  fontSize: ResponsiveSize.width(14, context)),
            ),
            subtitle: Text(
              Authservices.user.email!,
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Righteous",
                  fontSize: ResponsiveSize.width(20, context)),
            ),
          ),
          const Divider(),

          //help text//
          ListTile(
            title: Text(
              "Help",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Righteous",
                  fontSize: ResponsiveSize.width(20, context)),
            ),
          ),
          const Divider(),
          //mode text and switch//

          ListTile(
            title: ElevatedButton.icon(
                onPressed: () async {
                  ref.read(loadingProvider.notifier).state = false;
                  await ref.read(authProvider).logout();
                },
                icon: const Icon(Icons.logout_outlined),
                label: const Text("Logout")),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
