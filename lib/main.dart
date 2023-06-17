import 'package:flutter/material.dart';

void main() {
  runApp(const Website());
}

class Website extends StatelessWidget {
  const Website({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'tkncl',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
          useMaterial3: true,
        ),
        home: const HomePage(title: 'tkncl'),
      );
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomePage> {
  void _onFabClick() => setState(() {});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('...'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onFabClick,
        child: const Icon(Icons.add),
      ),
    );
  }
}
