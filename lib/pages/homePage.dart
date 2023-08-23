import 'package:flutter/material.dart';
import 'package:idenfit_my_first_app/service/pokemon_service.dart';
import '../configs/HomePageTheme.dart';
import '../model/pokemon_model.dart';
import 'package:loadmore/loadmore.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PokemonService pokemonService = PokemonService();
  List<PokemonModelData> pokemons = [];
  HomePageTheme homePageTheme = HomePageTheme();

  @override
  void initState() {
    super.initState();
    pokemonService.fetchPokemons().then((value) {
      if(value != null && value.pokemon != null){
        pokemons = value.pokemon!;
      }else {
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            color: Colors.blue.shade500
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 10, left: 10),
          child: LoadMore(
            isFinish: true,
            onLoadMore:() async {
              print("Loading");
              await Future.delayed(Duration(seconds: 0, milliseconds: 100));
              return true;
            },
            child: GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.all(5),
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: (2 / 2.4),
              children: List.generate(pokemons.length, (index){
                return InkWell(
                  onTap: (){

                  },
                  child: homePageTheme.box(pokemons[index].name,  pokemons[index].img, pokemons[index].height, pokemons[index].weight, 0),
                );
              }),
            ),
          )
        ),
      )
    ));
  }
}
