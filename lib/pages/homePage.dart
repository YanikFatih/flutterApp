import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:idenfit_my_first_app/service/pokemon_service.dart';
import '../model/pokemon_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

/*Future<Pokemon> getPokemons(int i) async {
  final response = await http.get(Uri.parse('https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json'));
  if (response.statusCode == 200) {
    var jsonBody =  Pokemon.fromJson(json.decode(response.body), i);
    return jsonBody;
  } else {
    throw Exception('Failed to load');
  }
}*/

class _HomePageState extends State<HomePage> {
  PokemonService pokemonService = PokemonService();
  List<PokemonModelData> pokemons = [];

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

      body: ListView.builder(
          itemCount: pokemons.length,
          itemBuilder:(context, index) {
            return ListTile(
              title: Text("${pokemons[index].name}"),
              subtitle: Text(" ${pokemons[index]!.height} " + " ${pokemons[index]!.weight}" ),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(pokemons[index].img!),
              ),
            );
          }
      ),
        //ListView tasarımı değişecek.


        //Aşağıdaki tasarım tekrar kullanılacak.

        /*Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.red.shade600
        ),
        child: SingleChildScrollView(
          child: Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.all(25),
              child: Wrap(
                direction: Axis.horizontal,
                crossAxisAlignment: WrapCrossAlignment.start,
                spacing: 20,
                runSpacing: 10,
                children: [
                    FutureBuilder<Pokemon>(
                      future: getPokemons(5),
                      builder: (context, snapshot){
                        if(snapshot.hasData){
                          return InkWell(
                            onTap: () {
                              setState(() {
                                //counter burada artırılacak
                              });
                            },
                            child: homePageTheme.box("${snapshot.data!.id} ", snapshot.data!.img, 0),
                            //sadece 1 veri geliyor, sırayla gelmesi sağlanacak
                          );
                        }else{
                          return const Center(
                            child: Text("..."),
                          );
                        }
                      },
                    ),
              ]),
            ) ,
          )
        )
        )
    )*/));
  }

}
