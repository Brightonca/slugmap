import 'package:flutter/material.dart';
import 'pages/myHomePage.dart';

class MyHomePage2 extends StatefulWidget {
  MyHomePage2({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage2> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                width: 1600.0,
                height: 2000.0,
                child: Stack(
                  children: <Widget>[
                    Image.network(
                      'https://cdn.discordapp.com/attachments/1171694532165894235/1172714363606536222/Screenshot_2023-11-10_at_5.48.07_PM.png?ex=6561525c&is=654edd5c&hm=54b7d2ba2b2501ebea86d322a66e9dbfb38c0bf1dd81b37bd64a3590db301299&',
                      // fit: BoxFit.cover,
                      width: 1000.0,
                      height: 800.0,
                    ),
                  ],
                ),
              ),
            ], // children
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Chat',
        child: const Icon(Icons.message),
        onPressed: _openChat,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: _goToHome,
            ),
            IconButton(
              icon: const Icon(Icons.explore),
              onPressed: _goToExplore,
            ),
          ],
        ),
      ),
    );
  }

  void _openChat() {
    // Implement the action for opening the chat
    late String name;
    TextEditingController controller = TextEditingController();
    name = controller.text;
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => MyHomePage(name, title: 'Slug Map')));
    setState(() {});
  }

  void _goToHome() {
    // Implement the action for going to the home screen
    late String name;
    TextEditingController controller = TextEditingController();
    name = controller.text;
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => MyHomePage(name, title: 'Slug Map')));
    setState(() {});
  }

  void _goToExplore() {
    // Implement the action for going to the explore screen
    late String name;
    TextEditingController controller = TextEditingController();
    name = controller.text;
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => MyHomePage(name, title: 'Slug Map')));
    setState(() {});
  }
}
