import 'package:flutter/material.dart';
import '../../../../app/routes/app_router.dart';

import '../widgets/vault_home_widgets.dart';

class VaultHomeScreen extends StatelessWidget {
  const VaultHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: const SafeArea(
        top: false,
        bottom: false,
        child: Column(
          children: <Widget>[
            VaultHomeTopBar(),
            Expanded(child: VaultHomeList()),
            VaultHomeBottomNav(),
          ],
        ),
      ),
    );
  }
}

class VaultHomeList extends StatelessWidget {
  const VaultHomeList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_VaultItemData> items = <_VaultItemData>[
      const _VaultItemData(icon: '🖼', title: 'Photos'),
      const _VaultItemData(icon: '🎬', title: 'Videos'),
      const _VaultItemData(icon: '🎧', title: 'Audio'),
      const _VaultItemData(icon: '📄', title: 'Documents'),
      const _VaultItemData(icon: '📁', title: 'Files'),
      const _VaultItemData(icon: '🔐', title: 'Passwords'),
      const _VaultItemData(icon: '📝', title: 'Notes'),
      const _VaultItemData(icon: '📱', title: 'Hidden Apps'),
      const _VaultItemData(icon: '🚨', title: 'Security & Alerts'),
    ];

    return Column(
      children: <Widget>[
        const VaultHomeSectionTitle(
          title: 'Vault',
          subtitle: 'Your secure items',
        ),
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            itemCount: items.length,
            separatorBuilder: (_, __) =>
                const Divider(height: 1, color: Colors.black12),
            itemBuilder: (BuildContext context, int index) {
              final _VaultItemData item = items[index];
              return VaultHomeListItem(
                leadingEmoji: item.icon,
                title: item.title,
                onTap: () {
                  if (index == 0) {
                    Navigator.of(context).pushNamed(AppRoutes.photos);
                  } else if (index == 1) {
                    Navigator.of(context).pushNamed(AppRoutes.videos);
                  } else if (index == 2) {
                    Navigator.of(context).pushNamed(AppRoutes.audio);
                  } else if (index == 3) {
                    Navigator.of(context).pushNamed(AppRoutes.documents);
                  } else if (index == 4) {
                    Navigator.of(context).pushNamed(AppRoutes.files);
                  }
                },
              );
            },
          ),
        ),
      ],
    );
  }
}

class _VaultItemData {
  final String icon;
  final String title;
  const _VaultItemData({required this.icon, required this.title});
}
