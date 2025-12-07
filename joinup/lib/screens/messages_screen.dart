import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Messaggi")),
      body: ListView(
        children: [
          ListTile(
            title: Text("Chat Evento X"),
            subtitle: Text("Ultimo messaggio..."),
            onTap: () {},
          ),
          ListTile(
            title: Text("Chat Evento Y"),
            subtitle: Text("Ultimo messaggio..."),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
