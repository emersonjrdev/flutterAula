import 'package:first_app/widgets/cardFrutas.dart';
import 'package:first_app/widgets/container_propaganda.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Minha dashboard')),
      body: Column(
        children: [
          Center(
            child: Image.asset(
              "assets/images/logo.png",
              height: 95,
            ),
          ),
          const Row(
            children: [
              Icon(Icons.location_on),
              Text("Cotia, São Paulo"),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(32.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Pesquisar na loja',
                prefixIcon: Icon(Icons.search),
                fillColor: Color.fromARGB(88, 151, 113, 113),
                filled: true,
              ),
            ),
          ),
          const ContainerPropaganda(),
          const Text(
            "Ofertas",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FruitCard(
                  imageUrl:
                      'https://vallefrutas.com.br/wp-content/uploads/banana-nanica.png',
                  fruitName: 'Banana',
                  price: '\$1.99',
                ),
                FruitCard(
                  imageUrl:
                      'https://crsupermercados.com.br/cdn/shop/files/maca-unidade.png?v=1711658768',
                  fruitName: 'Maçã',
                  price: '\$2.99',
                ),
              ],
            ),
          ),
          const Text(
            "Mais vendidos",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FruitCard(
                  imageUrl:
                      'https://obahortifruti.vtexassets.com/arquivos/ids/5593084/Laranja-Bahia-Importada.png?v=638384110178900000',
                  fruitName: 'Laranja',
                  price: '\$3.99',
                ),
                FruitCard(
                  imageUrl:
                      'https://obahortifruti.vtexassets.com/arquivos/ids/5195454/Uva-Verde-Sem-Semente-500-G.png?v=638332545845770000',
                  fruitName: 'Uva',
                  price: '\$4.99',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
