import 'package:flutter/material.dart';

import '../widgets/documents_widgets.dart';

class DocumentsScreen extends StatelessWidget {
  const DocumentsScreen({super.key});

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
              DocumentsTopBar(scale: scale),
              SizedBox(height: 12 * scale),
              DocumentsFileTypes(scale: scale),
              SizedBox(height: 16 * scale),
              DocumentsListSection(scale: scale),
              SizedBox(height: 16 * scale),
              DocumentsPrimaryButton(label: 'Lock Vault', scale: scale),
              SizedBox(height: 12 * scale),
              DocumentsOutlinedButton(label: 'Add', scale: scale),
              SizedBox(height: 16 * scale),
            ],
          ),
        ),
      ),
    );
  }
}
