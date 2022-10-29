import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemangmnet_provider/Provider/countprovider.dart';
import 'package:statemangmnet_provider/Screen/countscreen.dart';

import 'Multiple_Provider/likingprovider.dart';
import 'Multiple_Provider/likingui.dart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => LikingProvider(),
        )
      ],
      child: MaterialApp(
        title: "Home",
        home: const LikingUi(),
      ),
    );
  }
}
