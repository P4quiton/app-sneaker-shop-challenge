import 'package:flutter/material.dart';
import 'game.dart';


class Cart extends ChangeNotifier{
    // list of shoes for sale
    List<Game> shoeShop = [
        Game(
            name: 'Halo Campaing Evolved',
            price: '899',
            description: 'Vuelve a revivir la primer aventura del Jefe Maestro con nueva jugabilidad y contenido',
            imagePath: 'lib/images/haloce.jpeg',
        ),
        Game(
            name: 'Red Read Redemption 2',
            price: '599',
            description: 'En los ultimos compases del Salvaje Oeste, una de las bandas de forajidos más celebres intenta sobrevivir al avance de la civilización',
            imagePath: 'lib/images/rdr2.jpeg',
        ),
        Game(
            name: 'Nier: Automata',
            price: '599',
            description: 'En un futuro muy lejano, los androides tienen una guerra contra las maquinas, enviadas por alienigenas para extinguir a la humanidad',
            imagePath: 'lib/images/nierAutomata.jpeg',
        ),
        Game(
            name: 'The Witcher 3',
            price: '499',
            description: 'El brujo Geralt de Rivia intenta encontrar al amor de su vida y a su hija, recordando su pasado en el camino',
            imagePath: 'lib/images/theWitcher3.jpeg',
        )
    ];

    // list of items in user cart
    List<Game> userCart = [];

    // get list of shoes for sale
    List<Game> getGameList(){
        return shoeShop;
    }

    // get cart
    List<Game> getUserCart(){
        return userCart;
    }

    // add items to cart
    void addItemToCart(Game game){
        userCart.add(game);
        notifyListeners();
    }

    // remove item from cart
    void removeItemFromCart(Game game){
        userCart.remove(game);
        notifyListeners();
    }
}