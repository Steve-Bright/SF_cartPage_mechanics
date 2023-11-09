import 'package:flutter/material.dart';

class TotalPrice_Area extends StatefulWidget {
  const TotalPrice_Area({super.key});

  @override
  State<TotalPrice_Area> createState() => _TotalPrice_AreaState();
}

class _TotalPrice_AreaState extends State<TotalPrice_Area> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                'Discount: 4000 \n\n Total: 40000',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      );
  }
}
