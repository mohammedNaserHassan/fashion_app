import 'package:fashion_app/constants/constants.dart';
import 'package:flutter/material.dart';
class card extends StatelessWidget {
  var price;
  card(this.price);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: price==null?Center(child: Text('Zero Card'),):
      SafeArea(
        child: Center(
          child: Container(
            color: Colors.yellow.withOpacity(0.8),
            child: Row(
              children: [
                Text('The Total price is:',style: TextStyle(color: white,fontSize: 20),)
                ,Text('${price}'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
