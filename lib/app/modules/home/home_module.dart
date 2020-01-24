import 'package:music_media_player_flutter/app/modules/home/pages/details/details_controller.dart';
import 'package:music_media_player_flutter/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:music_media_player_flutter/app/modules/home/home_page.dart';
import 'package:music_media_player_flutter/app/modules/home/pages/details/details_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => DetailsController()),
        Bind((i) => HomeController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
        Router('/details/:id', child: (_, args) => DetailsPage(
          id: args.params['id'],
        ),
          transition: TransitionType.rightToLeftWithFade
        ),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
