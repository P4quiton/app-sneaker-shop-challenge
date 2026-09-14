import 'package:provider/provider.dart';
import '../models/cart.dart';
import '../models/game.dart';
import 'package:flutter/material.dart';
import '../components/game_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  // add shoe to cart
  void addShoeToCart(Game game){
    Provider.of<Cart>(context, listen: false).addItemToCart(game);

    // alert the user, shoe successfully added
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Agregado correctamente!'),
        content: Text('Mira tu carrito'),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Column(
        children: [
          // search bar
          Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Buscar videojuego',
                  style: TextStyle(color: Colors.grey),
                ),
                Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ],
            ),
          ),

          // message
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: Text(
              'Encuentra tu próxima aventura',
              style: TextStyle(
                color: Colors.grey[600]
              ),
            ),
          ),

          // hot picks
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  'Juegos destacados 🎮',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),

          // list of shoes for sale
          Expanded(
            child: ListView.builder(
              itemCount: value.getGameList().length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                // get a shoe from list
                Game game = value.getGameList()[index];

                // return the shoe
                return GameTile(
                  game: game,
                  onTap: () => addShoeToCart(game),
                );
              },
            ),
          ),

          const Padding(
            padding: EdgeInsets.only(top: 25.0, left: 25, right: 25),
            child: Divider(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}