import 'package:flutter/material.dart';
import '../components/glass_card.dart';
import '../theme/nexus_theme.dart';

class NexusPowerScreen extends StatelessWidget {
  const NexusPowerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nexus Power', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            GlassCard(
              borderRadius: 100,
              padding: const EdgeInsets.all(40),
              child: Column(
                children: const [
                  Text('83%', style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.white)),
                  SizedBox(height: 8),
                  Text('Estimated 6h 20m remaining', style: TextStyle(color: Colors.white70)),
                ],
              ),
            ),
            const SizedBox(height: 30),
            GlassCard(
              child: ListTile(
                leading: const Icon(Icons.bolt, color: NexusTheme.neonCyan),
                title: const Text('Charging Protection'),
                trailing: Switch(value: true, onChanged: (v) {}),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
