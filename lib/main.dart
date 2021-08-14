import 'package:flutter/material.dart';
import 'package:resenha/core/app_core.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(AppCore());
}