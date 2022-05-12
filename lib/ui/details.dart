import 'package:flutter/material.dart';

import 'alphabets.dart';

class AlphabetDetails extends StatelessWidget {
  final String alphabetName;
  final Alphabet alphabet;
  const AlphabetDetails(
      {Key? key, required this.alphabetName, required this.alphabet})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(alphabetName),
      ),
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(alphabet.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                alphabet.description,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
