import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final String id;
  final double price;
  final int quantity;
  final String title;

  const CartItem(
      {Key? key,
      required this.id,
      required this.title,
      required this.price,
      required this.quantity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 4,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: ListTile(
          leading: CircleAvatar(
            child: Padding(
              padding: EdgeInsets.all(5),
              child: FittedBox(
                  child: Text(
                '\$$price',
                style: const TextStyle(color: Colors.white),
              )),
            ),
            backgroundColor: Theme.of(context).colorScheme.primary,
          ),
          title: Text(title),
          subtitle: Text('Total: \$${(price * quantity)}'),
          trailing: Text('$quantity x '),
        ),
      ),
    );
  }
}
