import 'package:flutter/material.dart';
import 'package:tiko/widgets/gap.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.deepOrange,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Widget 1',style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.w700),),
            CustomGap(20),
            Text('Widget 2',style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.w700),),
          ],
        ),
      ),
    );
  }
}
