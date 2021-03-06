
import 'package:flutter_boiler_plate/services/local_storage/shared_prefs.dart';
import 'package:flutter_boiler_plate/services/third_party/easyloading/easyloading.dart';
import 'package:flutter_boiler_plate/ui/views/home/home_v.dart';
import 'package:flutter_boiler_plate/ui/views/splash/splash_v.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';

@StackedApp(
  logger: StackedLogger(),
  routes: [
    MaterialRoute(page: SplashScreenV, initial: true),
    MaterialRoute(page: HomeScreenV),
  ],
  dependencies: [
    // lazy-singletons
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: EasyLoadingService),
    LazySingleton(
        classType: ThemeService, resolveUsing: ThemeService.getInstance),

    // pre-resolves
    Presolve(
      classType: SharedPrefsService,
      presolveUsing: SharedPrefsService.getInstance,
    ),
    Presolve(
    ),
  ],
)
class AppSetup {
  /** Serves no purpose besides having an annotation attached to it */
}
