import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: const Text(
                "Greeting App",
              ),
            ),
            body: Center(
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Hello, World!',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  const Text(
                    'Welcome to Flutter!',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  const Image(image: AssetImage('assets/img.png'),
                    width: 200,
                    height: 200,),
                  ElevatedButton(
                      onPressed: (){
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Button Pressed!')),
                        );
                      },
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.green),
                  ),
                      child: const Text(
                        'Press Me'
                      ),),
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}
