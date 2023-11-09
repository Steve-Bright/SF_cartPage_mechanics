import 'package:flutter/material.dart';

void main() => runApp(
    const Cart_Testing()
);

class Cart_Testing extends StatelessWidget {
  const Cart_Testing({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cart_Testing',
      home: Cart_Home(),
    );
  }
}

class Cart_Home extends StatefulWidget {
  const Cart_Home({super.key});

  @override
  State<Cart_Home> createState() => _Cart_HomeState();
}

class _Cart_HomeState extends State<Cart_Home> {
  int count = 0;

  void incrementValue(){
    setState(() {
      count = count + 1;
    });
  }

  void decrementValue(){
    setState(() {
      count = count - 1;
    });
  }



  @override
  Widget build(BuildContext context) {
    final List<Row> assetPaths = [
      Row(
          children: <Widget>[
            TextButton(
                onPressed: (){
                  decrementValue();
                },
                child: Text('minus')
            ),

            Text('Qty: $count'),

            TextButton(
                onPressed: (){
                  incrementValue();
                },
                child: Text('add')
            )
          ]
      ),
      Row(
          children: <Widget>[
            TextButton(
                onPressed: (){
                  decrementValue();
                },
                child: Text('minus')
            ),

            Text('Qty: $count'),

            TextButton(
                onPressed: (){
                  incrementValue();
                },
                child: Text('add')
            )
          ]
      ),
      Row(
          children: <Widget>[
            TextButton(
                onPressed: (){
                  decrementValue();
                },
                child: Text('minus')
            ),

            Text('Qty: $count'),

            TextButton(
                onPressed: (){
                  incrementValue();
                },
                child: Text('add')
            )
          ]
      ),
      Row(
          children: <Widget>[
            TextButton(
                onPressed: (){
                  decrementValue();
                },
                child: Text('minus')
            ),

            Text('Qty: $count'),

            TextButton(
                onPressed: (){
                  incrementValue();
                },
                child: Text('add')
            )
          ]
      ),
    ];

    return Scaffold(
        body: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: assetPaths.length,
            itemBuilder: (BuildContext context, int index){
              final assetPath = assetPaths[index];
              return Padding(
                padding: EdgeInsets.all(8.0),
                child:  assetPath,
                //fit: BoxFit.cover, //Adjust image fit

              );
            }
        )
    );
  }
}








