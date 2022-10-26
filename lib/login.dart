import 'package:flutter/material.dart';
import 'mainscreen.dart';

void main(){
  runApp(MaterialApp(home: HomePage(),));
}
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool viewenable = true;

  @override
  Widget build(BuildContext context) {
    Navigator.pop(context);

    return Scaffold(
        appBar: AppBar(
          title: const Text("LoginPage",),
          //centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "LoginPage",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon:  Icon(Icons.account_circle),
                      label: Text("UserName"),
                      hintText: "UserName must be your email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(80)),
                      )),
                ),
              ),
               Padding(
                padding: EdgeInsets.all(15.0),
                child: TextField(
                 // obscuringCharacter: "*",
                  obscureText: viewenable , // true
                  decoration:  InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: (){
                             setState(() {
                               if(viewenable){
                                 viewenable = false;
                               }else{
                                 viewenable = true;
                               }
                             });
                      }, icon: Icon(viewenable == true? Icons.visibility_off : Icons.visibility)),

                      prefixIcon: const Icon(Icons.password) ,
                      label: const Text("Password"),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: ElevatedButton(
                    onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MainScreen()));
                },
                    child: const Text("LOGIN")),
              ),
              TextButton(
                  onPressed: () { },
                  child: const Text("Not a User? Register Here!!!1"))
            ],
          ),
        ),
        );
  }
}
