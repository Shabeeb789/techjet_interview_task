import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Authservices {
  FirebaseAuth auth = FirebaseAuth.instance;
  Stream<User?> get authstatecghages => auth.authStateChanges();
  static late User user;

  Future<void> logout() async {
    await auth.signOut();
    await GoogleSignIn().signOut();
  }

  //google authentication//

  Future<UserCredential> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}

final authProvider = Provider<Authservices>((ref) {
  return Authservices();
});

final authstateProvider = StreamProvider((ref) {
  return ref.watch(authProvider).authstatecghages;
});
