import 'package:flutter/material.dart';

Widget buildAppBar(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      OutlinedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: OutlinedButton.styleFrom(
              minimumSize: Size(60, 60),
              backgroundColor: Colors.grey[200],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          child: Icon(Icons.arrow_back)),
      CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage(
            "https://www.google.com/url?sa=i&url=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Fguy&psig=AOvVaw29uLw7Lsj9Dil3EtUpZxPz&ust=1705148157971000&source=images&cd=vfe&ved=0CBMQjRxqFwoTCKC5-YTq14MDFQAAAAAdAAAAABAE"),
      ),
    ],
  );
}
