import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(TasbihApp());
}

class TasbihApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'سبحة إلكترونية',
      theme: ThemeData(
        primaryColor: Colors.teal,
        textTheme: GoogleFonts.cairoTextTheme(Theme.of(context).textTheme), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.amber),
      ),
      home: TasbihHomePage(),
    );
  }
}

class TasbihHomePage extends StatefulWidget {
  @override
  _TasbihHomePageState createState() => _TasbihHomePageState();
}

class _TasbihHomePageState extends State<TasbihHomePage> {
  int count = 0;

  void incrementCounter() {
    setState(() {
      count++;
    });
  }

  void resetCounter() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('سبحة إلكترونية', style: TextStyle(fontSize: 24)),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.teal[100]!, Colors.teal[300]!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'عدد التسبيحات:',
                style: TextStyle(fontSize: 24, color: Colors.teal[800]),
              ),
              SizedBox(height: 10),
              Text(
                '$count',
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.teal[900]),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: incrementCounter,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  textStyle: TextStyle(fontSize: 20),
                ),
                child: Text('تسبيح',style: TextStyle(color: Colors.teal[900]),),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: resetCounter,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 16, 162, 50),
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  textStyle: TextStyle(fontSize: 20),
                ),
                child: Text('إعادة تعيين',style: TextStyle(color: Colors.teal[900]),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
