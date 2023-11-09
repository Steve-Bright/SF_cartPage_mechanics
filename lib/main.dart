import 'package:cart_testing/totalPriceArea.dart';
import 'package:flutter/material.dart';
import 'cart.dart';

void main() {
  runApp(CartPage());
}

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cart Page',
      home: Cart_Items(),
    );
  }
}

class Cart_Items extends StatefulWidget {
  const Cart_Items({super.key});

  @override
  State<Cart_Items> createState() => _Cart_ItemsState();
}

class _Cart_ItemsState extends State<Cart_Items> {
  int discount = 0;
  int total = 0;

  List<int> cartItems = [];
  List<int> cartPrices = [];
  List<int> cartQty = [];

  void addNewItem(){
    setState(() {
      cartItems.add(cartItems.length + 1);
      cartPrices.add(cartPrices.length+1);
    });
  }

  void removeCurrentItem(int item_index){
    setState((){
      cartItems.removeAt(item_index);
    });
  }

  void removeAllItems(){
    setState((){
      cartItems.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            actions: [
              IconButton(
                icon: Icon(Icons.add),
                onPressed: (){
                  addNewItem();
                }
              ),
              IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: (){
                    removeAllItems();
                  }
              )
            ]
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: ListView.builder(
                  itemCount: cartItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    total = total + 25*2;
                    return CartItemCard(
                      cartIndex: cartItems[index],
                      imageString: 'assets/jiji_cat.jpg',
                      productName: 'Product Name',
                      price: 25,
                      initialQuantity: 2,
                      onIncrease: () {
// Handle increase quantity
                      },
                      onDecrease: () {
// Handle decrease quantity
                      },
                      onRemove: () {
                        removeCurrentItem(index);
                      },
                    );

                  },
                ),
              ),
                Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.blue,
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                            Text(
                                'Discount: 4000 \n\n Total: $total',
                                style: TextStyle(color: Colors.white),
                                ),
                            ],
                        ),
                    ),
                )
          ]
        )

    );
  }
}



