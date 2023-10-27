import 'package:flutter/material.dart';
import 'Bag.dart';

class Cart extends ChangeNotifier {
  Set<Bag> bagShop = {
    Bag(
      name: 'Tory Burch',
      price: 'Rp 9.524.250',
      description: 'Fleming Small Shoulder Bag',
      imagePath: 'images/TB_1.jpg',
    ),
    Bag(
      name: 'Tory Burch',
      price: 'Rp 11.750.000',
      description: 'Large Fleming Soft Bucket Bag Black',
      imagePath: 'images/TB2.jpg',
    ),
    Bag(
      name: 'Tory Burch',
      price: 'Rp 11.250.000',
      description: 'Mini Fleming Soft Crescent Bag Pink Plie',
      imagePath: 'images/TB_3.jpg',
    ),
    Bag(
      name: 'Tory Burch',
      price: 'Rp 11.650.000',
      description: 'Tory Burch Tory The Toad Backpack Leccio',
      imagePath: 'images/TB_4.jpg',
    ),
    Bag(
      name: 'Tory Burch',
      price: 'Rp 8.700.000',
      description: 'Miller Shoulder Bag New Ivory',
      imagePath: 'images/TB_5.jpg',
    ),
    Bag(
      name: 'Tory Burch',
      price: 'Rp 15.650.000',
      description: 'Tory Burch Eleanor Satchel Black',
      imagePath: 'images/TB_6.jpg',
    ),
  };

  List<Bag> userCart = [];

  Set<Bag> getBagList() {
    return bagShop;
  }

  List<Bag> getUserCart() {
    return userCart;
  }

  void addItemToCart(Bag bag) {
    userCart.add(bag);
    notifyListeners();
  }

  void removeItemFromCart(Bag bag) {
    userCart.remove(bag);
    notifyListeners();
  }
}
