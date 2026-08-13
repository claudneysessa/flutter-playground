// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class AppBarExample extends StatelessWidget {
  const AppBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Default Appbar"),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          ///App bar with background color
          Container(
            margin: const EdgeInsets.only(top: 16.0, bottom: 16.0),
            child: AppBar(
              title: const Text("Title"),
              backgroundColor: Colors.orange,
              elevation: 4.0,
            ),
          ),

          ///App bar with Action items
          Container(
            margin: const EdgeInsets.only(bottom: 16.0),
            child: AppBar(
              title: const Text("Appbar actions"),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.settings),
                  onPressed: () {},
                ),
              ],
            ),
          ),

          ///Center text
          Container(
            margin: const EdgeInsets.only(bottom: 16.0),
            child: AppBar(
              title: const Text("Center"),
              centerTitle: true,
            ),
          ),

          ///IconTheme for the app bar
          Container(
            margin: const EdgeInsets.only(bottom: 16.0),
            child: AppBar(
              title: const Text("Appbar Icon and Text Theme"),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.settings),
                  onPressed: () {},
                ),
              ],
              iconTheme: const IconThemeData(
                color: Colors.black,
              ),
              titleTextStyle: const TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          ///App bar with the title and subtitle
          Container(
            margin: const EdgeInsets.only(bottom: 16.0),
            child: AppBar(
              title: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "Title",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  Text(
                    "subtitle",
                    style: TextStyle(fontSize: 14.0),
                  ),
                ],
              ),
            ),
          ),

          ///App bar with the title and and icon/image at start
          Container(
            margin: const EdgeInsets.only(bottom: 16.0),
            child: AppBar(
              backgroundColor: Colors.orangeAccent,
              title: const Row(
                children: <Widget>[
                  FlutterLogo(),
                  Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Text(
                      "Title with image",
                    ),
                  ),
                ],
              ),
            ),
          ),

          ///App Bar with transparent background
          Container(
            margin: const EdgeInsets.only(bottom: 16.0),
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              iconTheme: const IconThemeData(color: Colors.black),
              title: const Text(
                "Transparent AppBar",
                style: TextStyle(color: Colors.black),
              ),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
