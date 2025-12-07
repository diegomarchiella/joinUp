import 'package:flutter/material.dart';
import '../models/event.dart';
import 'event_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
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
    );
  }
}
