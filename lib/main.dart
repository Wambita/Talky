import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_chat_app/cubits/profiles/profiles_cubit.dart';
import 'package:my_chat_app/utils/constants.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:my_chat_app/pages/splash_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://icjqbqxptqwhmzyqvcxj.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImljanFicXhwdHF3aG16eXF2Y3hqIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODkwNjc2NzYsImV4cCI6MjAwNDY0MzY3Nn0.bNfJxPOYEz_zSrdkcSNWza86tRk1p5fmvqHhJp5sHeg',
    authCallbackUrlHostname: 'login',
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfilesCubit>(
      create: (context) => ProfilesCubit(),
      child: MaterialApp(
        title: 'Talky',
        debugShowCheckedModeBanner: false,
        theme: appTheme,
        home: const SplashPage(),
      ),
    );
  }
}
