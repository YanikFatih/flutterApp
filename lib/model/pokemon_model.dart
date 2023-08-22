
class PokemonModelData {
  int? id;
  String? name;
  String? img;
  String? height;
  String? weight;

  PokemonModelData({
    this.id,
    this.name,
    this.img,
    this.height,
    this.weight
  });

  PokemonModelData.fromJson(Map<String, dynamic> json){
    id = json['id']?.toInt();
    name = json['name']?.toString();
    img = json['img']?.toString();
    height = json['height'].toString();
    weight = json['weight'].toString();
  }

  Map<String, dynamic> toJson(){
    final pokemon = <String, dynamic>{};
    pokemon['id'] = id;
    pokemon['name'] = name;
    pokemon['img'] = img;
    pokemon['height'] = height;
    pokemon['weight'] = weight;
    return pokemon;
  }
}

class PokemonModel {
  List<PokemonModelData>? pokemon;

  PokemonModel({
    this.pokemon
  });

  PokemonModel.fromJson(Map<String, dynamic> json) {
    if (json['pokemon'] != null){
      final v = json['pokemon'];
      final arrP = <PokemonModelData>[];
      v.forEach((v) {
        arrP.add(PokemonModelData.fromJson(v));
      });
      this.pokemon = arrP;
    }
  }

  }

  /*factory PokemonModel.fromJson(Map<String, dynamic> json){
    return PokemonModel(
        id: json['id'],
        name: json['name'],
        img: json['img'],
        height: json['height'],
        weight: json['weight']);
  }*/
