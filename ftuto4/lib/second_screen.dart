import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondeScreen extends StatelessWidget {
  const SecondeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final nbClicks = ModalRoute.of(context)!.settings.arguments as int;

    return Scaffold(
      appBar: AppBar(
          title: const Text("Second screen"),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),

      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("Hello from second screen"),
            const SizedBox(height: 16.0),
            Text("There were $nbClicks clicks in the first page"),
          ],
        ),
      ),
    );
    }
}
