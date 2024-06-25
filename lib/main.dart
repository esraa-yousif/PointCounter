import 'package:flutter/material.dart';

void main() {
  runApp(const PointCounter());
}

class PointCounter extends StatefulWidget {
  const PointCounter({super.key});

  @override
  State<PointCounter> createState() => _PointCounterState();
}

class _PointCounterState extends State<PointCounter> {
  int teamAPointer = 0;

  int teamBPointer = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('Point Counter'),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      'Team A',
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      '$teamAPointer',
                      style: const TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          minimumSize: const Size(150, 50)),
                      onPressed: () {
                        setState(() {
                          teamAPointer++;
                        });
                      },
                      child: const Text(
                        'Add 1 point',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          minimumSize: const Size(150, 50)),
                      onPressed: () {
                        setState(() {
                          teamAPointer += 2;
                        });
                      },
                      child: const Text(
                        'Add 2 point',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          minimumSize: const Size(150, 50)),
                      onPressed: () {
                        setState(() {
                          teamAPointer += 3;
                        });
                      },
                      child: const Text(
                        'Add 3 point',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                    height: 380,
                    child: VerticalDivider(thickness: 1, color: Colors.grey)),
                Column(
                  children: [
                    const Text(
                      'Team B',
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      '$teamBPointer',
                      style: const TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          minimumSize: const Size(150, 50)),
                      onPressed: () {
                        setState(() {
                          teamBPointer++;
                        });
                      },
                      child: const Text(
                        'Add 1 point',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          minimumSize: const Size(150, 50)),
                      onPressed: () {
                        setState(() {
                          teamBPointer += 2;
                        });
                      },
                      child: const Text(
                        'Add 2 point',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          minimumSize: const Size(150, 50)),
                      onPressed: () {
                        setState(() {
                          teamBPointer += 3;
                        });
                      },
                      child: const Text(
                        'Add 3 point',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(
              flex: 1,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.green, minimumSize: const Size(150, 50)),
              onPressed: () {
                setState(() {
                  teamAPointer = 0;
                  teamBPointer = 0;
                });
              },
              child: const Text(
                'Reset',
                style: TextStyle(fontSize: 15),
              ),
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
