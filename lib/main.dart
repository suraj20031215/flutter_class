import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_class/%20pages/home_page.dart';
import 'package:flutter_class/%20pages/login_page.dart';
import 'package:flutter_class/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      routes: {
        "/":(context)=> LoginPage(),
        MyRoutes.loginRoutes :(context)=> const LoginPage(),
        MyRoutes.homeRoutes  :(context)=> const HomePage(),
      } ,
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
          primarySwatch: Colors.green,
// brightness: Brightness.dark
        // brightness: Brightness.dark
      ),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(


      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          // Status bar color
          statusBarColor: Colors.white,
          // Status bar brightness (optionalw)
          statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
          statusBarBrightness: Brightness.light, // For iOS (dark icons)
        ),


        title: Text(widget.title),
      ),

      body: Center(


      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
