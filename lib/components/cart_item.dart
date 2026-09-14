import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';
import '../models/game.dart';


class CartItem extends StatefulWidget {
  final Game game;
  const CartItem({
    super.key,
    required this.game
  });


  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  // remove item from cart
  void removeItemFromCart(){
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.game);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(
          widget.game.imagePath,
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
        title: Text(widget.game.name),
        subtitle: Text(widget.game.price),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: removeItemFromCart,
        ),
      ),
    );
  }
}