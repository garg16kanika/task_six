import 'package:flutter/material.dart';

class UpperContainer extends StatelessWidget {
  const UpperContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          margin: const EdgeInsets.all(20),
          height: MediaQuery.of(context).size.height * 0.3,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.white70),
        ),
        Column(
          children: [
            CircleAvatar(
              radius: MediaQuery.of(context).size.width * 0.18,
              backgroundImage: const AssetImage('assets/girl.jpg'),
            ),
            Column(
              children: const [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Text(
                    'Maraia Elliott',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'NEW YORK',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Column(
                      children: const [
                        Text(
                          'PURCHASED',
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        Text(
                          '120',
                          style: TextStyle(fontSize: 30, color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: const [
                        Text(
                          'WISHED',
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        Text(
                          '271',
                          style: TextStyle(fontSize: 30, color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: const [
                        Text(
                          'LIKES',
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        Text(
                          '12K',
                          style: TextStyle(fontSize: 30, color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
