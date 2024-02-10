import 'package:devtools_extensions/devtools_extensions.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ReduxDevToolsExtension());
}

class ReduxDevToolsExtension extends StatelessWidget {
  const ReduxDevToolsExtension({super.key});

  @override
  Widget build(BuildContext context) {
    return const DevToolsExtension(
      child: Placeholder(), // Build your extension here
    );
  }
}
