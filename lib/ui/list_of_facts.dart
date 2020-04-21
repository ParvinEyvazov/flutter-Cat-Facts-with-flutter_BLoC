import 'package:cat_facts_app/blocs/bloc_cat/bloc/cat_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListOfFacts extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    //Starting to use bloc to fetch data here
    final _catBloc = BlocProvider.of<CatBloc>(context);

    return BlocBuilder(
        bloc: _catBloc,
        builder: (context, CatState state) {
          //Initial State
          if (state is InitialCatState) {
            _catBloc.add(FetchCatEvent());
            return Center(
              child: Text("Initial State"),
            );
          }

          // Loading State
          if (state is CatLoadingState) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          //Loaded State
          if (state is CatLoadedState) {
            return ListView.builder(
                itemCount: state.cat.all.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(10),
                    child: Card(
                      elevation: 5,
                      child: Container(
                        padding: EdgeInsets.all(18),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            //Name PART
                            (state.cat.all[index].user ==null || state.cat.all[index].user.name == null ) ?
                            Text("User : NULL") :
                            Text(state.cat.all[index].user.name.first + " " +state.cat.all[index].user.name.last),
                            SizedBox(
                              height: 8,
                            ),
                            //FACT and VOTE PART
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Expanded(
                                    child: Container(
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            color: Colors.blueGrey,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: 
                                            Text(state.cat.all[index].text))),
                                Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Text(state.cat.all[index].upvotes.toString())),
                                Icon(Icons.star)
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text("type : " + state.cat.all[index].type.toString())
                          ],
                        ),
                      ),
                    ),
                  );
                });
          }

          //Error State
          if (state is CatErrorState) {
            return Center(child: Text("Something went wrong"));
          }
        });
  }
}

/* 



*/
