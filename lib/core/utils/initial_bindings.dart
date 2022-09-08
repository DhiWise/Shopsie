import 'package:shopsie/core/app_export.dart';
import 'package:shopsie/data/apiClient/api_client.dart';
import 'package:firebase_core/firebase_core.dart';
import '../../firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import '../../firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import '../../firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import '../../firebase_options.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() async {
    Get.put(PrefUtils());
    Get.put(ApiClient());
    Connectivity connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions
            .currentPlatform); //TODO : run command "flutterfire configure" to generate firebase_options file
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }
}
