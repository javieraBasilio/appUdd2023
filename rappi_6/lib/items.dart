import 'package:flutter/material.dart';

class CardAlimentos extends StatelessWidget {
  const CardAlimentos({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 50,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/rappi_itau.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 48,
            child: Container(
              margin: const EdgeInsets.only(top: 12),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0, top: 8.0),
                    child: Text(
                      'Descripción',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(100, 8, 12, 8),
                    child: Container(
                      width: 30,
                      height: 16,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(244, 174, 9, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
