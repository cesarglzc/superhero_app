import 'package:flutter/material.dart';
import 'package:superhero_app/data/model/superhero_detail_response.dart';

class SuperheroDetailScreen extends StatelessWidget {
  final SuperheroDetailResponse superhero;
  const SuperheroDetailScreen({super.key, required this.superhero});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Superhero {{ ${superhero.name} }}")),
      body: Column(
        children: [
          Image.network(
            superhero.url,
            height: 300,
            width: double.infinity,
            fit: BoxFit.cover,
            alignment: Alignment(0, -0.6),
          ),
          Text(superhero.name, style: TextStyle(fontSize: 28)),
          Text(
            superhero.realName,
            style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
          ),
          SizedBox(
            width: double.infinity,
            height: 130,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                powerColumm(
                  superhero.powerStatsResponse.power,
                  Colors.red,
                  "Power",
                ),
                powerColumm(
                  superhero.powerStatsResponse.intelligence,
                  Colors.blue,
                  "Intelligence",
                ),
                powerColumm(
                  superhero.powerStatsResponse.strength,
                  Colors.grey,
                  "Strength",
                ),
                powerColumm(
                  superhero.powerStatsResponse.speed,
                  Colors.green,
                  "Speed",
                ),
                powerColumm(
                  superhero.powerStatsResponse.durability,
                  Colors.deepOrange,
                  "Durability",
                ),
                powerColumm(
                  superhero.powerStatsResponse.combat,
                  Colors.black,
                  "Combat",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column powerColumm(String power, Color color, String text) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(height: double.parse(power), width: 20, color: color),
        Text(text),
      ],
    );
  }
}
