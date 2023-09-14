import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.red, Colors.yellow])),
        ),
        Container(
            width: 110,
            height: 110,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                image: DecorationImage(
                    image: NetworkImage("https://picsum.photos/200/300"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(60),
                border: Border.all(color: Colors.white, width: 3))),
      ],
    );
  }
}
