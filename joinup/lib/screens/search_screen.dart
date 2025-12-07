import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 200), () {
      FocusScope.of(context).requestFocus(FocusNode());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          autofocus: true,
          controller: controller,
          decoration: InputDecoration(
            hintText: "Cerca attività...",
            border: InputBorder.none,
          ),
        ),
      ),
      body: Center(
        child: Text("Risultati ricerca qui...",
            style: TextStyle(color: Colors.white70)),
      ),
    );
  }
}
