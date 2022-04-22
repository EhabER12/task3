import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var t1 = TextEditingController();
  var t2 = TextEditingController();
  var obs = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
                'https://logowik.com/content/uploads/images/assassins-creed2820.jpg'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  controller: t1,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              width: 3,
                              color: Color.fromARGB(255, 90, 12, 12))),
                      hintText: 'Name',
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  obscureText: obs,
                  controller: t2,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              obs = !obs;
                            });
                          },
                          icon: const Icon(Icons.remove_red_eye)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                              width: 3,
                              color: Color.fromARGB(255, 90, 12, 12))),
                      hintText: 'Password',
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)))),
            ),
            Container(
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 150),
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          if (t1.text.isEmpty ||
                              RegExp(r'^[a-zA-Z]').hasMatch(t1.text)) {
                            print('Good');
                          }
                        });
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Color.fromARGB(255, 122, 24, 17),
                            fontWeight: FontWeight.bold),
                      )),
                ))
          ],
        ),
      ),
    );
  }
}
