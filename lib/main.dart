import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First Layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(title: "VICTOR'S FIRST LAYOUT"),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(child: Container(
              alignment: Alignment.center,
            ),
            ),
            Expanded(
             flex: 7,
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(child: Container(
              alignment: Alignment.center,
            ),
            ),
            Expanded(
              flex: 2,
              child:
              Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black, width: 2),
                boxShadow:[BoxShadow(color: const Color.fromARGB(255, 45, 44, 44), blurRadius: 20, offset: Offset(5, 10))]
              ), child:Text('OBJECT'),
            ),
            ),
            Expanded(child: Container(
              alignment: Alignment.center,
            ),
            ),
               ],
            ),
            ),
            Expanded(
              flex: 2,
             child: Container(
              alignment: Alignment.center,
            ),
            ),
          ],
        ),
      ),
    );
  }
}
