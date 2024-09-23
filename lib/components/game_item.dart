import 'package:flutter/material.dart';
import 'package:flutter_items/models/game.dart';
import 'package:flutter_items/pages/game_page.dart';

class GameItem extends StatelessWidget {
  const GameItem({super.key, required this.game});
  final Game game;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (ctx) => const GamePage())),
      child: Column(
        children: [
          AspectRatio(
              aspectRatio: 6 / 8,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(game.imageUrl), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(15)),
              )),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.fromLTRB(8, 5, 8, 0),
            child: Text(
              game.name,
              style: const TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w900,
                  fontSize: 32),
              textAlign: TextAlign.left,
              softWrap: true,
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.fromLTRB(8, 1, 8, 5),
            child: Text(game.price,
                style: const TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w900,
                    fontSize: 22),
                textAlign: TextAlign.left),
          ),
          ElevatedButton(
              onPressed: () => {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.shopping_cart,
                    size: 24,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "В корзину",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
