import 'package:flutter/material.dart';
import 'package:studio_6_layout_challenge/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Styles.generalTheme,
      home: const MyHomePage(
        title: 'Flutter Demo Home Page',
      ),
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
  Map<String, String> forecast = {
    "name": "today",
    "temperature": "35",
    "shortForecast": "Snowy",
    "detailedForecast": "Snowy all day",
    "windSpeed": "10",
    "windDirection": "SE",
    "isDaytime": "true",
    "probabilityOfPercipitation": "100"
  };

  Map<String, String> location = {
    "city": "Bend",
    "state": "Oregon",
    "zip": "97702"
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Studio 6"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Align(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Weather Forecaset\n${location["city"]!}, ${location["state"]!}, ${location["zip"]!}",
                  style: const TextStyle(fontSize: 18.0),
                ),
              ),
              mainCard(context),
              secondaryCard(context)
            ],
          ),
        ),
      ),
    );
  }

  SizedBox secondaryCard(BuildContext context) {
    return SizedBox(
      width: cardSize(context, 0.8),
      child: Card(
        shadowColor: Styles.backGroundDark,
        color: Styles.backGroundLight,
        surfaceTintColor: Styles.accentColor,
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "${forecast["detailedForecast"]!} with ${forecast["probabilityOfPercipitation"]!}% chance of precipitation",
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Winds: ${forecast["windSpeed"]!}mph, ${forecast["windDirection"]!}",
              ),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox mainCard(BuildContext context) {
    return SizedBox(
      width: cardSize(context, 0.8),
      height: cardSize(context, 0.8),
      child: Card(
        shadowColor: Styles.backGroundDark,
        elevation: 8.0,
        color: Styles.backGroundLight,
        surfaceTintColor: Styles.accentColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text(
                  capitalize(forecast["name"]!),
                  style: Styles.largeText,
                ),
                Text(
                  "${forecast["temperature"]!}\u2109",
                  style: Styles.giantText,
                ),
                Text(
                  forecast["shortForecast"]!,
                  style: Styles.largeText2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  double cardSize(BuildContext context, double widthFactor) {
    return MediaQuery.of(context).size.width * widthFactor;
  }
}

String capitalize(String s) {
  return s.isEmpty ? s : s[0].toUpperCase() + s.substring(1);
}
