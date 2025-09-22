import 'package:flutter/material.dart';

import '../../features/vault_home/presentation/screens/vault_home_screen.dart';
import '../../features/photos/presentation/screens/photos_screen.dart';
import '../../features/videos/presentation/screens/videos_screen.dart';
import '../../features/audio/presentation/screens/audio_screen.dart';
import '../../features/documents/presentation/screens/documents_screen.dart';
import '../../features/files/presentation/screens/files_screen.dart';

class AppRoutes {
  static const String home = '/';
  static const String photos = '/photos';
  static const String videos = '/videos';
  static const String audio = '/audio';
  static const String documents = '/documents';
  static const String files = '/files';
}

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => const VaultHomeScreen());
      case AppRoutes.photos:
        return MaterialPageRoute(builder: (_) => const PhotosScreen());
      case AppRoutes.videos:
        return MaterialPageRoute(builder: (_) => const VideosScreen());
      case AppRoutes.audio:
        return MaterialPageRoute(builder: (_) => const AudioScreen());
      case AppRoutes.documents:
        return MaterialPageRoute(builder: (_) => const DocumentsScreen());
      case AppRoutes.files:
        return MaterialPageRoute(builder: (_) => const FilesScreen());
      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('Route not found'))),
        );
    }
  }
}
