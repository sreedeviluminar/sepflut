import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyList"),
      ),
      body: ListView(
        children: [
          const SizedBox /**/ (
            height: 20,
          ),
          const Center(
              child: Text(
            "List of Fruits",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          )),

          const ListTile(
            title: Text("Deepesh "),
            subtitle: Text("0987657654"),
            leading: CircleAvatar(backgroundImage: NetworkImage("https://post.healthline.com/wp-content/uploads/2021/05/mango-bowl-fruit-1296x728-body.jpg")),
            trailing: Icon(Icons.phone),
          ),
          ListTile(
            title: const Text("Fruits1 "),
            subtitle: const Text("Fruits are Yummy"),
            leading: Image.asset("assets/images/food.png"),
          ),
          ListTile(
            title: const Text("Fruits1 "),
            subtitle: const Text("Fruits are Yummy"),
            leading: Image.asset("assets/images/food.png"),
          ),
          Divider(thickness: 2,color: Colors.pink,),
          ListTile(
            title: const Text("Fruits1 "),
            subtitle: const Text("Fruits are Yummy"),
            leading: Image.asset("assets/images/food.png"),
          ),
        ],
      ),
    );
  }
}
