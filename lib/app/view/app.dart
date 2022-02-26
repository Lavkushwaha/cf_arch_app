import 'package:cf_reseller_app/app_config/app_config.dart';
import 'package:cf_reseller_app/l10n/l10n.dart';
import 'package:cf_reseller_app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF13B9FF),
        ),
      ),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      title: appConfig.appName ?? 'CF ARCH APP',
      debugShowCheckedModeBanner: appConfig.showDebugBanner,
      supportedLocales: AppLocalizations.supportedLocales,
      onGenerateRoute: Routes.getGeneratedRoute,
      initialRoute: Routes.splash,
    );
  }
}
