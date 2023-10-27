import 'package:flutter/material.dart';
import '../models/Bag.dart';

// ignore: must_be_immutable
class BagTiles extends StatelessWidget {
  Bag bag;
  void Function()? onTap;
  BagTiles({super.key, required this.bag, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          
          //Bag-Image
          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                bag.imagePath,
                width: 250, // Lebar gambar yang diinginkan
                height: 200,
              )),

          //description
          Padding(
            padding: const EdgeInsets.only(right: 10, left:  10),
            child: Center(
              child: Text(
                textAlign: TextAlign.center,
                bag.description,
                style: TextStyle(color: Colors.grey[600]),
              ),
            ),
          ),

          //price
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //name-bag
                    Text(bag.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        )),

                    const SizedBox(height: 5),

                    //price-bag
                    Text(bag.price, style: const TextStyle(color: Colors.black))
                  ],
                ),

                //button-plus
                GestureDetector(
                  onTap: onTap,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 56, 56, 56),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}