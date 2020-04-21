import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cat_facts_app/data/cat_repository.dart';
import 'package:cat_facts_app/locator.dart';
import 'package:cat_facts_app/models/cat.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'cat_event.dart';
part 'cat_state.dart';

class CatBloc extends Bloc<CatEvent, CatState> {

  final CatRepository catRepository = locator<CatRepository>();

  //initialState
  @override
  CatState get initialState => InitialCatState();

  @override
  Stream<CatState> mapEventToState(CatEvent event) async* {


    if(event is FetchCatEvent){


      yield CatLoadingState();

      try{


        final Cat respondCat = await catRepository.getCat();

        yield CatLoadedState(cat: respondCat);


      }catch(_){

        yield CatErrorState();
      }



    }



  }
}
