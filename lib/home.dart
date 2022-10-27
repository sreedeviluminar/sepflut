import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Page"),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Center(
              child: Text(
            "List of Fruits",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
          const ListTile(
            title: Text("Rainu"),
            subtitle: Text("0987765428"),
            leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80")),
            trailing: Icon(Icons.phone),
          ),
          const SizedBox(
            height: 20,
          ),
          ListTile(
            title: const Text("Fruit 1"),
            subtitle: Text("Fruits are Yummy"),
            leading: Image.asset("assets/images/food.png"),
            trailing: Icon(Icons.navigate_next),
          ),
          ListTile(
            title: const Text("Fruit 1"),
            subtitle: Text("Fruits are Yummy"),
            leading: Image.asset("assets/images/food.png"),
            trailing: Icon(Icons.navigate_next),
          ),
          ListTile(
            title: const Text("Fruit 1"),
            subtitle: Text("Fruits are Yummy"),
            leading: Image.asset("assets/images/food.png"),
            trailing: Icon(Icons.navigate_next),
          ),
        ],
      ),
    );
  }
}
