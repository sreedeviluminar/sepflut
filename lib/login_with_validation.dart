import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sepflut/mainscreen.dart';

class LoginValidation extends StatelessWidget {

  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: Center(
                  child: Text(
                "Login Page",
                style: TextStyle(fontSize: 40),
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: "UserName",
                    border: OutlineInputBorder()
                ),
                validator: (text) {
                  if(text!.isEmpty || !(text.contains('@') )){
                       return 'Enter a valid email address';
                } else{
                     return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder()
                ),
                validator:(text){
                   if(text!.length < 6 || text.isEmpty){
                     return 'Password  length should be greater than 6 / should not be null';
                   }else{
                     return null;
                   }
                } ,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(onPressed: () {
                final isValid = formkey.currentState!.validate();
                if(isValid){
                  Navigator.push(context, MaterialPageRoute(builder:(context) =>MainScreen() ));
                }else{
                  print("invalid data");
                }
              }, child: Text("Login")),
            )
          ],
        ),
      ),
    );
  }
}
