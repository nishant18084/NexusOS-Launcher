import 'package:flutter/material.dart';
import 'theme/nexus_theme.dart';
import 'screens/battery_screen.dart';

void main() {
  runApp(const NexusOSApp());
}

class NexusOSApp extends StatelessWidget {
  const NexusOSApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nexus OS UI',
      theme: NexusTheme.darkTheme,
      home: const NexusPowerScreen(),
    );
  }
}
