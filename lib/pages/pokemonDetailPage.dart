import 'package:flutter/material.dart';
import 'package:idenfit_my_first_app/model/pokemon_model.dart';

class PokemonDetailPage extends StatelessWidget {
  final PokemonModelData pokemonModel;

  const PokemonDetailPage({Key? key, required this.pokemonModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pokemon Detail',
          style: TextStyle(
            fontWeight: FontWeight.w400,
          ),
        ),
        leadingWidth: 30,
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).colorScheme.secondary
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   CircleAvatar(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    backgroundImage: NetworkImage(pokemonModel.img!),
                    radius: 120,
                  ),
                  Container(
                    width: 120,
                    height: 55,
                    margin: const EdgeInsets.only(top: 30),
                    child: Text(
                      '${pokemonModel.name}',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 40,
                        padding: const EdgeInsets.all(2),
                        margin: const EdgeInsets.only(top: 50),
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.background,
                            borderRadius: const BorderRadius.all(Radius.circular(5))
                        ),
                        child: Center(
                          child: Text(
                            '${pokemonModel.height}',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Container(
                        width: 100,
                        height: 40,
                        padding: const EdgeInsets.all(2),
                        margin: const EdgeInsets.only(top: 50),
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.background,
                            borderRadius: const BorderRadius.all(Radius.circular(5))
                        ),
                        child:  Center(
                          child: Text(
                            '${pokemonModel.weight}',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
      ),
    );
  }
}

