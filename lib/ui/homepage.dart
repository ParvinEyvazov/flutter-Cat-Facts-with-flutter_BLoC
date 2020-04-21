import 'package:cat_facts_app/blocs/bloc_cat/bloc/cat_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'list_of_facts.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cat Facts")),
      body: BlocProvider<CatBloc>(
        create: (context) => CatBloc(),
        child: ListOfFacts(),
      ),
    );
  }
}
