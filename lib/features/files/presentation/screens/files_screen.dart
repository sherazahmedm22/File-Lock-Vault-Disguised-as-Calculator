import 'package:flutter/material.dart';

import '../widgets/files_widgets.dart';

class FilesScreen extends StatelessWidget {
  const FilesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double scale = MediaQuery.of(context).size.width / 360.0;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: false,
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              FilesTopBar(scale: scale),
              SizedBox(height: 12 * scale),
              FilesStorageOverview(scale: scale),
              SizedBox(height: 16 * scale),
              FilesTypeChips(scale: scale),
              SizedBox(height: 16 * scale),
              FilesListSection(scale: scale),
              SizedBox(height: 16 * scale),
              FilesPrimaryButton(label: 'Lock Vault', scale: scale),
              SizedBox(height: 12 * scale),
              FilesOutlinedButton(label: 'Add', scale: scale),
              SizedBox(height: 16 * scale),
            ],
          ),
        ),
      ),
    );
  }
}
