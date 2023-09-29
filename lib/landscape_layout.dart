
  import 'package:flutter/material.dart';

buildLandscapeLayout() {
    return Row(
      children: <Widget>[
        const Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 150,
              backgroundImage: NetworkImage(
                  "https://cdn.pixabay.com/photo/2017/07/24/19/57/tiger-2535888_1280.jpg"),
            )
          ],
        )),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("John Doe"),
              const SizedBox(height: 10),
              const Text(
                  "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,molestiae quas"),
              const SizedBox(height: 5),
              Expanded(
                child: GridView.builder(
                    itemCount: 20,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 20, crossAxisCount: 3),
                    itemBuilder: (context, index) => Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2017/07/24/19/57/tiger-2535888_1280.jpg"))),
                        )),
              ),
            ],
          ),
        ))
      ],
    );
  }