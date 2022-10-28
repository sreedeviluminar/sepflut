import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: MainScreen(),));
}
class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("ListView"),
      ),
      body: ListView(
        children:  [
          const SizedBox(
            height: 10,
          ),
          const Center(
              child: Text(
            "MY Contacts",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          )),
          const SizedBox(
            height: 10,
          ),
          Card(
            child: ListTile(
              title: const Text("Name"),
              //tileColor: Colors.grey,
              subtitle: const Text("7876453454"),
              trailing: Wrap(
                children: const [
                  Icon(Icons.sms_sharp,color: Colors.blue),
                  SizedBox(width: 30,),
                  Icon(Icons.phone,color: Colors.blue),
                ],
              ),
              leading: const CircleAvatar(
                radius:50,
                backgroundImage: NetworkImage(
                    "https://image.shutterstock.com/image-photo/head-shot-portrait-close-smiling-260nw-1714666150.jpg"),
              ),
              //onTap: ,
            ),
          ),
           const Card(
             child: ListTile(
              title: Text("Name"),
              //tileColor: Colors.grey,
              subtitle: Text("7876453454"),
              trailing: Icon(Icons.phone,color: Colors.blue),
              leading: CircleAvatar(
                radius:50,
                backgroundImage: NetworkImage(
                    "https://image.shutterstock.com/image-photo/head-shot-portrait-close-smiling-260nw-1714666150.jpg"),
              ),
              //onTap: ,
          ),
           ),
         const Card(
            child:  ListTile(
              title: Text("Name"),
              //tileColor: Colors.grey,
              subtitle: Text("7876453454"),
              trailing: Icon(Icons.phone,color: Colors.blue),
              leading: CircleAvatar(
                radius:50,
                backgroundImage: NetworkImage(
                    "https://image.shutterstock.com/image-photo/head-shot-portrait-close-smiling-260nw-1714666150.jpg"),
              ),
              //onTap: ,
            ),
          ),
        ],
      ),
    );
  }
}
