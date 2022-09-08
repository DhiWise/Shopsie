import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseGoogleAuthHelper {
  /// Handle Google Signin to authenticate user
  Future<UserCredential> signInWithGoogle() async {
    try {
      // Trigger the authentication flow
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      // Once signed in, return the UserCredential
      return await FirebaseAuth.instance.signInWithCredential(credential);
    } catch (error) {
      return Future.error(error);
    }
  }

  /// To Check if the user is already signedin through google
  alreadySignIn() {
    bool alreadySignIn;
    if (FirebaseAuth.instance.currentUser != null) {
      alreadySignIn = true;
    } else {
      alreadySignIn = false;
    }
    return alreadySignIn;
  }

  /// To signout from the application if the user is signed in through google
  signOutWithGoogle() {
    FirebaseAuth.instance.signOut();
  }
}
