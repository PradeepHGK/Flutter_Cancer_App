import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

class FAQScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: buildExpansionTile(index),
            );
          }),
    );
  }

  Card buildExpansionTile(int index) {
    return Card(
      borderOnForeground: true,
      color: Colors.orange[50],
      child: ExpansionTile(
        leading: Icon(Icons.question_answer),
        maintainState: true,
        initiallyExpanded: false,
        title: ListTile(
          selectedTileColor: Colors.orangeAccent,
          title: Text(
            "How to upload relavant document in profile page $index",
            overflow: TextOverflow.visible,
          ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(loremIpsum(paragraphs: 2)),
          )
        ],
      ),
    );
  }
}
