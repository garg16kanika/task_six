import 'package:flutter/material.dart';
import 'package:task_six/listItem.dart';
import 'package:task_six/wrap_widget_content.dart';
import './upper_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.25,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/bluebg.jpg'),
                              fit: BoxFit.cover),
                          gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [Color(0xFF8cb4fc), Color(0xFF5eace2)],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.15,
                      )
                    ],
                  ),
                  const UpperContainer(),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Text(
                  'Collections',
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: ListItem(),
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Tags',
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Wrap(
                  spacing: 12.0,
                  runSpacing: 8.0,
                  children: const <Widget>[
                    WrapContent(
                      title: 'Kurtas',
                      colorEnd: Colors.blue,
                      colorStart: Colors.lightBlueAccent,
                    ),
                    WrapContent(
                      title: 'Jackets',
                      colorEnd: Colors.purple,
                      colorStart: Colors.pinkAccent,
                    ),
                    WrapContent(
                      title: 'Lehenga',
                      colorEnd: Colors.pinkAccent,
                      colorStart: Colors.orangeAccent,
                    ),
                    WrapContent(
                      title: 'Salwar Suits',
                      colorEnd: Colors.pink,
                      colorStart: Colors.deepOrange,
                    ),
                    WrapContent(
                      title: 'Gowns',
                      colorEnd: Colors.green,
                      colorStart: Colors.lightBlueAccent,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
