import 'package:flutter/material.dart';

// Routes
import 'package:delivery/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Quitar etiqueta de Debug app
      debugShowCheckedModeBanner: false,
      routes: routes,
      initialRoute: 'welcome',

      // Los temas de la app
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme:
              AppBarTheme(iconTheme: IconThemeData(color: Colors.black))),
    );
  }
}
