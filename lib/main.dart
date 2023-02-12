import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/services.dart';
import 'firebase_options.dart';

import 'package:devstack/data/local_db_client.dart';
import 'package:devstack/injection_container.dart';
import 'package:devstack/ui/switcher_page.dart';
import 'package:devstack/bloc/switcher_bloc.dart';
import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  await sl<LocalDbClient>().init();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void dispose() async {
    await sl<LocalDbClient>().dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => di.sl<SwitcherBloc>()
            ..add(const SwitcherEvent.periodicUpdateFb())
            ..add(const SwitcherEvent.updateLocalDb()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: const Color.fromRGBO(255, 255, 255, 1),
          backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
          textTheme: GoogleFonts.manropeTextTheme(),
          appBarTheme: const AppBarTheme(
            foregroundColor: Colors.black,
            elevation: 4,
            shadowColor: Color.fromRGBO(182, 188, 196, 0.25),
          ),
        ),
        home: const SwitcherPage(),
      ),
    );
  }
}
