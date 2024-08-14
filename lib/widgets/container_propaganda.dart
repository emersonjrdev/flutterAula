import 'package:flutter/material.dart';

class ContainerPropaganda extends StatelessWidget {
  const ContainerPropaganda({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color.fromARGB(255, 114, 102, 102),
          image: const DecorationImage(
            image: NetworkImage(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
            fit: BoxFit.fill,
          ),
          border: Border.all(
            color: const Color.fromARGB(255, 0, 0, 0), // Cor da borda
            width: 2, // Largura da borda
          ),
        ),
        height: 100,
        width: 300,
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(20),
        child: const Stack(children: [
          Positioned(
            bottom: 10,
            right: 20,
            child: Text(
              'Ricks do rodo',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 32,
              ),
            ),
          ),
          Positioned(
            left: 236,
            bottom: 30,
            child: Icon(
              Icons.favorite,
              color: Colors.white,
              size: 20,
            ),
          )
        ]));
  }
}
