// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'package:flutter/material.dart';

class ProgressButton extends StatefulWidget {
  const ProgressButton({super.key, required this.title});

  final String title;

  @override
  _ProgressButtonState createState() => _ProgressButtonState();
}

class _ProgressButtonState extends State<ProgressButton>
    with TickerProviderStateMixin {
  int _state = 0;
  late Animation<double> _animation;
  AnimationController? _controller;
  Timer? _timer;
  final GlobalKey _globalKey = GlobalKey();
  double _width = double.infinity;

  @override
  void dispose() {
    _timer?.cancel();
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: PhysicalModel(
          elevation: 8.0,
          shadowColor: Colors.lightGreenAccent,
          color: Colors.lightGreen,
          borderRadius: BorderRadius.circular(25.0),
          child: SizedBox(
            key: _globalKey,
            height: 48.0,
            width: _width,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero,
                elevation: 4.0,
                backgroundColor: Colors.lightGreen,
              ),
              onPressed: () {
                setState(() {
                  if (_state == 0) {
                    animateButton();
                  }
                });
              },
              child: setUpButtonChild(),
            ),
          ),
        ),
      ),
    );
  }

  ///
  /// Set up the child widget for the RaisedButton
  ///
  Widget setUpButtonChild() {
    if (_state == 0) {
      return const Text(
        "Click Here",
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.0,
        ),
      );
    } else if (_state == 1) {
      return const CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
      );
    } else {
      return const Icon(Icons.check, color: Colors.white);
    }
  }

  void animateButton() {
    final double initialWidth = _globalKey.currentContext!.size!.width;

    final AnimationController controller = AnimationController(
        duration: const Duration(milliseconds: 300), vsync: this);
    _controller = controller;
    _animation = Tween(begin: 0.0, end: 1.0).animate(controller)
      ..addListener(() {
        if (!mounted) return;
        setState(() {
          _width = initialWidth - ((initialWidth - 48.0) * _animation.value);
        });
      });
    controller.forward();

    setState(() {
      _state = 1;
    });

    _timer = Timer(const Duration(milliseconds: 3300), () {
      if (!mounted) return;
      setState(() {
        _state = 2;
      });
    });
  }
}
