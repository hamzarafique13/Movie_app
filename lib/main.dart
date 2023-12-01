import 'package:flutter/material.dart';
import 'package:movie_app_use_riverpod/pages/splash_page/splash_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_app_use_riverpod/provider/theme_provider.dart';
import 'package:movie_app_use_riverpod/themes/light_theme/light_theme%20copy.dart';
import 'package:movie_app_use_riverpod/themes/dark_theme/dark_theme copy.dart'as dt;
void main() {
  runApp(
     const ProviderScope(
      child: MyApp(),
    ),
  );
}
 
 class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MoviesPageState();
}

class _MoviesPageState extends ConsumerState<MyApp>{

  @override
  Widget build(BuildContext context) {
final themeMode = ref.watch(themeModeProvider);
    return  MaterialApp(
      theme: lightTheme,
      darkTheme: dt.darkTheme,
      themeMode: themeMode,
     //theme:isToggled ?lighttheme:darktheme,
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );

  }}

// class MyApp extends StatefulWidget {
//    const MyApp({super.key});


//   Widget build(BuildContext context,WidgetRef ref) {
//       final themeMode = ref.watch(themeModeProvider);
//     return  MaterialApp(
//       theme: lightTheme,
//       darkTheme: dt.darkTheme,
//       themeMode: themeMode,
//      //theme:isToggled ?lighttheme:darktheme,
//       debugShowCheckedModeBanner: false,
//       home: const SplashScreen(),
//     );
//     // );
//   }
  
  
  
  
// }
