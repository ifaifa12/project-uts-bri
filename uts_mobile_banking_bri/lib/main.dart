import 'package:flutter/material.dart';
import 'package:uts_mobile_banking_bri/uts_mobile_banking_bri.dart';

void main () {
  runApp(const MobileBankingApp());
}

class MobileBankingApp extends StatelessWidget {
  const MobileBankingApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}


    
       
      