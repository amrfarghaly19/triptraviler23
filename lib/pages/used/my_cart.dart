import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CartPage extends StatelessWidget {
  final String Token;

  CartPage({required this.Token});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F6F0),
      extendBody: true,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Your Cart'),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('cart')
            .doc(Token)
            .collection('carts')
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          final items = snapshot.data!.docs;

          if (items.isEmpty) {
            return Center(child: Text('Your cart is empty.'));
          }

          return ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index].data() as Map<String, dynamic>;
              return CartItemTile(
                item: item,
                userId: Token,
                docId: items[index].id,
              );
            },
          );
        },
      ),
    );
  }
}

class CartItemTile extends StatelessWidget {
  final Map<String, dynamic> item;
  final String userId;
  final String docId;

  CartItemTile({
    required this.item,
    required this.userId,
    required this.docId,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: ListTile(
        leading: Image.network(item['photo'], fit: BoxFit.cover, width: 50, height: 50),
        title: Text(item['locationName']),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Date: ${item['date'].toDate().toLocal().toString().split(' ')[0]}'),
            Text('Price: \$${item['price']}'),
            Text('Guests: ${item['guestNumber']}'),
          ],
        ),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: () async {
            await FirebaseFirestore.instance
                .collection('cart')
                .doc(userId)
                .collection('items')
                .doc(docId)
                .delete();
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Item removed from cart')));
          },
        ),
      ),
    );
  }
}
