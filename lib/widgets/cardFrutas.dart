import 'package:flutter/material.dart';

class FruitCard extends StatelessWidget {
  final String imageUrl;
  final String fruitName;
  final String price;

  FruitCard({
    required this.imageUrl,
    required this.fruitName,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              imageUrl,
              height: 90.0,
              width: 70,
              fit: BoxFit.fill,
            ),
            const SizedBox(height: 10),
            Text(
              fruitName,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.green,
                  ),
                ),
                SizedBox(width: 40),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color.fromARGB(255, 39, 192, 26)),
                  child: IconButton(
                    icon: const Icon(Icons.add),
                    color: Colors.white, // Ícone branco
                    onPressed: () {
                      // Adicione a ação desejada aqui
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
