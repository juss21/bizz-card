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
      title: 'Bizz-Card',
      theme: ThemeData(
        // This is the theme of your application. Set appbar color
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      //Set Appbar title
      home: const MyHomePage(title: 'BizzCard'),
    );
  }
}

class Info extends StatelessWidget {
  final String inputString;

  const Info(this.inputString);

  @override
  Widget build(BuildContext context) {
    return Text(
      inputString,
      style: const TextStyle(fontSize: 20),
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
  //Set personal information string with font size 20
  Info age = const Info("23 years old");
  Info email = const Info("jussmartson21@gmail.com");
  Info tel = const Info("+372 56990615");
  Info extra = const Info("Waiting for your call ;)");


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Profile picture
            const CircleAvatar(
              radius: 48,
              backgroundImage: NetworkImage(
                  'https://01.kood.tech/git/avatars/565c6475af5a57a5ef5202227c288f5f?size=870'),
            ),
            Container(
              padding: const EdgeInsets.all(30.0),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius:
                    BorderRadius.circular(10.0), // Adjust the radius as needed
              ),
              
              // Set the background color here
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // First and Last name
                  const Text(
                    'Juss Märtson',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  age,
                  email,
                  tel,
                  extra,
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
