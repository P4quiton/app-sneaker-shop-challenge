import 'package:flutter/material.dart';
import '../models/game.dart';

class GameTile extends StatelessWidget {
  final Game game;
  final VoidCallback? onTap;

  const GameTile({
    super.key,
    required this.game,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          // game pic
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: SizedBox(
              height: 120,
              width: double.infinity,
              child: Image.asset(
                game.imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(height: 10),

          // description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 6),
            child: Text(
              game.description,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 12
              ),
            ),
          ),

          const Spacer(),

          // price + details
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        game.name,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),

                      const SizedBox(height: 5),

                      Text(
                        '\$${game.price}',
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 13
                        ),
                      ),
                    ],
                  ),
                ),

                IconButton.filled(
                  onPressed: onTap,
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
          ),

          const SizedBox(height: 8),
        ],
      ),
    );
  }
}