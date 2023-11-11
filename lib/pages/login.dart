import 'package:flutter/material.dart';
import 'package:slugmap/myHomePage.dart';
// import 'package:slugmap/pages/myHomePage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Hello world!")), body: const Body());
  }
}

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late String name;
  TextEditingController controller = TextEditingController();

  void click() {
    name = controller.text;
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => MyHomePage2(title: 'Slug Map')));
  }

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person),
                  labelText: "Type Your Name:",
                  border: const OutlineInputBorder(
                      borderSide: BorderSide(width: 5, color: Colors.black)),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.done),
                    splashColor: Colors.blue,
                    tooltip: "Submit",
                    onPressed: click,
                  ),
                ))));
  }
}
