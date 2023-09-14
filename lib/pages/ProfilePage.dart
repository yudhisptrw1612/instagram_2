import 'package:flutter/material.dart';
import '../widgets/ProfilePicture.dart';
import '../widgets/InfoItem.dart';
import '../widgets/TabItem.dart';
import '../widgets/HighlightItem.dart';
import '../widgets/PostItem.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text(
              "yudhisptrw",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_box_outlined),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
            color: Colors.black,
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                ProfilePicture(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InfoItem("Posts", "30"),
                      InfoItem("Followers", "1231"),
                      InfoItem("Following", "1340"),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "yudhisptrw",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: RichText(
                  text: TextSpan(
                      style: TextStyle(color: Colors.black),
                      text:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor. ",
                      children: [
                    TextSpan(
                        style: TextStyle(color: Colors.blue), text: "#hastag")
                  ]))),
          SizedBox(
            height: 5,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Link Goes Here",
                style: TextStyle(color: Colors.blue),
              )),
          SizedBox(
            height: 5,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ))),
          SizedBox(
            height: 5,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    HighlightItem("Highlight 1", "123"),
                    HighlightItem("Highlight 2", "132"),
                    HighlightItem("Highlight 3", "2"),
                    HighlightItem("Highlight 4", "222"),
                    HighlightItem("Highlight 4", "12"),
                    HighlightItem("Highlight 4", "23"),
                  ],
                ),
              )),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TabItem(true, Icons.grid_on_outlined),
              TabItem(false, Icons.person_pin_outlined)
            ],
          ),
          PostItem()
        ],
      ),
    );
  }
}
