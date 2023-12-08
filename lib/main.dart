import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto Coins List',
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(255, 31, 31, 31),
          primarySwatch: Colors.yellow,
          dividerColor: Colors.white12,
          appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromARGB(255, 26, 26, 26),
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
            centerTitle: true,
          ),
          listTileTheme: const ListTileThemeData(
            iconColor: Colors.white,
          ),
          textTheme: TextTheme(
              bodyMedium: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
              labelSmall: TextStyle(
                color: Colors.white.withOpacity(0.5),
                fontWeight: FontWeight.w700,
                fontSize: 14,
              ))),
      home: const MyHomePage(title: 'Crypto Coins List'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

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
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Crypto Currencies List"),
      ),
      body: ListView.separated(
        itemCount: 10,
        separatorBuilder: (context, index) => Divider(
          color: theme.dividerColor,
        ),
        itemBuilder: (context, i) => ListTile(
          leading: SvgPicture.asset(
            "images/svg/Bitcoin.svg",
            height: 30,
            width: 30,
          ),
          title: Text(
            "Bitcoin",
            style: theme.textTheme.bodyMedium,
          ),
          subtitle: Text(
            '40000\$',
            style: theme.textTheme.labelSmall,
          ),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}
