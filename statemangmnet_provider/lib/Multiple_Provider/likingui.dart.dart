import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'likingprovider.dart';

class LikingUi extends StatefulWidget {
  const LikingUi({super.key});

  @override
  State<LikingUi> createState() => _LikingUiState();
}

class _LikingUiState extends State<LikingUi> {
  @override
  Widget build(BuildContext context) {
    print("All widgets are repeatly re-runing");
    return Scaffold(
      appBar: AppBar(
        title: Text("LikingApp Provider"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return Consumer<LikingProvider>(
                      builder: (context, value, child) {
                    return ListTile(
                      onTap: () {
                        value.liking(index);
                      },
                      title: Text("Heart  :$index"),
                      trailing: Icon(value.EmptyList.contains(index)
                          ? Icons.favorite
                          : Icons.favorite_border_outlined),
                    );
                  });
                }),
          )
        ],
      ),
    );
  }
}
