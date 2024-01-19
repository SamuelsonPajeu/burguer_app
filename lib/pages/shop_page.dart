import 'package:burguer_shop/components/hamburguer_tile.dart';
import 'package:burguer_shop/models/hamburguer.dart';
import 'package:burguer_shop/models/hamburguer_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HamburguerShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              const Text(
                "How big is your hungry?",
                style: TextStyle(fontSize: 20.0),
              ),
              const SizedBox(height: 25.0),
              Expanded(
                  child: ListView.builder(
                      itemCount: value.hamburguerShop.length,
                      itemBuilder: (context, index) {
                        Hamburguer hamburguer = value.hamburguerShop[index];

                        return HamburguerTile(hamburguer: hamburguer);
                      }))
            ],
          ),
        ),
      ),
    );
  }
}
