import 'package:flutter/material.dart';
import '../models/event.dart';
import 'event_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isFriends = true; // false = Home, true = Amici

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: mockEvents.length,
          itemBuilder: (context, index) {
            final e = mockEvents[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => EventDetailScreen(event: e)),
                );
              },
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(e.image, fit: BoxFit.cover),
                  Container(color: Colors.black38),
                  Positioned(
                    bottom: 80,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(e.title,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.bold)),
                        SizedBox(height: 8),
                        Text(e.subtitle,
                            style:
                                TextStyle(color: Colors.white70, fontSize: 18)),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),

        // 🔥 BARRA IN ALTO: "Per te" / "Amici"
        Positioned(
          top: 45,
          left: 0,
          right: 0,
          child: Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () => setState(() => isFriends = false),
                    child: Text(
                      "Amici   ",
                      style: TextStyle(
                        color: !isFriends ? Colors.white : Colors.white60,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => setState(() => isFriends = true),
                    child: Text(
                      "Home",
                      style: TextStyle(
                        color: isFriends ? Colors.white : Colors.white60,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
