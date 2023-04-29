import 'package:flutter/material.dart';
import 'package:myapp/screens/about.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  bool hidepass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text("Home Screen"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AboutScreen(),
                ),
              );
            },
            child: const Text("Go To About Screen"),
          ),
          const SizedBox(
            height: 20,
          ),
          Image.asset("assets/download.png"),
          Image.network(
              "data:image/png;base64,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"),
          TextField(
            obscureText: hidepass,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.person),
              suffixIcon: Icon(Icons.remove_red_eye),
              border: OutlineInputBorder(),
              labelText: 'Password',
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text("Hello i am textButton!"),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            // DrawerHeader(
            //   decoration: BoxDecoration(color: Colors.teal),
            //   child: Text("Drawer Header"),
            // )
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://avatars.githubusercontent.com/u/62741318?v=4"),
              ),
              accountName: Text("Codewithowais"),
              accountEmail: Text("codewithowais@gmail.com"),
            )
          ],
        ),
      ),
    );
  }
}
