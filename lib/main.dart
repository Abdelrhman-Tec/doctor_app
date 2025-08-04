import 'package:flutter/material.dart';
import 'package:flutter_advanced_courese/app/doctor_app.dart';
import 'package:flutter_advanced_courese/core/di/dependency_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupGetIt();
  runApp(const DoctorApp());
}
