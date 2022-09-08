import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class FirebaseFacebookAuthHelper {
  /// Handle Facebook Signin to authenticate user
  Future<UserCredential> signInWithFacebook() async {
    try {
      // Trigger the sign-in flow
      final LoginResult loginResult = await FacebookAuth.instance.login();

      // Create a credential from the access token
      final OAuthCredential facebookAuthCredential =
          FacebookAuthProvider.credential(loginResult.accessToken!.token);

      // Once signed in, return the UserCredential
      return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
    } catch (error) {
      return Future.error(error);
    }
  }

  /// To Check if the user is already signedin through Facebook
  alreadySignIn() {
    bool alreadySignIn;
    if (FirebaseAuth.instance.currentUser != null) {
      alreadySignIn = true;
    } else {
      alreadySignIn = false;
    }
    return alreadySignIn;
  }

  /// To signout from the application if the user is signed in through Facebook
  signOutWithFacebook() {
    FirebaseAuth.instance.signOut();
  }
}
