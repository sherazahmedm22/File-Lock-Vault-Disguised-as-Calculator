import 'package:flutter/material.dart';

class VaultHomeTopBar extends StatelessWidget {
  const VaultHomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 72,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.12), blurRadius: 6),
        ],
      ),
      child: Column(
        children: <Widget>[
          // Fake status area (24px)
          const SizedBox(height: 24),
          // Content area (48px)
          SizedBox(
            height: 48,
            child: Row(
              children: const <Widget>[
                SizedBox(width: 16),
                Expanded(
                  child: Text(
                    'Vault',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(width: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

