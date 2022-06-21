import 'package:flutter/material.dart';
import 'package:homeserviceprovider/HomePage.dart';
import 'package:homeserviceprovider/main.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              alignment: Alignment.center,
              height: 300,
              color: Colors.blue[200],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    maxRadius: 50,
                    child: Icon(
                      Icons.home_work_outlined,
                      size: 50,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "HOME SERVICE PROVIDER",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              )),
          Form(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Full Name",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: TextFormField(
                  decoration: InputDecoration(labelText: "Mobile Number"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: TextFormField(
                  decoration: InputDecoration(labelText: "Email"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: TextFormField(
                  decoration: InputDecoration(labelText: "Create Password"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: TextFormField(
                  decoration:
                      InputDecoration(labelText: "Select your Location"),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Text("Proceed")),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already registered?"),
                  TextButton(
                      onPressed: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeService()));
                      }),
                      child: Text("Login here"))
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
