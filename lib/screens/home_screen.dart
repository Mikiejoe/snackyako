import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade600,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 24, left: 12, right: 12),
            child: Row(children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(20)),
              ),
              const SizedBox(
                width: 10,
              ),
              const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Good Morning',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      'Michael Joseph',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ])
            ]),
          ),
          const SizedBox(height: 20),
          Container(
              // height: 20,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
              margin: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white12),
              child: const Row(children: [
                Expanded(
                  child: TextField(
                    cursorColor: Colors.white54,
                    decoration: InputDecoration(
                        hintText: "eg 'pizza'",
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.white54)),
                  ),
                ),
                Icon(Icons.search_outlined, color: Colors.white),
              ])),
          Container(
              color: Colors.white,
              child: Stack(
                children: [
                  Positioned(
                      child: Container(
                          color: Colors.amber, height: 100, width: 100)),
                  const Column(
                    children: [
                      Text('dfghjk'),
                      Text('dfghjk'),
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}
