import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider_file.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
  return Consumer<Counter>(builder:(Context,value,child )=>  Scaffold(
    appBar: AppBar(
      backgroundColor: Theme.of(context).colorScheme.primary,

      title: Text(widget.title),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text("pressed the button"),
          Text(
            value.count.toString(),
            style: Theme.of(context).textTheme.headlineMedium,
          )
        ],
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed:() {
        final counter = context.read
        <Counter>();
            counter.increment();

      },
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    ),)
  );
  }
}
