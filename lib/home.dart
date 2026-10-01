import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  List<Card> _buildGridCards(int count) {
    List<Card> cards = List.generate(count, (int index) {
      return Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 18.0 / 11.0,
              child: Icon(
                Icons.diamond_outlined,
                size: 80.0,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text('Title'),
                  SizedBox(height: 8.0),
                  Text('Secondary Text'),
                ],
              ),
            ),
          ],
        ),
      );
    });
    return cards;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu, semanticLabel: 'menu'),
          onPressed: () {
            print('Menu Button');
          },
        ),
        title: const Text('SHRINE'),

        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search, semanticLabel: 'Search'),
            onPressed: () {
              print('Search button');
            },
          ),
          IconButton(
            icon: const Icon(Icons.tune, semanticLabel: 'Filter'),
            onPressed: () {
              print('Filter Button');
            },
          ),
        ],
      ),

      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16.0),
        childAspectRatio: 8.0 / 9.0,
        children: _buildGridCards(10),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
