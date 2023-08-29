import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemRow extends StatelessWidget {

  final post;

  const ItemRow({Key? key, required this.post}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return getSmallWidget();
  }

  Widget getBigWidget() {
    return Row(
      children: [
        //Image.network(post["url"] ?? "https://via.placeholder.com/600/51aa97"),
        Image.network("https://via.placeholder.com/600/51aa97"),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: ListTile(
              title: Text(post["title"] ?? "no title found"),
              subtitle: Text(post["id"].toString()),
            )
          )
        )
      ],
    );
  }

  Widget getSmallWidget() {
    return Row(
      children: [
        //Image.network(post["thumbnailUrl"] ?? "https://via.placeholder.com/600/51aa97", width: 100),
        Image.network("https://via.placeholder.com/600/51aa97", width: 100),
        Expanded(
          child: Padding(
             padding: const EdgeInsets.all(20),
             child: ListTile(
               title: Text(post["title"] ?? "no title found"),
               subtitle: Text(post["id"].toString()),
             ),

         )

        )
    ]
    );
  }
}
