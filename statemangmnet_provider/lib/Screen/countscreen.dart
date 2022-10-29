import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemangmnet_provider/Provider/countprovider.dart';

class CountScreen extends StatefulWidget {
  const CountScreen({super.key});

  @override
  State<CountScreen> createState() => _CountScreenState();
}

class _CountScreenState extends State<CountScreen> {
  @override
  Widget build(BuildContext context) {
    print("build");
    final countProvider = Provider.of<ProviderCount>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Power Of Provider"),
      ),
      body: Consumer<ProviderCount>(
        builder: (context, value, child) {
          CrossAxisAlignment.center;
          return Center(
            child: Text(
              countProvider.count.toString(),
              style: const TextStyle(fontSize: 45),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countProvider.setCount();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
