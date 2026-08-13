// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RawKeyboardDemo extends StatefulWidget {
  final String title;

  const RawKeyboardDemo({super.key, required this.title});

  @override
  State<RawKeyboardDemo> createState() => _HardwareKeyDemoState();
}

class _HardwareKeyDemoState extends State<RawKeyboardDemo> {
  final FocusNode _focusNode = FocusNode();
  KeyEvent? _event;

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  void _handleKeyEvent(KeyEvent event) {
    setState(() {
      _event = event;
    });
  }

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: KeyboardListener(
          focusNode: _focusNode,
          onKeyEvent: _handleKeyEvent,
          child: AnimatedBuilder(
            animation: _focusNode,
            builder: (BuildContext context, Widget? child) {
              if (!_focusNode.hasFocus) {
                return GestureDetector(
                  onTap: () {
                    FocusScope.of(context).requestFocus(_focusNode);
                  },
                  child: Text('Tap to focus', style: textTheme.headlineMedium),
                );
              }

              final KeyEvent? event = _event;
              if (event == null) {
                return Text(
                  'Press Volume key',
                  style: textTheme.headlineMedium,
                );
              }

              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('${event.runtimeType}', style: textTheme.titleMedium),
                  Text(
                    'logicalKey: ${event.logicalKey.debugName}',
                    style: textTheme.titleMedium,
                  ),
                  Text(
                    'physicalKey: ${event.physicalKey.debugName}',
                    style: textTheme.titleMedium,
                  ),
                  Text(
                    'keyId: 0x${event.logicalKey.keyId.toRadixString(16)}',
                    style: textTheme.titleMedium,
                  ),
                  Text(
                    'character: ${event.character ?? '-'}',
                    style: textTheme.titleMedium,
                  ),
                  Text(
                    'isControlPressed: '
                    '${HardwareKeyboard.instance.isControlPressed}',
                    style: textTheme.titleMedium,
                  ),
                  Text(
                    'isShiftPressed: '
                    '${HardwareKeyboard.instance.isShiftPressed}',
                    style: textTheme.titleMedium,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
