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
            backgroundColor: Colors.yellow,
            titleTextStyle: TextStyle(
              color: Color.fromARGB(255, 31, 31, 31),
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
      routes: {
        '/coin': (context) => CryptoCoinScreen(),
      },
      home: const CryptoListScreen(),
    );
  }
}

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key});

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
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
          itemBuilder: (context, i) {
            const coinName = 'Bitcoin';
            return ListTile(
              leading: SvgPicture.asset(
                "images/svg/Bitcoin.svg",
                height: 30,
                width: 30,
              ),
              title: Text(
                coinName,
                style: theme.textTheme.bodyMedium,
              ),
              subtitle: Text(
                '40000\$',
                style: theme.textTheme.labelSmall,
              ),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.of(context).pushNamed(
                  '/coin',
                  arguments: coinName,
                );
              },
            );
          }),
    );
  }
}

class CryptoCoinScreen extends StatefulWidget {
  const CryptoCoinScreen({super.key});

  @override
  State<CryptoCoinScreen> createState() => _CryptoCoinScreenState();
}

class _CryptoCoinScreenState extends State<CryptoCoinScreen> {
  String? coinName;

  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;

    assert(args != null && args is String, 'You must provide String args');

    coinName = args as String;
    setState(() {});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(coinName ?? '...'),
      ),
    );
  }
}
