import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  const PostItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 30,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, mainAxisSpacing: 5, crossAxisSpacing: 5),
        itemBuilder: (context, index) => Image.network(
              "https://picsum.photos/id/${index + 10}/300",
              fit: BoxFit.cover,
            ));
  }
}
