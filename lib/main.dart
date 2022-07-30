import 'package:flutter/material.dart';
import 'package:my_profile/Home/Home_File.dart';
import 'package:my_profile/Home/Message_File.dart';

import 'package:firebase_core/firebase_core.dart';

void main() async {
// flutter ensure
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    title: "App",
    home: const MyProfile(),
  ));
}
