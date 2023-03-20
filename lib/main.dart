
import 'package:flipkart_clone/splash.dart';
import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Flipkart()));

class Flipkart extends StatefulWidget {
  const Flipkart({Key? key}) : super(key: key);

  @override
  State<Flipkart> createState() => _FlipkartState();
}

class _FlipkartState extends State<Flipkart> {
  @override
  Widget build(BuildContext context) {
    return Splesh();
  }
}
