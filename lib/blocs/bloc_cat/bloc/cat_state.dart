part of 'cat_bloc.dart';

abstract class CatState extends Equatable {
  const CatState();
}

class InitialCatState extends CatState{
  @override
  // TODO: implement props
  List<Object> get props => null;  
}

class CatLoadingState extends CatState{
  @override
  // TODO: implement props
  List<Object> get props => null;  
}

class CatLoadedState extends CatState{

  final Cat cat;

  CatLoadedState({@required this.cat});


  @override
  // TODO: implement props
  List<Object> get props => null;  
}

class CatErrorState extends CatState{
  @override
  // TODO: implement props
  List<Object> get props => null;
  
}

