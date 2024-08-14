import 'package:flutter/material.dart';

class MyDodge extends StatelessWidget {
  const MyDodge({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            height: 500,
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              border: Border.all(
                color: Colors.black,
                width: 2.0,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Expanded( 
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Outros widgets aqui...
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Image.network(
                  'https://as2.ftcdn.net/v2/jpg/07/64/56/45/1000_F_764564599_2571F0gL4i4CDbd1mLuDgayvmDzRLe3r.webp',
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
