import 'package:flutter/material.dart';
import 'package:nftview/provider/nft_provider.dart';
import 'package:nftview/screen/nft_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => NFTProvider(),
        ),
      ],
      child: const MaterialApp(
        home: NFTScreen(),
      ),
    );
  }
}
