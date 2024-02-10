import 'package:devtools_extensions/devtools_extensions.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class ReduxDevToolsExtension extends StatelessWidget {
  const ReduxDevToolsExtension({super.key});

  @override
  Widget build(BuildContext context) {
    return const DevToolsExtension(
      child: HomePage(),
    );
  }
}
