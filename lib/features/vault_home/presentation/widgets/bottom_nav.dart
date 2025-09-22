import 'package:flutter/material.dart';

class VaultHomeBottomNav extends StatelessWidget {
  const VaultHomeBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.12), blurRadius: 6),
        ],
      ),
      child: const Row(
        children: <Widget>[
          _BottomNavTab(label: 'Home', emoji: '🏠'),
          _BottomNavTab(label: 'Alerts', emoji: '🚨'),
        ],
      ),
    );
  }
}

class _BottomNavTab extends StatelessWidget {
  final String label;
  final String emoji;
  const _BottomNavTab({required this.label, required this.emoji});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(emoji, style: const TextStyle(fontSize: 20)),
          const SizedBox(height: 2),
          Text(
            label,
            style: const TextStyle(color: Colors.black, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
