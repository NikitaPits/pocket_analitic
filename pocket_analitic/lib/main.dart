import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pocket_analitic/bloc/arguments_collection/argumets_collection_bloc.dart';
import 'package:pocket_analitic/bloc/arguments_list/arguments_list_bloc.dart';
import 'package:pocket_analitic/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ArgumentsListBloc(),
        ),
        BlocProvider(
          create: (context) => ArgumetsCollectionBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Pocket Analitic',
        theme: ThemeData(),
        home: const Home(),
      ),
    );
  }
}
