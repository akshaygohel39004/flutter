import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true, // IMPORTANT for latest buttons
      ),
      home: const ButtonDemoPage(),
    );
  }
}

class ButtonDemoPage extends StatelessWidget {
  const ButtonDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Buttons')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // TextButton
            TextButton(
              onPressed: () {},
              child: const Text('TextButton'),
            ),

            const SizedBox(height: 12),

            // ElevatedButton
            ElevatedButton(
              onPressed: () {},
              child: const Text('ElevatedButton'),
            ),

            const SizedBox(height: 12),

            // OutlinedButton
            OutlinedButton(
              onPressed: () {},
              child: const Text('OutlinedButton'),
            ),

            const SizedBox(height: 12),

            // FilledButton
            FilledButton(
              onPressed: () {},
              child: const Text('FilledButton'),
            ),

            const SizedBox(height: 12),

            // FilledButton.tonal
            FilledButton.tonal(
              onPressed: () {},
              child: const Text('FilledButton.tonal'),
            ),

            const Divider(height: 32),

            // IconButton
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite),
              tooltip: 'IconButton',
            ),

            const SizedBox(height: 12),

            // FloatingActionButton (normally placed in Scaffold)
            FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.add),
            ),

            const SizedBox(height: 24),

            // PopupMenuButton
            PopupMenuButton<String>(
              onSelected: (value) {},
              itemBuilder: (context) => const [
                PopupMenuItem(
                  value: 'edit',
                  child: Text('Edit'),
                ),
                PopupMenuItem(
                  value: 'delete',
                  child: Text('Delete'),
                ),
              ],
            ),

            const SizedBox(height: 12),

            // DropdownButton
            DropdownButton<String>(
              value: 'One',
              items: const [
                DropdownMenuItem(value: 'One', child: Text('One')),
                DropdownMenuItem(value: 'Two', child: Text('Two')),
              ],
              onChanged: (value) {},
            ),
          ],
        ),
      ),
    );
  }
}
