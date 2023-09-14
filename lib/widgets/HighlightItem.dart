import 'package:flutter/material.dart';

class HighlightItem extends StatelessWidget {
  HighlightItem(this.title, this.id);

  final String title;
  final String id;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey[300]),
              ),
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: Colors.white, width: 5),
                    color: Colors.grey[300],
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://picsum.photos/id/$id/200/300"))),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(title)
        ],
      ),
    );
  }
}
