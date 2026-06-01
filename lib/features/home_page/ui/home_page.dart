import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/data/general_info_repository_impl.dart';
import 'package:portfolio/features/general_info/bloc/general_info_cubit.dart';
import 'package:portfolio/features/general_info/ui/general_info.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7FAFC),
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('assets/images/pin_board.jpg'),
            fit: BoxFit.cover,
          ),
          border: Border.all(color: Colors.brown, width: 20),
        ),
        child: BlocProvider(
          create: (_) => GeneralInfoCubit(const GeneralInfoRepositoryImpl()),
          child: const GeneralInfo(),
        ),
      ),
    );
  }
}
