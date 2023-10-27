import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/bagtile.dart';
import '../models/Bag.dart';
import '../models/cartclass.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addBagToCart(Bag bag) {
    Provider.of<Cart>(context, listen: false).addItemToCart(bag);

    showDialog(
      context: context,
      builder: (context) =>
          AlertDialog(title: Text('Successfully added to Cart')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 252, 251, 251),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Search',
                  style: TextStyle(color: Colors.grey),
                ),
                Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 128, 75, 75),
                ),
              ],
            ),
          ),

          //recommendations
          Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 25.0, bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  'Recommendations',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),

          Expanded(
            child: ListView.builder(
              itemCount: value.getBagList().length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                List<Bag> bagList = value.getBagList().toList();
                Bag bag = bagList[index];
                return BagTiles(
                  bag: bag,
                  onTap: () => addBagToCart(bag),
                );
              },
            ),
          ),

          const Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 25, right: 25),
            child: Divider(
              color: Color.fromARGB(255, 82, 55, 55),
            ),
          ),
        ],
      ),
    );
  }
}
