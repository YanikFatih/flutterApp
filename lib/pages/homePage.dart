import 'package:flutter/material.dart';
import 'package:idenfit_my_first_app/service/pokemon_service.dart';
import '../configs/HomePageTheme.dart';
import '../model/pokemon_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PokemonService pokemonService = PokemonService();
  PokemonModel pokemonModel = PokemonModel();
  HomePageTheme homePageTheme = HomePageTheme();
  List<PokemonModelData> pokemons = [];
  ScrollController scrollController = ScrollController();
  int start = 0;
  int end = 10;
  bool isLoadingMore = false;
  List<PokemonModelData> pokemonsAdd = [];

  @override
  void initState() {
    super.initState();
    scrollController.addListener(scrollListenerF);
    pokemonService.fetchPokemons().then((value) {
      if(value != null && value.pokemon != null){
        setState(() {
          pokemons = value.pokemon!.sublist(start, end);
        });
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
              color: Colors.grey.shade300
          ),
          child: Padding(
              padding: const EdgeInsets.only(right: 10, left: 10, top: 3),
                child: GridView.builder(
                    controller: scrollController,
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 2/2.1,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                    itemCount: isLoadingMore ? pokemons.length+1 : pokemons.length,
                    itemBuilder: (BuildContext context, index){
                      if(index < pokemons.length){
                        return InkWell(
                          onTap: (){
                            setState(() {

                            });
                          },
                          child: homePageTheme.box(pokemons[index].name,  pokemons[index].img, pokemons[index].height, pokemons[index].weight),
                        );
                      }else {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    },
                  ),
                )

                /*GridView.count(
                  controller: scrollController,
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
                  },
                  ),
                )*/
              )
          ),
        );
  }
  void scrollListenerF(){
    if(scrollController.position.pixels == scrollController.position.maxScrollExtent){
      print("called");
      setState(() {
        isLoadingMore = true;
      });
      Future.delayed(Duration(seconds: 1),(){
        pokemonService.fetchPokemons().then((value) {
          setState(() {
            start = start + 10;
            end = end + 10;
            pokemonsAdd = value.pokemon!.sublist(start, end);
            pokemons = pokemons + pokemonsAdd;
            isLoadingMore = false;
          });
        });
      });
  }
  }
}