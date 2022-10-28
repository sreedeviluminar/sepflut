import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'login.dart';

void main(){
  runApp(MaterialApp(home: Register(),));
}
class Register extends StatelessWidget {

  var formkey = GlobalKey<FormState>();
  TextEditingController pass   = TextEditingController();
  TextEditingController cpass  = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("REGISTRATION PAGE"),
      ),
      body: Form(
        key: formkey,
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Center(
                  child: Text(
                    "REGISTRATION PAGE",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: "UserName", border: OutlineInputBorder()),
                validator: (email) {
                  if (email!.isEmpty || !email.contains("@")) {
                    return "Enter a valid email !!!";
                  } else {
                    return null;
                  }
                },
                textInputAction: TextInputAction.next,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                controller: pass,
                decoration: const InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),)),
                validator: (password) {
                  if (password!.isEmpty || password.length < 6) {
                    return "Password length should be greater than 6";
                  } else {
                    return null;
                  }
                },
                textInputAction: TextInputAction.next,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                controller: cpass,
                decoration: const InputDecoration(
                    labelText: "Confirm Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),)),
                validator: (password) {
                  if (password!.isEmpty || password.length < 6 || pass.text != cpass.text) {
                    return "Password should be same";
                  } else {
                    return null;
                  }
                },
                textInputAction: TextInputAction.done,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 40),
              child: ElevatedButton(
                  onPressed: () {
                    final valid = formkey.currentState!.validate();
                    if (valid) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: const Text('Registration Successful'),
                            action: SnackBarAction(
                              label: 'Undo',
                              onPressed: () {
                                // Code to execute.
                              },
                            ),
                          ),
                      );
                    } else {
                      Fluttertoast.showToast(
                          msg: "Invalid username / Password",
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.CENTER,
                          backgroundColor: Colors.grey,
                          textColor: Colors.black,
                          fontSize: 16.0
                      );
                    }
                  },
                  child: const Text("Register here")),
            )
          ],
        ),
      ),
    );
  }
}