import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/general_info/bloc/general_info_cubit.dart';
import 'features/general_info/data/general_info_repository_impl.dart';
import 'features/general_info/ui/general_info.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Valeriia Radzivilo Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (_) => GeneralInfoCubit(const GeneralInfoRepositoryImpl()),
        child: const GeneralInfo(),
      ),
    );
  }
}
