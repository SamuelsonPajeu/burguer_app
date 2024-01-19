import 'package:burguer_shop/models/hamburguer.dart';
import 'package:flutter/material.dart';

class HamburguerTile extends StatelessWidget {
  final Hamburguer hamburguer;
  const HamburguerTile({
    super.key,
    required this.hamburguer,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onBackground,
      ),
      margin: const EdgeInsets.only(bottom: 10.0),
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
      child: ListTile(
        dense: true,
        title: Text(
          hamburguer.name,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18.0,
          ),
        ),
        subtitle: Text("R\$ ${hamburguer.price}"),
        // leading: const Icon(Icons.add),
        trailing: Image.asset(hamburguer.imagePath),
      ),
    );
  }
}
