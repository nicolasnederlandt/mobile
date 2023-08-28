import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'property.dart';

class PropertyRow extends StatelessWidget {
  final Property property;

  const PropertyRow({Key? key, required this.property}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ListTile(
      leading: Text('State : ${property.state}', style: const TextStyle(backgroundColor: Colors.blueAccent, color: Colors.white)),
      title: Text('Type : ${property.type}'),
      subtitle: Text(
        ' Numbers : \n'
            'Superficy : ${property.superficy}\n'
            'Number of rooms : ${property.roomNumber}\n'
            'Price : ${property.price}'

      ),

    );
  }
}
