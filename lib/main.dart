import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Dog Breeds'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(widget.title),
            elevation: 50,
            actions: [
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () => {},
              ),
            ],
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () => {},
            )),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              const Text(
                'click',
              ),
              Text(
                '$_counter' + "Dogs",
                style: Theme.of(context).textTheme.headline4,
              ),
              const Text("shpitz dogs"),
              Image.network(
                "https://envato-shoebox-0.imgix.net/38f5/6952-5188-4047-8750-1f259fbafc48/2015_034_022_375.jpg?auto=compress%2Cformat&fit=max&mark=https%3A%2F%2Felements-assets.envato.com%2Fstatic%2Fwatermark2.png&markalign=center%2Cmiddle&markalpha=18&w=900&s=b173dbb94809ba3ce08d9539c0630fb5",
                width: 200,
              ),
              ElevatedButton(
                  onPressed: () => {}, child: const Text("Click Breds")),
              RichText(
                text: TextSpan(
                    text: 'Click Breeds?       ',
                    style: TextStyle(color: Colors.black, fontSize: 25),
                    children: const <TextSpan>[
                      TextSpan(
                          text: 'Dogs',
                          style: TextStyle(color: Colors.blue, fontSize: 25)),
                    ]),
              ),
            ])));
    floatingActionButton:
    FloatingActionButton(
      onPressed: _incrementCounter,
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    );
    //
  }
}
