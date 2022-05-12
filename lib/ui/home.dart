import 'package:flutter/material.dart';
import 'package:material_design/ui/alphabets.dart';

import 'author_details.dart';
import 'details.dart';

class MyHomePage extends StatelessWidget {
  // final String title;
  final List alphabetList = Alphabet.getAlphabets();
  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: const Text('Alphabets'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: alphabetList.length,
        itemBuilder: (BuildContext context, index) =>
            alphabetCard(alphabetList[index], context),
      ),
    );
  }
}

Widget alphabetCard(Alphabet alphabet, BuildContext context) {
  return GestureDetector(
    child: Card(
      color: Colors.white,
      elevation: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(alphabet.letter),
          const Text('for'),
          Column(
            children: [
              CircleAvatar(
                radius: 35,
                backgroundColor: Colors.white,
                child: alphabetImage(alphabet.image),
              ),
              Text(alphabet.name),
            ],
          ),
        ],
      ),
    ),
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AlphabetDetails(
            alphabetName: alphabet.name,
            alphabet: alphabet,
          ),
        ),
      );
    },
  );
}

class AppDrawer extends StatelessWidget {
  final authorDetail = Author.getAuthor();

  AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final drawerHeader = UserAccountsDrawerHeader(
      decoration: const BoxDecoration(color: Color.fromARGB(255, 44, 14, 97)),
      accountName: Text(
        authorDetail.name,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      accountEmail: Text(
        authorDetail.email,
      ),
      currentAccountPicture: const CircleAvatar(
        backgroundColor: Colors.white,
        child: Icon(Icons.person),
      ),
    );
    final drawerItems = ListView(
      children: [
        drawerHeader,
        const ListTile(
          title: Text(
            'about Author',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
      ],
    );
    return Drawer(
      child: drawerItems,
      backgroundColor: Colors.deepPurple.shade500,
    );
  }
}

Widget alphabetImage(String imageUrl) {
  return Container(
    width: 100,
    height: 100,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      image: DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.cover),
    ),
  );
}
