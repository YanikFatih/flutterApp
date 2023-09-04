import 'package:flutter/material.dart';

class PokemonBoxWidget {

  Widget pokeBox(BuildContext context, String? name, String? imagePath, String? height, String? weight){
    return InkWell(
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: Column(
          children: [
            CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(imagePath!),
                backgroundColor: Theme.of(context).colorScheme.primary
            ),
            Container(
              width: 80,
              height: 20,
              margin: EdgeInsets.only(top: 5),
              child: Text(
                name!,
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 70,
                  height: 20,
                  padding: EdgeInsets.all(2),
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.background,
                      borderRadius: BorderRadius.all(Radius.circular(5))
                  ),
                  child: Text(
                    '$height',
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(width: 15),
                Container(
                  width: 70,
                  height: 20,
                  padding: EdgeInsets.all(2),
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.background,
                      borderRadius: BorderRadius.all(Radius.circular(5))
                  ),
                  child: Text(
                    '$weight',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}